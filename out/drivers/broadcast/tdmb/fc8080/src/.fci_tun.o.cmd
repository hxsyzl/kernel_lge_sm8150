cmd_drivers/broadcast/tdmb/fc8080/src/fci_tun.o := clang -Wp,-MD,drivers/broadcast/tdmb/fc8080/src/.fci_tun.o.d -nostdinc -isystem /home/knbn/toolchains/zyc-clang/lib/clang/20/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h  -I../drivers/broadcast/tdmb/fc8080/src -Idrivers/broadcast/tdmb/fc8080/src -D__KERNEL__ -Qunused-arguments -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 --target=aarch64-linux-gnu --prefix=/home/knbn/toolchains/zyc-clang/bin/aarch64-linux-gnu- --gcc-toolchain=/home/knbn/toolchains/zyc-clang -no-integrated-as -Werror=unknown-warning-option -Wno-misleading-indentation -Wno-bool-operation -Wno-unsequenced -fno-PIE -mno-implicit-float -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -fno-pic -Wno-asm-operand-widths -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 -mcpu=cortex-a55 -mtune=cortex-a55 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=4096 -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu -Wno-duplicate-decl-specifier -fno-builtin -Wno-tautological-constant-out-of-range-compare -Wno-sometimes-uninitialized -Wno-tautological-compare -mno-global-merge -fno-delete-null-pointer-checks -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -fmacro-prefix-map=../= -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast -Wno-unaligned-access -Wno-cast-function-type-strict    -DKBUILD_BASENAME='"fci_tun"'  -DKBUILD_MODNAME='"fci_tun"' -c -o drivers/broadcast/tdmb/fc8080/src/.tmp_fci_tun.o ../drivers/broadcast/tdmb/fc8080/src/fci_tun.c

source_drivers/broadcast/tdmb/fc8080/src/fci_tun.o := ../drivers/broadcast/tdmb/fc8080/src/fci_tun.c

deps_drivers/broadcast/tdmb/fc8080/src/fci_tun.o := \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  ../include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  ../include/linux/compiler-clang.h \
    $(wildcard include/config/lto/clang.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/init/stack/all.h) \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fci_types.h \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fci_tun.h \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fci_hpi.h \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fci_hal.h \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fc8080_bb.h \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fc8080_tun.h \
  ../drivers/broadcast/tdmb/fc8080/src/../inc/fc8080_regs.h \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  ../include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  ../include/uapi/asm-generic/types.h \
  ../include/asm-generic/int-ll64.h \
  ../include/uapi/asm-generic/int-ll64.h \
  ../arch/arm64/include/uapi/asm/bitsperlong.h \
  ../include/asm-generic/bitsperlong.h \
  ../include/uapi/asm-generic/bitsperlong.h \
  ../include/uapi/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../include/uapi/linux/stddef.h \
  ../arch/arm64/include/uapi/asm/posix_types.h \
  ../include/uapi/asm-generic/posix_types.h \

drivers/broadcast/tdmb/fc8080/src/fci_tun.o: $(deps_drivers/broadcast/tdmb/fc8080/src/fci_tun.o)

$(deps_drivers/broadcast/tdmb/fc8080/src/fci_tun.o):
