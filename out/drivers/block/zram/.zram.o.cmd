cmd_drivers/block/zram/zram.o :=  rm -f drivers/block/zram/zram.o; llvm-ar rcSTPD drivers/block/zram/zram.o drivers/block/zram/zcomp.o drivers/block/zram/zram_drv.o drivers/block/zram/zram_dedup.o 
