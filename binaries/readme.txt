Programming
===========

Fuses
=====

AVRDUDE command line for writing the FUSE settings to the chip (required once):

avrdude -C avrdude.conf -c <programmer> -P <port,optional> -p <target-mcu> -v -U lfuse:w:0xAA:m -U hfuse:w:0xBB:m -U efuse:w:0xCC:m -U lock:w:0xDD:m

EX: avrdude -C avrdude.conf -p m328pb -c atmelice_isp -U lfuse:w:0xE2:m -U hfuse:w:0xDF:m -U efuse:w:0xfd:m

It's okay if the extended fuses fail verification because some of them are undefined.

L-FUSE: 0xE2
H-FUSE: 0xDF
E-FUSE: 0xFD

AVR FUSE calculator:
====================

(1) http://www.engbedded.com/fusecalc
(2) http://eleccelerator.com/fusecalc/fusecalc.php



Flashing
========

AVRDUDE command line for writing code to the chip:

avrdude -C avrdude.conf -c <programmer> -P <port,optional> -p <target-mcu> -v -e -U flash:w:<hexfile>:i

EX: avrdude -C avrdude.conf -p m328pb -c atmelice_isp -U flash:w:build-uno/Youyue-858D-plus.hex