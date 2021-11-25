all:
	cc My_Alarm1.c -D_POSIX_PTHREAD_SEMANTICS -lpthread -o My_Alarm

TESTS := test/test1 test/test2 test/test3 test/test4 test/test5 test/test6 test/test7 test/test8

.PHONY: test
check:
	for test in $(TESTS); do bash test-alarm.sh $$test ; bash timeout.sh $$test || exit 1; done



	
