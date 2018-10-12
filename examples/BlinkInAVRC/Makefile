# This sample Makefile, explains how you can compile plain AVR C file.
#
# Arduino Make file. Refer to https://github.com/sudar/Arduino-Makefile
# Run make once to generate C File specified by PRG
# Run again to compile the generated c file
NO_CORE = Yes

BOARD_TAG    =circuitplay32u4cat
MCU =atmega32u4
F_CPU =8000000L

ISP_PROG   =avrispmkII
ISP_PORT   =/dev/ttyACM0
AVRDUDE_ARD_PROGRAMMER =avr109
AVRDUDE_ARD_BAUDRATE =57600
ARD_RESET_OPTS = --caterina 

# C from ATS generation
SATS           = $(wildcard SATS/*.sats)
DATS           = $(wildcard DATS/*.dats)
DATSC          = $(patsubst %.dats,%_dats.c,$(DATS))
DATSCROOT      = $(patsubst DATS/%,./%,$(DATSC))
DATSOBJ        = $(patsubst %.dats,%_dats.o,$(DATS))
ATS = patsopt
PATSHOME =      /home/scott/toolchains/ats/ATS2-Postiats-0.3.11

ATSCFLAGS      = -std=c99 -D_XOPEN_SOURCE
ATSCFLAGS      += -D_ATSTYPE_VAR_SIZE_=0X000F -D_ATS_CCOMP_EXCEPTION_NONE_ -D_ATS_CCOMP_RUNTIME_NONE_ -D_ATS_CCOMP_PRELUDE_NONE_
ATSCFLAGS      += -D_ATS_CCOMP_PRELUDE_USER_=\"./avr_prelude/kernel_prelude.cats\"
ATSCFLAGS      += -Wno-unused-variable -Wno-unused-label -Wno-unused-but-set-variable
ATSCFLAGS      += -I. -I${PATSHOME} -I${PATSHOME}/ccomp/runtime

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump
LOCAL_C_SRCS   = $(DATSC)

# dependencies#
$(DATSC): %_dats.c: %.dats $(SATS)
	$(ATS) -o $@.tmp -d $<
	mv $@.tmp $@

# Rest of AVR Code
-include ../../Arduino.mk

# !!! Important. You have to use make ispload to upload when using ISP programmer

