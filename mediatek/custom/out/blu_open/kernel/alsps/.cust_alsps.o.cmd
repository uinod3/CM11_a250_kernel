cmd_mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o := arm-linux-androideabi-gcc -Wp,-MD,mediatek/custom/out/blu_open/kernel/alsps/.cust_alsps.o.d  -nostdinc -isystem /home/android/Projects/S9311_BLU_OPEN_2/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/include -I/home/android/a/alps_test/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /home/android/a/alps_test/kernel/include/linux/kconfig.h -I../mediatek/custom///common -I../mediatek/platform/mt6589/kernel/core/include/ -I../mediatek/kernel/include/ -I../mediatek/custom/blu_open/common/ -I../mediatek/custom/out/blu_open/kernel/headset/ -I../mediatek/custom/out/blu_open/kernel/leds/ -I../mediatek/custom/out/blu_open/kernel/alsps/ -I../mediatek/custom/out/blu_open/kernel/battery/ -I../mediatek/custom/out/blu_open/kernel/rtc/ -I../mediatek/custom/out/blu_open/kernel/dct/ -I../mediatek/custom/out/blu_open/kernel/core/ -I../mediatek/custom/out/blu_open/kernel/kpd/ -I../mediatek/custom/out/blu_open/kernel/flashlight/ -I../mediatek/custom/out/blu_open/kernel/magnetometer/ -I../mediatek/custom/out/blu_open/kernel/accelerometer/ -I../mediatek/custom/out/blu_open/kernel/camera/ -I../mediatek/custom/out/blu_open/kernel/gyroscope/ -I../mediatek/custom/out/blu_open/kernel/vibrator/ -I../mediatek/custom/out/blu_open/kernel/usb/ -I../mediatek/custom/out/blu_open/kernel/leds/inc/ -I../mediatek/custom/out/blu_open/kernel/alsps/inc/ -I../mediatek/custom/out/blu_open/kernel/lcm/inc/ -I../mediatek/custom/out/blu_open/kernel/lcm/ -I../mediatek/custom/out/blu_open/kernel/cam_cal/inc/ -I../mediatek/custom/out/blu_open/kernel/cam_cal/ -I../mediatek/custom/out/blu_open/kernel/ccci/ -I../mediatek/custom/out/blu_open/kernel/hdmi/inc/ -I../mediatek/custom/out/blu_open/kernel/./ -I../mediatek/custom/out/blu_open/kernel/imgsensor/ -I../mediatek/custom/out/blu_open/kernel/imgsensor/inc/ -I../mediatek/custom/out/blu_open/kernel/ssw/inc/ -I../mediatek/custom/out/blu_open/kernel/ssw/ -I../mediatek/custom/out/blu_open/kernel/flashlight/inc/ -I../mediatek/custom/out/blu_open/kernel/magnetometer/inc/ -I../mediatek/custom/out/blu_open/kernel/lens/inc/ -I../mediatek/custom/out/blu_open/kernel/lens/ -I../mediatek/custom/out/blu_open/kernel/touchpanel/ -I../mediatek/custom/out/blu_open/kernel/jogball/inc/ -I../mediatek/custom/out/blu_open/kernel/accelerometer/inc/ -I../mediatek/custom/out/blu_open/kernel/sound/inc/ -I../mediatek/custom/out/blu_open/kernel/sound/ -I../mediatek/custom/out/blu_open/kernel/eeprom/inc/ -I../mediatek/custom/out/blu_open/kernel/eeprom/ -I../mediatek/custom/out/blu_open/kernel/gyroscope/inc/ -I../mediatek/custom/out/blu_open/kernel/barometer/inc/ -I../mediatek/custom/out/blu_open/hal/sensors/ -I../mediatek/custom/out/blu_open/hal/imgsensor/ -I../mediatek/custom/out/blu_open/hal/lens/ -I../mediatek/custom/out/blu_open/hal/audioflinger/ -I../mediatek/custom/out/blu_open/hal/camera/ -I../mediatek/custom/out/blu_open/hal/inc/ -I../mediatek/custom/out/blu_open/hal/camera/inc/ -I../mediatek/custom/out/blu_open/hal/fmradio/ -I../mediatek/custom/out/blu_open/hal/cam_cal/ -I../mediatek/custom/out/blu_open/hal/matv/ -I../mediatek/custom/out/blu_open/hal/ant/ -I../mediatek/custom/out/blu_open/hal/vt/ -I../mediatek/custom/out/blu_open/hal/bluetooth/ -I../mediatek/custom/out/blu_open/hal/flashlight/ -I../mediatek/custom/out/blu_open/hal/combo/ -I../mediatek/custom/out/blu_open/hal/eeprom/ -I../mediatek/custom/out/blu_open/common -D__KERNEL__ -mlittle-endian -DMODEM_3G -Imediatek/platform/mt6589/kernel/core/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-pic -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -DBLU_OPEN_FLASH_VERSION -DCUSTOM_BLU_OPEN_VERSION -DMTK_SPM_MCDI_ENABLE -DMTK_LCEEFT_SUPPORT -DMTK_USES_VR_DYNAMIC_QUALITY_MECHANISM -DMTK_PLATFORM_OPTIMIZE -DMTK_PQ_SUPPORT -DMTK_AUDIO_ADPCM_SUPPORT -DHAVE_ADPCMENCODE_FEATURE -DMTK_WEB_NOTIFICATION_SUPPORT -DMTK_VOICE_UNLOCK_SUPPORT -DMTK_IPOH_SUPPORT -DMTK_WFD_SUPPORT -DMTK_KERNEL_POWER_OFF_CHARGING -DMTK_FLIGHT_MODE_POWER_OFF_MD -DMTK_ENABLE_MD1 -DMTK_BT_PROFILE_AVRCP -DMTK_GPS_SUPPORT -DMTK_FM_SUPPORT -DMTK_USES_HD_VIDEO -DMTK_BT_PROFILE_MANAGER -DMTK_FM_RECORDING_SUPPORT -DMTK_BT_PROFILE_HIDH -DMTK_BT_PROFILE_PBAP -DMTK_BT_PROFILE_HFP -DMTK_MASS_STORAGE -DMTK_BICR_SUPPORT -DMTK_COMBO_QUICK_SLEEP_SUPPORT -DMTK_HDR_SUPPORT -DMTK_MERGE_INTERFACE_SUPPORT -DHAVE_AACENCODE_FEATURE -DMTK_WIFI_HOTSPOT_SUPPORT -DMTK_COMBO_SUPPORT -DMTK_BT_PROFILE_OPP -DCUSTOM_KERNEL_GYROSCOPE -DCUSTOM_KERNEL_ALSPS -DMTK_ENABLE_VIDEO_EDITOR -DCUSTOM_KERNEL_ACCELEROMETER -DMTK_DUAL_MIC_SUPPORT -DMTK_WAPI_SUPPORT -DMTK_FD_SUPPORT -DMTK_BT_SUPPORT -DMTK_FACEBEAUTY_SUPPORT -DMTK_BT_40_SUPPORT -DMTK_HIGH_QUALITY_THUMBNAIL -DMTK_SPH_EHN_CTRL_SUPPORT -DHAVE_XLOG_FEATURE -DMTK_IPV6_SUPPORT -DMTK_AUTORAMA_SUPPORT -DMTK_EAP_SIM_AKA -DMTK_MATV_ANALOG_SUPPORT -DMTK_BT_PROFILE_A2DP -DCUSTOM_KERNEL_MAGNETOMETER -DMTK_BT_PROFILE_PAN -DMTK_CAMERA_APP_3DHW_SUPPORT -DMTK_WLAN_SUPPORT -DMTK_TETHERINGIPV6_SUPPORT -DMTK_AUTO_DETECT_ACCELEROMETER -DMTK_PRODUCT_INFO_SUPPORT -DMTK_M4U_SUPPORT -DMTK_BT_PROFILE_SPP -DMTK_BT_30_SUPPORT -DMTK_ION_SUPPORT -DHAVE_AWBENCODE_FEATURE -DMTK_CAMERA_BSP_SUPPORT -DMTK_FM_RX_SUPPORT -DMTK_WB_SPEECH_SUPPORT -DMTK_VT3G324M_SUPPORT -DMTK_SENSOR_SUPPORT -DMTK_EMMC_SUPPORT -DMTK_BT_21_SUPPORT -DMTK_COMBO_CORE_DUMP_SUPPORT -DMTK_DHCPV6C_WIFI -DMTK_BQ24158_SUPPORT -DTINNO_ANDROID_S9311 -DFHD -DMTK_AUDIO_BLOUD_CUSTOMPARAMETER_V4 -DMT6589 -DFM50AF -DFM50AF_TRULY -DDUMMY_LENS -DFM50AF_TRULY -DR63311_FHD_DSI_VDO_SHARP -DMODEM_3G -DIMX135_MIPI_RAW -DMTK_MT6628 -DMT6628 -DOV5648_MIPI_RAW -DIMX135_MIPI_RAW_TRULY -DCONSTANT_FLASHLIGHT -DOV5647_MIPI_RAW -DDUMMY_LENS -DIMX135_MIPI_RAW -DIMX135_MIPI_RAW_TRULY -DOV5647_MIPI_RAW -DOV5648_MIPI_RAW -DFM_ANALOG_INPUT -DMT6628 -DMTK_GPS_MT6628 -DDUMMY_LENS -DFM50AF -DFM_ANALOG_OUTPUT -DMT6628_FM -DFHD -DMTK_SIM1_SOCKET_TYPE=\"1\" -DMTK_SIM2_SOCKET_TYPE=\"1\" -DCUSTOM_KERNEL_SSW=\"ssw_generic\" -DMTK_LCM_PHYSICAL_ROTATION=\"0\" -DLCM_WIDTH=\"1080\" -DMTK_SHARE_MODEM_SUPPORT=\"2\" -DMTK_NEON_SUPPORT=\"yes\" -DMTK_SHARE_MODEM_CURRENT=\"2\" -DLCM_HEIGHT=\"1920\" -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(cust_alsps)"  -D"KBUILD_MODNAME=KBUILD_STR(cust_alsps)" -c -o mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.c

source_mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o := mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.c

deps_mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o := \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/android/a/alps_test/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  /home/android/a/alps_test/kernel/arch/arm/include/asm/posix_types.h \
  include/asm-generic/posix_types.h \
  ../mediatek/platform/mt6589/kernel/core/include/mach/mt_pm_ldo.h \
  ../mediatek/platform/mt6589/kernel/core/include/mach/mt_typedefs.h \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /home/android/a/alps_test/kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  include/linux/linkage.h \
  /home/android/a/alps_test/kernel/arch/arm/include/asm/linkage.h \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/smp.h) \
  ../mediatek/custom/out/blu_open/kernel/alsps/inc/cust_alsps.h \

mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o: $(deps_mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o)

$(deps_mediatek/custom/out/blu_open/kernel/alsps/cust_alsps.o):
