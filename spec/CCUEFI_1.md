CCUEFI Page 1 - Booting
=======================

A CCUEFI-compatible firmware(CCUEFI firmware from now on) is a boot manager which loads scripts which can do (almost) anything, including loading an operating system bootloader, which can load an operating system.

***

### Modes

[ TODO: Developer Mode? ]
[ TODO: Secure Boot? ]

When a CCUEFI firmware is booting, it can be on two modes, *User Mode* and *Debug Mode*, the boot mode of the firmware is set by the `CCUEFI_BOOT_MODE` variable. For the reference implementation and others succeeding it, `/ccuefi/firmware/modes.lua` can be helpful

 * *User Mode* (`CCUEFI_BOOT_MODE = 0`) is the more general mode, the firmware can skip some debug information and present the user with a confortable boot menu(and preferrably with an automatic timeout for the default option, minimum 3 seconds).

 * *Debug Mode* (`CCUEFI_BOOT_MODE = 1`) is the more advanced mode, when the boot menu appears, it *must* show shortcuts to the shell enviroment and edit scripts at runtime(no timeout is allowed here).

***

CCUEFI firmwares need to implement basic features(each one defined in its own page)(In order):
 * *System Folders* - `CCUEFI_1_2.md`
 * *Firmware Files(FF)* - `CCUEFI_2.md`
  * *Detection of FF in FFSF* - `CCUEFI_2_1.md`
  * *Loading FF from network* - `CCUEFI_2_2.md`
 * *Shell Enviroment* - `CCUEFI_3.md`
 * *Extensions* - `CCUEFI_4.md`
