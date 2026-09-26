علت خطای فعلی پروژه
===================

Test01_bsp به این پلتفرم متصل است:
  AxiTest01_wrapper_hw_platform_0

اما Export Hardware جدید داخل hw_platform_1 ایجاد شده بود.
فایل‌های جدید:
  AxiTest01.sdk/AxiTest01_wrapper.hdf
  AxiTest01.sdk/AxiTest01_wrapper_hw_platform_1/system.hdf
  AxiTest01.sdk/AxiTest01_wrapper_hw_platform_1/AxiTest01_wrapper.bit

با خروجی impl_2 یکسان هستند، ولی SDK هنگام Remote Run طبق SDK.log فایل قدیمی
hw_platform_0/AxiTest01_wrapper.bit را پروگرام کرده است.

در این نسخه:
1) bit و system.hdf جدید به hw_platform_0 منتقل شده‌اند.
2) main.c برای هر Window منتظر تغییر واقعی processed_windows می‌ماند.
3) دو Window اول با readback، status، done، busy و count قابل Trace هستند.
4) build_final_project.tcl دیگر nested XCI را reset نمی‌کند.
5) HDF با write_sysdef و همراه Bitstream ساخته می‌شود.
6) SYNC_EXPORTED_HARDWARE_TO_SDK.bat بعد از هر Export دستی، پلتفرم صفر را همگام می‌کند.

اجرای سریع بدون Build دوباره سخت‌افزار
======================================
1) این پروژه را در یک مسیر جدید Extract کنید.
2) SDK را باز کنید.
3) Project > Clean
4) Project > Build All
5) Remote Run Configuration را اجرا کنید.

اجرای دستی بعد از تغییر RTL
===========================
1) Re-Package IP و Upgrade IP
2) Run Synthesis
3) Run Implementation
4) Generate Bitstream
5) File > Export Hardware و Include bitstream
6) قبل از Launch SDK، فایل زیر را اجرا کنید:
   SYNC_EXPORTED_HARDWARE_TO_SDK.bat
7) Launch SDK، سپس Clean و Build All

در فایل SDK_SYNC_REPORT.txt باید SDK_PLATFORM_SYNC_OK=YES ثبت شود.
