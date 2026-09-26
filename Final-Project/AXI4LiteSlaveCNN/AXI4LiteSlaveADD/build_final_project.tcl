# Vivado 2018.2 build script for the RemoteFPGA convolution project.
# This version resets/regenerates the parent Block Design, exports an HDF
# containing the generated bitstream, and synchronizes hw_platform_0.

set script_dir [file normalize [file dirname [info script]]]
set ip_dir     [file normalize [file join $script_dir AxiSlave]]
set component  [file normalize [file join $ip_dir component.xml]]
set hw_dir     [file normalize [file join $script_dir AxiTest01]]
set hw_xpr     [file normalize [file join $hw_dir AxiTest01.xpr]]
set sdk_dir    [file normalize [file join $hw_dir AxiTest01.sdk]]
set hwdef_file [file normalize [file join $sdk_dir AxiTest01_wrapper.hwdef]]
set hdf_file   [file normalize [file join $sdk_dir AxiTest01_wrapper.hdf]]
set log_file   [file normalize [file join $script_dir build_trace.log]]

proc require_file {path_value description} {
    if {![file exists $path_value]} {
        error "$description was not found: $path_value"
    }
}

proc fail_if_run_incomplete {run_object run_name} {
    set status [get_property STATUS $run_object]
    puts "$run_name status: $status"
    if {![string match -nocase "*complete*" $status]} {
        error "$run_name did not complete successfully: $status"
    }
}

require_file $component "IP component.xml"
require_file $hw_xpr "Vivado hardware project"
require_file [file join $ip_dir src adder.v] "Convolution RTL"
require_file [file join $ip_dir src axi4_lite_slave.v] "AXI slave RTL"

file mkdir $sdk_dir

puts "\n=== 1/7 Updating custom IP package ==="
ipx::open_core $component
set custom_core [ipx::current_core]
set old_revision [get_property core_revision $custom_core]
if {$old_revision eq ""} {
    set old_revision 0
}
set_property core_revision [expr {$old_revision + 1}] $custom_core
ipx::update_checksums $custom_core
ipx::check_integrity -quiet $custom_core
ipx::save_core $custom_core
ipx::unload_core $custom_core

puts "\n=== 2/7 Opening AxiTest01 ==="
if {[current_project -quiet] ne ""} {
    close_project
}
open_project $hw_xpr
set_property ip_repo_paths [list $ip_dir] [current_project]
update_ip_catalog -rebuild

set custom_ips [get_ips -quiet *axi4_lite_slave*]
if {[llength $custom_ips] == 0} {
    error "axi4_lite_slave IP was not found in the Block Design."
}
puts "Custom IP instances: $custom_ips"
upgrade_ip $custom_ips

set bd_files [get_files -quiet */AxiTest01.bd]
if {[llength $bd_files] == 0} {
    error "AxiTest01.bd was not found."
}
set bd_file [lindex $bd_files 0]
puts "Parent Block Design: $bd_file"

# Do not call reset_target on the nested XCI. Vivado 12-3564 is produced
# when a nested Block Design IP is reset directly.
if {[catch {reset_target all $bd_file} reset_message]} {
    puts "INFO: Parent BD reset was skipped: $reset_message"
}
generate_target all $bd_file
export_ip_user_files -of_objects $bd_file -no_script -sync -force -quiet
open_bd_design $bd_file
validate_bd_design
save_bd_design
update_compile_order -fileset sources_1

puts "\n=== 3/7 Selecting the Zynq-7010 runs ==="
set synth_run [get_runs -quiet synth_2]
set impl_run  [get_runs -quiet impl_2]
if {[llength $synth_run] == 0 || [llength $impl_run] == 0} {
    error "synth_2/impl_2 were not found. These are the xc7z010 runs in this project."
}
puts "Synthesis run: $synth_run, part=[get_property PART $synth_run]"
puts "Implementation run: $impl_run, part=[get_property PART $impl_run]"

puts "\n=== 4/7 Building bitstream from scratch ==="
reset_run $impl_run
reset_run $synth_run
launch_runs $synth_run -jobs 4
wait_on_run $synth_run
fail_if_run_incomplete $synth_run "Synthesis"
launch_runs $impl_run -to_step write_bitstream -jobs 4
wait_on_run $impl_run
fail_if_run_incomplete $impl_run "Implementation"

set bit_file [file normalize [file join [get_property DIRECTORY $impl_run] AxiTest01_wrapper.bit]]
require_file $bit_file "Generated bitstream"

puts "\n=== 5/7 Exporting HDF with bitstream ==="
open_run $impl_run
write_hwdef -force -file $hwdef_file
write_sysdef -force -hwdef $hwdef_file -bitfile $bit_file -file $hdf_file
require_file $hdf_file "Exported hardware definition"
puts "HDF: $hdf_file"
puts "BIT: $bit_file"

puts "\n=== 6/7 Synchronizing SDK hw_platform_0 ==="
set platform0 [file normalize [file join $sdk_dir AxiTest01_wrapper_hw_platform_0]]
file mkdir $platform0
file copy -force $hdf_file [file join $platform0 system.hdf]
file copy -force $bit_file [file join $platform0 AxiTest01_wrapper.bit]

set bsp_project [file join $sdk_dir Test01_bsp .sdkproject]
if {[file exists $bsp_project]} {
    set input_handle [open $bsp_project r]
    set bsp_text [read $input_handle]
    close $input_handle
    regsub -all {HW_PROJECT_REFERENCE=.*} $bsp_text \
        {HW_PROJECT_REFERENCE=AxiTest01_wrapper_hw_platform_0} bsp_text
    set output_handle [open $bsp_project w]
    puts -nonewline $output_handle $bsp_text
    close $output_handle
}

puts "\n=== 7/7 Launching SDK ==="
puts "BUILD SUCCESSFUL"
puts "SDK is configured to use AxiTest01_wrapper_hw_platform_0."
puts "After SDK opens: Project > Clean, Project > Build All, then Remote Run."
launch_sdk -workspace $sdk_dir -hwspec $hdf_file
