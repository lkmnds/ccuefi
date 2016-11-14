CCUEFI Page 1 - Booting
=======================

A CCUEFI-compatible firmware(CCUEFI firmware from now on) is a boot manager which loads EFI files which can do anything, including loading an operating system bootloader, which can load an operating system.

CCUEFI firmwares need to implement basic features(each one defined in its own page)(In order):
 * *System Folders* - `CCUEFI_1_2.md`
 * *Firmware Files(FF)* - `CCUEFI_2.md`
  * *Detection of FF in FFSF* - `CCUEFI_2_1.md`
  * *Loading FF from network* - `CCUEFI_2_2.md`
 * *Shell Enviroment* - `CCUEFI_3.md`
 * *Extensions* - `CCUEFI_4.md`
