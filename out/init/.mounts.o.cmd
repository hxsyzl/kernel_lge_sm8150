cmd_init/mounts.o :=  rm -f init/mounts.o; llvm-ar rcSTPD init/mounts.o init/do_mounts.o init/do_mounts_rd.o init/do_mounts_initrd.o init/do_mounts_dm.o 
