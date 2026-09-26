# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_IS_ACLK_ASYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_PROTOCOL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_SUPPORTS_READ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_SUPPORTS_USER_SIGNALS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_SUPPORTS_WRITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_ACLK_RATIO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SYNCHRONIZER_STAGE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ACLK_RATIO" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_ARUSER_WIDTH { PARAM_VALUE.C_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ARUSER_WIDTH { PARAM_VALUE.C_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_AWUSER_WIDTH { PARAM_VALUE.C_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_AWUSER_WIDTH { PARAM_VALUE.C_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_BUSER_WIDTH { PARAM_VALUE.C_AXI_BUSER_WIDTH } {
	# Procedure called to update C_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_BUSER_WIDTH { PARAM_VALUE.C_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_AXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to update C_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to validate C_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_IS_ACLK_ASYNC { PARAM_VALUE.C_AXI_IS_ACLK_ASYNC } {
	# Procedure called to update C_AXI_IS_ACLK_ASYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_IS_ACLK_ASYNC { PARAM_VALUE.C_AXI_IS_ACLK_ASYNC } {
	# Procedure called to validate C_AXI_IS_ACLK_ASYNC
	return true
}

proc update_PARAM_VALUE.C_AXI_PROTOCOL { PARAM_VALUE.C_AXI_PROTOCOL } {
	# Procedure called to update C_AXI_PROTOCOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_PROTOCOL { PARAM_VALUE.C_AXI_PROTOCOL } {
	# Procedure called to validate C_AXI_PROTOCOL
	return true
}

proc update_PARAM_VALUE.C_AXI_RUSER_WIDTH { PARAM_VALUE.C_AXI_RUSER_WIDTH } {
	# Procedure called to update C_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_RUSER_WIDTH { PARAM_VALUE.C_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_SUPPORTS_READ { PARAM_VALUE.C_AXI_SUPPORTS_READ } {
	# Procedure called to update C_AXI_SUPPORTS_READ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_SUPPORTS_READ { PARAM_VALUE.C_AXI_SUPPORTS_READ } {
	# Procedure called to validate C_AXI_SUPPORTS_READ
	return true
}

proc update_PARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS { PARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS } {
	# Procedure called to update C_AXI_SUPPORTS_USER_SIGNALS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS { PARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS } {
	# Procedure called to validate C_AXI_SUPPORTS_USER_SIGNALS
	return true
}

proc update_PARAM_VALUE.C_AXI_SUPPORTS_WRITE { PARAM_VALUE.C_AXI_SUPPORTS_WRITE } {
	# Procedure called to update C_AXI_SUPPORTS_WRITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_SUPPORTS_WRITE { PARAM_VALUE.C_AXI_SUPPORTS_WRITE } {
	# Procedure called to validate C_AXI_SUPPORTS_WRITE
	return true
}

proc update_PARAM_VALUE.C_AXI_WUSER_WIDTH { PARAM_VALUE.C_AXI_WUSER_WIDTH } {
	# Procedure called to update C_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_WUSER_WIDTH { PARAM_VALUE.C_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ACLK_RATIO { PARAM_VALUE.C_M_AXI_ACLK_RATIO } {
	# Procedure called to update C_M_AXI_ACLK_RATIO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ACLK_RATIO { PARAM_VALUE.C_M_AXI_ACLK_RATIO } {
	# Procedure called to validate C_M_AXI_ACLK_RATIO
	return true
}

proc update_PARAM_VALUE.C_SYNCHRONIZER_STAGE { PARAM_VALUE.C_SYNCHRONIZER_STAGE } {
	# Procedure called to update C_SYNCHRONIZER_STAGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SYNCHRONIZER_STAGE { PARAM_VALUE.C_SYNCHRONIZER_STAGE } {
	# Procedure called to validate C_SYNCHRONIZER_STAGE
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ACLK_RATIO { PARAM_VALUE.C_S_AXI_ACLK_RATIO } {
	# Procedure called to update C_S_AXI_ACLK_RATIO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ACLK_RATIO { PARAM_VALUE.C_S_AXI_ACLK_RATIO } {
	# Procedure called to validate C_S_AXI_ACLK_RATIO
	return true
}


proc update_MODELPARAM_VALUE.C_AXI_ID_WIDTH { MODELPARAM_VALUE.C_AXI_ID_WIDTH PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ACLK_RATIO { MODELPARAM_VALUE.C_S_AXI_ACLK_RATIO PARAM_VALUE.C_S_AXI_ACLK_RATIO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ACLK_RATIO}] ${MODELPARAM_VALUE.C_S_AXI_ACLK_RATIO}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ACLK_RATIO { MODELPARAM_VALUE.C_M_AXI_ACLK_RATIO PARAM_VALUE.C_M_AXI_ACLK_RATIO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ACLK_RATIO}] ${MODELPARAM_VALUE.C_M_AXI_ACLK_RATIO}
}

proc update_MODELPARAM_VALUE.C_AXI_IS_ACLK_ASYNC { MODELPARAM_VALUE.C_AXI_IS_ACLK_ASYNC PARAM_VALUE.C_AXI_IS_ACLK_ASYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_IS_ACLK_ASYNC}] ${MODELPARAM_VALUE.C_AXI_IS_ACLK_ASYNC}
}

proc update_MODELPARAM_VALUE.C_AXI_PROTOCOL { MODELPARAM_VALUE.C_AXI_PROTOCOL PARAM_VALUE.C_AXI_PROTOCOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_PROTOCOL}] ${MODELPARAM_VALUE.C_AXI_PROTOCOL}
}

proc update_MODELPARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS { MODELPARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS PARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS}] ${MODELPARAM_VALUE.C_AXI_SUPPORTS_USER_SIGNALS}
}

proc update_MODELPARAM_VALUE.C_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_AXI_AWUSER_WIDTH PARAM_VALUE.C_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_AXI_ARUSER_WIDTH PARAM_VALUE.C_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_AXI_WUSER_WIDTH PARAM_VALUE.C_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_AXI_RUSER_WIDTH PARAM_VALUE.C_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_AXI_BUSER_WIDTH PARAM_VALUE.C_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_SUPPORTS_WRITE { MODELPARAM_VALUE.C_AXI_SUPPORTS_WRITE PARAM_VALUE.C_AXI_SUPPORTS_WRITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_SUPPORTS_WRITE}] ${MODELPARAM_VALUE.C_AXI_SUPPORTS_WRITE}
}

proc update_MODELPARAM_VALUE.C_AXI_SUPPORTS_READ { MODELPARAM_VALUE.C_AXI_SUPPORTS_READ PARAM_VALUE.C_AXI_SUPPORTS_READ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_SUPPORTS_READ}] ${MODELPARAM_VALUE.C_AXI_SUPPORTS_READ}
}

proc update_MODELPARAM_VALUE.C_SYNCHRONIZER_STAGE { MODELPARAM_VALUE.C_SYNCHRONIZER_STAGE PARAM_VALUE.C_SYNCHRONIZER_STAGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SYNCHRONIZER_STAGE}] ${MODELPARAM_VALUE.C_SYNCHRONIZER_STAGE}
}

