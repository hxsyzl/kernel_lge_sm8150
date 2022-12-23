cmd_fs/jbd2/jbd2.o :=  rm -f fs/jbd2/jbd2.o; llvm-ar rcSTPD fs/jbd2/jbd2.o fs/jbd2/transaction.o fs/jbd2/commit.o fs/jbd2/recovery.o fs/jbd2/checkpoint.o fs/jbd2/revoke.o fs/jbd2/journal.o 
