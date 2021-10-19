#!/bin/bash

yellow='\033[0;33m'
white='\033[0m'
red='\033[0;31m'
gre='\e[0;32m'

ANYKERNEL3_DIR=$PWD/AnyKernel3
FINAL_KERNEL_IMG=kernel-alpham-r-VoyagerIII-$(git rev-parse --short=7 HEAD)img
IMAGE_GZ=$PWD/out/arch/arm64/boot/Image.gz
ccache_=`which ccache`
export ARCH=arm64
export SUBARCH=arm64
export HEADER_ARCH=arm64
export CLANG_PATH=/home/user/fc

export KBUILD_BUILD_HOST="Voayger-sever"
export KBUILD_BUILD_USER="TheVoyager"

make mrproper O=out || exit 1
make dragon_alpha_defconfig O=out || exit 1

Start=$(date +"%s")

rm ./build.log
make -j$(nproc --all) \
	O=out \
	CC="${ccache_} ${CLANG_PATH}/bin/clang" \
	CLANG_TRIPLE=/home/user/fc/bin/aarch64-linux-gnu- \
	CROSS_COMPILE=/home/user/fc/bin/aarch64-linux-gnu- \
	CROSS_COMPILE_ARM32=/home/user/fc/bin/arm-linux-gnueabi- || > ./build.log
	
exit_code=$?
End=$(date +"%s")
Diff=$(($End - $Start))

if [ ! -f "$IMAGE_GZ" ]; then
echo "!!! Image.gz not found"
exit 1
fi
cp -f ./out/arch/arm64/boot/Image.gz-dtb ./pack/Image.gz-dtb
cd ./pack
rm -r ./release
mkdir release
./magiskboot split Image.gz-dtb
mv kernel_dtb dtb
./magiskboot dtb dtb patch
./magiskboot cpio ramdisk.cpio "mkdir 000 .backup" "mv init .backup/init" "add 750 init magiskinit"
./magiskboot hexpatch kernel 736B69705F696E697472616D6673 77616E745F696E697472616D6673
./magiskboot repack ./magisk.img
cp new-boot.img ./release/kernel-alpham-r-VoyagerIII-$(git rev-parse --short=7 HEAD).img
echo -e "$gre << Build completed in $(($Diff / 60)) minutes and $(($Diff % 60)) seconds >> \n $white"
echo "Check out ./release/$FINAL_KERNEL_IMG"
