# پروژه کانولوشن RemoteFPGA — گروه ۴

این بسته به‌صورت Overlay ساخته شده است. ابتدا فایل `AXI4LiteSlaveADD(1).rar` را استخراج کنید، سپس محتوای پوشه `AXI4LiteSlaveADD` این بسته را روی پوشه اصلی هم‌نام کپی و Replace کنید.

## فایل‌های دست‌ساز تغییرکرده

- `AxiSlave/src/adder.v`: موتور کانولوشن ۹×۱۲، سریال و بدون ضرب‌کننده
- `AxiSlave/src/axi4_lite_slave.v`: رجیسترهای AXI برای ارسال window و خواندن مختصات
- `AxiTest01/AxiTest01.sdk/Test01/src/main.c`: قطعه‌بندی تصویر، ارسال windowها و نمایش UART
- `AxiTest01/AxiTest01.sdk/Test01/src/input_image.h`: تصویر ۶۴×۶۴ آماده برای برنامه C
- `build_final_project.tcl`: Re-package IP، تولید Bitstream، Export Hardware و Launch SDK

## اجرای سریع

روی `run_build.bat` دوبار کلیک کنید یا در Tcl Shell ویوادو اجرا کنید:

```tcl
cd C:/path/to/AXI4LiteSlaveADD
source build_final_project.tcl
```

## خروجی مرجع فایل ورودی

- رقم ۴: مختصات گوشه بالا-چپ `(21,47)` با امتیاز `86`
- رقم ۵: مختصات گوشه بالا-چپ `(34,5)` با امتیاز `88`
- تعداد windowها: `56 × 53 = 2968`

## نکته گروه

فیلترها فعلاً برای گروه ۴، یعنی ارقام ۴ و ۵، ساخته شده‌اند. برای گروه دیگر فقط ثابت‌های `TEMPLATE_DIGIT_4` و `TEMPLATE_DIGIT_5` در `adder.v` و ثابت‌های متناظر در `main.c` باید عوض شوند.
