cmd_net/unix/unix.o :=  rm -f net/unix/unix.o; llvm-ar rcSTPD net/unix/unix.o net/unix/af_unix.o net/unix/garbage.o net/unix/sysctl_net_unix.o 
