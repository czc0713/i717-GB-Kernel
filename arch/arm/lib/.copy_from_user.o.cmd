cmd_arch/arm/lib/copy_from_user.o := arm-eabi-gcc -Wp,-MD,arch/arm/lib/.copy_from_user.o.d  -nostdinc -isystem /data/repos/cm/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/../lib/gcc/arm-eabi/4.4.3/include -I/data/repos/kernels/arch/arm/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-msm/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float -gdwarf-2       -c -o arch/arm/lib/copy_from_user.o arch/arm/lib/copy_from_user.S

deps_arch/arm/lib/copy_from_user.o := \
  arch/arm/lib/copy_from_user.S \
    $(wildcard include/config/thumb2/kernel.h) \
  /data/repos/kernels/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /data/repos/kernels/arch/arm/include/asm/linkage.h \
  /data/repos/kernels/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
  /data/repos/kernels/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /data/repos/kernels/arch/arm/include/asm/hwcap.h \
  arch/arm/lib/copy_template.S \

arch/arm/lib/copy_from_user.o: $(deps_arch/arm/lib/copy_from_user.o)

$(deps_arch/arm/lib/copy_from_user.o):
