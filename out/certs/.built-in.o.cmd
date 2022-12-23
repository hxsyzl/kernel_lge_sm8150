cmd_certs/built-in.o :=   rm -f certs/built-in.o; llvm-ar rcSTPD certs/built-in.o certs/system_keyring.o certs/system_certificates.o 
