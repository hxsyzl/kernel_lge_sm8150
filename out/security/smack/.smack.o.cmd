cmd_security/smack/smack.o :=  rm -f security/smack/smack.o; llvm-ar rcSTPD security/smack/smack.o security/smack/smack_lsm.o security/smack/smack_access.o security/smack/smackfs.o 
