Alcatel_OT_985_kernel
=====================
Usage:
cd Alcatel_OT_985_kernel/kernel
export CROSS_COMPILE="path/to/your/toolchain/arm-eabi-4.4.3/bin/arm-eabi-"
cp mediatek-configs .config
TARGET_PRODUCT=jrd73_gb MTK_ROOT_CUSTOM=../mediatek/custom make clean
TARGET_PRODUCT=jrd73_gb MTK_ROOT_CUSTOM=../mediatek/custom make menuconfig
Modify what you want, for example add swap support/ext fs support/etc.
TARGET_PRODUCT=jrd73_gb MTK_ROOT_CUSTOM=../mediatek/custom make

Bugs:
1. Home and camera buttons not works.
2. Phone not charging when powered on and back flashlight lights when usb connected if phone is powered on.
3. Flashligh doesn't work just when usb or charger connected.
