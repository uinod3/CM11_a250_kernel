cmd_mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o := arm-linux-androideabi-gcc -Wp,-MD,mediatek/platform/mt6589/kernel/drivers/cpu_stress/.slt_fp0_maxpower_asm.o.d  -nostdinc -isystem /home/android/Projects/S9311_BLU_OPEN_2/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/include -I/home/android/a/alps_test/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /home/android/a/alps_test/kernel/include/linux/kconfig.h -I../mediatek/custom///common -I../mediatek/platform/mt6589/kernel/core/include/ -I../mediatek/kernel/include/ -I../mediatek/custom/blu_open/common/ -I../mediatek/custom/out/blu_open/kernel/headset/ -I../mediatek/custom/out/blu_open/kernel/leds/ -I../mediatek/custom/out/blu_open/kernel/alsps/ -I../mediatek/custom/out/blu_open/kernel/battery/ -I../mediatek/custom/out/blu_open/kernel/rtc/ -I../mediatek/custom/out/blu_open/kernel/dct/ -I../mediatek/custom/out/blu_open/kernel/core/ -I../mediatek/custom/out/blu_open/kernel/kpd/ -I../mediatek/custom/out/blu_open/kernel/flashlight/ -I../mediatek/custom/out/blu_open/kernel/magnetometer/ -I../mediatek/custom/out/blu_open/kernel/accelerometer/ -I../mediatek/custom/out/blu_open/kernel/camera/ -I../mediatek/custom/out/blu_open/kernel/gyroscope/ -I../mediatek/custom/out/blu_open/kernel/vibrator/ -I../mediatek/custom/out/blu_open/kernel/usb/ -I../mediatek/custom/out/blu_open/kernel/leds/inc/ -I../mediatek/custom/out/blu_open/kernel/alsps/inc/ -I../mediatek/custom/out/blu_open/kernel/lcm/inc/ -I../mediatek/custom/out/blu_open/kernel/lcm/ -I../mediatek/custom/out/blu_open/kernel/cam_cal/inc/ -I../mediatek/custom/out/blu_open/kernel/cam_cal/ -I../mediatek/custom/out/blu_open/kernel/ccci/ -I../mediatek/custom/out/blu_open/kernel/hdmi/inc/ -I../mediatek/custom/out/blu_open/kernel/./ -I../mediatek/custom/out/blu_open/kernel/imgsensor/ -I../mediatek/custom/out/blu_open/kernel/imgsensor/inc/ -I../mediatek/custom/out/blu_open/kernel/ssw/inc/ -I../mediatek/custom/out/blu_open/kernel/ssw/ -I../mediatek/custom/out/blu_open/kernel/flashlight/inc/ -I../mediatek/custom/out/blu_open/kernel/magnetometer/inc/ -I../mediatek/custom/out/blu_open/kernel/lens/inc/ -I../mediatek/custom/out/blu_open/kernel/lens/ -I../mediatek/custom/out/blu_open/kernel/touchpanel/ -I../mediatek/custom/out/blu_open/kernel/jogball/inc/ -I../mediatek/custom/out/blu_open/kernel/accelerometer/inc/ -I../mediatek/custom/out/blu_open/kernel/sound/inc/ -I../mediatek/custom/out/blu_open/kernel/sound/ -I../mediatek/custom/out/blu_open/kernel/eeprom/inc/ -I../mediatek/custom/out/blu_open/kernel/eeprom/ -I../mediatek/custom/out/blu_open/kernel/gyroscope/inc/ -I../mediatek/custom/out/blu_open/kernel/barometer/inc/ -I../mediatek/custom/out/blu_open/hal/sensors/ -I../mediatek/custom/out/blu_open/hal/imgsensor/ -I../mediatek/custom/out/blu_open/hal/lens/ -I../mediatek/custom/out/blu_open/hal/audioflinger/ -I../mediatek/custom/out/blu_open/hal/camera/ -I../mediatek/custom/out/blu_open/hal/inc/ -I../mediatek/custom/out/blu_open/hal/camera/inc/ -I../mediatek/custom/out/blu_open/hal/fmradio/ -I../mediatek/custom/out/blu_open/hal/cam_cal/ -I../mediatek/custom/out/blu_open/hal/matv/ -I../mediatek/custom/out/blu_open/hal/ant/ -I../mediatek/custom/out/blu_open/hal/vt/ -I../mediatek/custom/out/blu_open/hal/bluetooth/ -I../mediatek/custom/out/blu_open/hal/flashlight/ -I../mediatek/custom/out/blu_open/hal/combo/ -I../mediatek/custom/out/blu_open/hal/eeprom/ -I../mediatek/custom/out/blu_open/common -D__KERNEL__   -mlittle-endian -DMODEM_3G -Imediatek/platform/mt6589/kernel/core/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -Wa,-mfpu=neon-vfpv4 -gdwarf-2          -c -o mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.S

source_mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o := mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.S

deps_mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o := \
  /home/android/a/alps_test/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \

mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o: $(deps_mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o)

$(deps_mediatek/platform/mt6589/kernel/drivers/cpu_stress/slt_fp0_maxpower_asm.o):
