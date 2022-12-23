cmd_firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o := clang -Wp,-MD,firmware/atmf04/.atmf04_2CH_V0.37.fw.gen.o.d -nostdinc -isystem /home/knbn/toolchains/zyc-clang/lib/clang/20/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix=/home/knbn/toolchains/zyc-clang/bin/aarch64-linux-gnu- --gcc-toolchain=/home/knbn/toolchains/zyc-clang -no-integrated-as -Werror=unknown-warning-option -Wno-misleading-indentation -Wno-bool-operation -Wno-unsequenced -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3 -DCC_HAVE_ASM_GOTO -Wa,-gdwarf-2   -c -o firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o firmware/atmf04/atmf04_2CH_V0.37.fw.gen.S

source_firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o := firmware/atmf04/atmf04_2CH_V0.37.fw.gen.S

deps_firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o := \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \

firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o: $(deps_firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o)

$(deps_firmware/atmf04/atmf04_2CH_V0.37.fw.gen.o):
