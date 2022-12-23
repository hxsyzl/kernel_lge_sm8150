cmd_drivers/hid/hid.o :=  rm -f drivers/hid/hid.o; llvm-ar rcSTPD drivers/hid/hid.o drivers/hid/hid-core.o drivers/hid/hid-input.o drivers/hid/hid-debug.o drivers/hid/hidraw.o 
