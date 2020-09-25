# Arduino Make file. Refer to https://github.com/sudar/Arduino-Makefile

MCU = atmega328pb
ISP_PROG = atmelice_isp
AVRDUDE_ARD_PROGRAMMER = atmelice_isp
ISP_LOW_FUSE       = 0xe2
ISP_HIGH_FUSE      = 0xdf
ISP_EXT_FUSE       = 0xfd
AVRDUDE_CONF = avrdude.conf # just to make sure it has the m328pb def
include ./Arduino-Makefile/Arduino.mk