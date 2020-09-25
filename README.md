
Youyue-858D-plus
================

Custom firmware and adapter PCB for the Youyue 858D+ with MK1841D3 stock MCU

This board and firmware is designed only for the ATmega328*PB* because it makes use of its extra port E I/O.

This repo includes a PCB that contains all the mods I could find:
* wguibas's MK1841D3 to AVR pinout adapting
* madworm's fancy fan speed commutation sensing
* RaiHei's buzzer
* Gabse's max fan speed cooldown
* 4 buttons for recalling preset temperatures
* Some extra I/O breakout for more hacking

Order the parts and PCB in the PCB folder. Then, use [this instructable](https://www.instructables.com/id/858D-SMD-Hot-Ait-Reflow-Station-Hack/) as a general guide. Add some buttons to the front panel for the presets.

There is a 'user manual' of sorts in the 'Docs' folder.

Some videos showing the progress from 'stock firmware' with massive temperature overshoot
towards almost no overshoot at all.

https://www.youtube.com/playlist?list=PLONcxJMOrdyeYuEgM6qhCllZelN6gPjrT


Please note:

Although this device looks very much like ones sold by 'Atten' and others, the innards
are not necessarily the same. The heater / wand are probably the same, but I know that
e.g. the 'Atten 858D' uses a different mainboard with a different brand microcontroller.

Naturally, this firmware will only work 'as is' for the exact mcu / mainboard combination I have.
Please see the 'Docs' folder for schematic and PCB photos.


Compiling/Development
=====================
Since this version of the firmware uses the PB variant of the chip, you need to use the makefile. You may need to adjust `ISP_PROG` and `AVRDUDE_ARD_PROGRAMMER` in the makefile depending on what programmer you have.
* Do `make` to just compile the project.
* Do `make ispload` to compile and upload the project.
* If you don't want to edit the firmware, you can just follow the instructions in the binaries folder to upload without compiling.

---

Safety information / disclaimer:
================================

Making any modifications to this device may cause you irreversible physical harm or worse.
You do this at your own risk. 

There is a significant risk of lethal electrical shock, so if you still insist of doing so, make sure to
ALWAYS UNPLUG THE MAINS CABLE before dismantling the device. Check repeatedly.

If you have an isolation transformer - do use it.

