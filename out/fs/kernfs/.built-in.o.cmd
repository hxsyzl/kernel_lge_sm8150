cmd_fs/kernfs/built-in.o :=   rm -f fs/kernfs/built-in.o; llvm-ar rcSTPD fs/kernfs/built-in.o fs/kernfs/mount.o fs/kernfs/inode.o fs/kernfs/dir.o fs/kernfs/file.o fs/kernfs/symlink.o 
