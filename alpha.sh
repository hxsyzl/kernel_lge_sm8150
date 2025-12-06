#!/bin/bash

# 脚本：编译内核
# 功能：检查Anykernel3是否存在，设置编译环境变量

# 1. 检查依赖
if ! command -v zip &> /dev/null
then
    echo "zip command could not be found. Please install it first."
    echo "On Debian/Ubuntu, you can install it with: sudo apt-get install zip"
    exit 1
fi

# 2. 检查Anykernel3目录
if [ ! -d "anykernel3" ]; then
    echo "Anykernel3 not found, cloning..."
    git clone https://github.com/hxsyzl/Anykernel3_my anykernel3
else
    echo "Anykernel3 already exists."
fi

# 2. 设置环境变量
echo "Setting up environment variables..."
export https_proxy=http://172.27.144.1:7890
export http_proxy=http://172.27.144.1:7890 
export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH=~/toolchains/zyc-clang/bin
export PATH=${CLANG_PATH}:${PATH}
export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-
export CLANG_TRIPLE=aarch64-linux-gnu-

echo "Environment variables set. Ready to compile."


# 3. 执行 make defconfig
echo "Running make defconfig..."
make CC="ccache clang" AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip O=out alpha_defconfig


# 4. 设置时间
echo "set time "
CURRENT_TIME=$(date +"%Y%m%d-%H%M")

# 5. 执行 make
echo "Running make..."
make -j4 CC="ccache clang" AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip O=out


# 6. 打包成可刷写的zip文件
echo "Packaging the kernel..."
if [ -f "out/arch/arm64/boot/Image" ]; then
    cp out/arch/arm64/boot/Image anykernel3/
    cd anykernel3
    zip -r9 AnyKernel3-G8-4.14-V4-"$CURRENT_TIME".zip * -x .git README.md 
    cd ..
    echo "Done! Flashable zip is at anykernel3/AnyKernel3-G8-4.14-V4-$CURRENT_TIME.zip"
else
    echo "Image not found. Compilation or patching failed."
fi