cmd_arch/arm/kernel/head.o := /home/elvis/arm-eabi-4.4.3/bin/arm-eabi-gcc -Wp,-MD,arch/arm/kernel/.head.o.d  -nostdinc -isystem /home/elvis/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include -I/home/elvis/OT_985/kernel/arch/arm/include -Iinclude  -include include/generated/autoconf.h -I../mediatek/custom//common -I../mediatek/platform/mt6573/kernel/core/include/ -I../mediatek/source/kernel/include/ -I../mediatek/custom/out/jrd73_gb/kernel/dct/ -I../mediatek/custom/out/jrd73_gb/kernel/ofn/ -I../mediatek/custom/out/jrd73_gb/kernel/leds/ -I../mediatek/custom/out/jrd73_gb/kernel/sound/ -I../mediatek/custom/out/jrd73_gb/kernel/accelerometer/ -I../mediatek/custom/out/jrd73_gb/kernel/rtc/ -I../mediatek/custom/out/jrd73_gb/kernel/touchpanel/ -I../mediatek/custom/out/jrd73_gb/kernel/headset/ -I../mediatek/custom/out/jrd73_gb/kernel/core/ -I../mediatek/custom/out/jrd73_gb/kernel/kpd/ -I../mediatek/custom/out/jrd73_gb/kernel/alsps/ -I../mediatek/custom/out/jrd73_gb/kernel/magnetometer/ -I../mediatek/custom/out/jrd73_gb/kernel/camera/ -I../mediatek/custom/out/jrd73_gb/kernel/battery/ -I../mediatek/custom/out/jrd73_gb/kernel/usb/ -I../mediatek/custom/out/jrd73_gb/kernel/ofn/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/leds/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/./ -I../mediatek/custom/out/jrd73_gb/kernel/sound/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/barometer/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/accelerometer/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/fm/ -I../mediatek/custom/out/jrd73_gb/kernel/eeprom/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/eeprom/ -I../mediatek/custom/out/jrd73_gb/kernel/lcm/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/lcm/ -I../mediatek/custom/out/jrd73_gb/kernel/gyroscope/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/lens/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/lens/ -I../mediatek/custom/out/jrd73_gb/kernel/jogball/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/alsps/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/magnetometer/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/imgsensor/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/imgsensor/ -I../mediatek/custom/out/jrd73_gb/kernel/flashlight/inc/ -I../mediatek/custom/out/jrd73_gb/kernel/flashlight/ -I../mediatek/custom/out/jrd73_gb/hal/audioflinger/ -I../mediatek/custom/out/jrd73_gb/hal/sensors/ -I../mediatek/custom/out/jrd73_gb/hal/camera/ -I../mediatek/custom/out/jrd73_gb/hal/inc/ -I../mediatek/custom/out/jrd73_gb/hal/matv/ -I../mediatek/custom/out/jrd73_gb/hal/eeprom/ -I../mediatek/custom/out/jrd73_gb/hal/combo/ -I../mediatek/custom/out/jrd73_gb/hal/ant/ -I../mediatek/custom/out/jrd73_gb/hal/lens/ -I../mediatek/custom/out/jrd73_gb/hal/imgsensor/ -I../mediatek/custom/out/jrd73_gb/hal/flashlight/ -I../mediatek/custom/out/jrd73_gb/hal/bluetooth/ -D__KERNEL__   -mlittle-endian -DMODEM_3G -I../mediatek/platform/mt6573/kernel/core/include -D__ASSEMBLY__   -mabi=aapcs-linux -mno-thumb-interwork  -D__LINUX_ARM_ARCH__=6 -march=armv6k -mtune=arm1136j-s -include asm/unified.h -msoft-float -gdwarf-2     -DTEXT_OFFSET=0x00008000  -c -o arch/arm/kernel/head.o arch/arm/kernel/head.S

deps_arch/arm/kernel/head.o := \
  arch/arm/kernel/head.S \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/xip/phys/addr.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/alignment/trap.h) \
    $(wildcard include/config/cpu/dcache/disable.h) \
    $(wildcard include/config/cpu/bpredict/disable.h) \
    $(wildcard include/config/cpu/icache/disable.h) \
    $(wildcard include/config/debug/ll.h) \
    $(wildcard include/config/arch/netwinder.h) \
    $(wildcard include/config/arch/cats.h) \
    $(wildcard include/config/arch/rpc.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/linkage.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/hwcap.h \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/mmu.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/asm-offsets.h \
  include/generated/asm-offsets.h \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/discontigmem.h) \
  include/linux/const.h \
  ../mediatek/platform/mt6573/kernel/core/include/mach/memory.h \
    $(wildcard include/config/have/tcm.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/elvis/OT_985/kernel/arch/arm/include/asm/system.h \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  arch/arm/kernel/head-common.S \

arch/arm/kernel/head.o: $(deps_arch/arm/kernel/head.o)

$(deps_arch/arm/kernel/head.o):
