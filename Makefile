EE_BIN = DKRPS2.ELF
EE_OBJS = src/main.o

EE_INCS += -I$(GSKIT)/ee/gs/include -I$(GSKIT)/ee/dma/include
EE_LDFLAGS += -L$(GSKIT)/lib
EE_LIBS = -lgskit -ldmakit -lkernel

all: $(EE_BIN)

clean:
	rm -f $(EE_BIN) $(EE_OBJS)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal
