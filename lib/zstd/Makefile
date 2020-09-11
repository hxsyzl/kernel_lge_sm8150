# SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
# ################################################################
# Copyright (c) Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under both the BSD-style license (found in the
# LICENSE file in the root directory of this source tree) and the GPLv2 (found
# in the COPYING file in the root directory of this source tree).
# You may select, at your option, one of the above-listed licenses.
# ################################################################
obj-$(CONFIG_ZSTD_COMPRESS) += zstd_compress.o
obj-$(CONFIG_ZSTD_DECOMPRESS) += zstd_decompress.o

ccflags-y += -O3

<<<<<<< HEAD
# Object files unique to zstd_compress and zstd_decompress
zstd_compress-y := fse_compress.o huf_compress.o compress.o
zstd_decompress-y := huf_decompress.o decompress.o

# These object files are shared between the modules.
# Always add them to zstd_compress.
# Unless both zstd_compress and zstd_decompress are built in
# then also add them to zstd_decompress.
zstd_compress-y += entropy_common.o fse_decompress.o zstd_common.o

ifneq ($(CONFIG_ZSTD_COMPRESS)$(CONFIG_ZSTD_DECOMPRESS),yy)
	zstd_decompress-y += entropy_common.o fse_decompress.o zstd_common.o
endif
=======
zstd_compress-y := \
		zstd_compress_module.o \
		common/debug.o \
		common/entropy_common.o \
		common/error_private.o \
		common/fse_decompress.o \
		common/zstd_common.o \
		compress/fse_compress.o \
		compress/hist.o \
		compress/huf_compress.o \
		compress/zstd_compress.o \
		compress/zstd_compress_literals.o \
		compress/zstd_compress_sequences.o \
		compress/zstd_compress_superblock.o \
		compress/zstd_double_fast.o \
		compress/zstd_fast.o \
		compress/zstd_lazy.o \
		compress/zstd_ldm.o \
		compress/zstd_opt.o \

zstd_decompress-y := \
		zstd_decompress_module.o \
		common/debug.o \
		common/entropy_common.o \
		common/error_private.o \
		common/fse_decompress.o \
		common/zstd_common.o \
		decompress/huf_decompress.o \
		decompress/zstd_ddict.o \
		decompress/zstd_decompress.o \
		decompress/zstd_decompress_block.o \
>>>>>>> acf0ebf6cce0 (BACKPORT: lib: zstd: Upgrade to latest upstream zstd version 1.4.10)
