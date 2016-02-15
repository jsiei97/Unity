UNITY_ROOT=$(PROJECT_ROOT)/vendor/Unity

CFLAGS+=-I$(UNITY_ROOT)/extras/fixture/src
CFLAGS+=-I$(UNITY_ROOT)/src

OBJ += unity.o
unity.o: $(UNITY_ROOT)/src/unity.c
	$(CC) $(CFLAGS) -o $@ $<

OBJ += unity_fixture.o
unity_fixture.o: $(UNITY_ROOT)/extras/fixture/src/unity_fixture.c
	$(CC) $(CFLAGS) -o $@ $<

