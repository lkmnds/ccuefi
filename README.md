CCUEFI
==================

CCUEFI(ComputerCraft UEFI) is the UEFI specification made for ComputerCraft, it describes a firmware for ComputerCraft machines, and what should the firmware do to comply with the CCUEFI specifications.

Some of the things specified by CCUEFI:
 * Multiboot
 * Network Booting(PXE)
 * Shell configuration enviroments
  * or, putting simply, configure the firmware by a shell provided by itself
 * (Optional by each firmware) GUI configuration enviroments

Files(and folders) in this repository:
 * `/spec/` has the specification files, written in Markdown
 * `/firmware/` has a implementation of a CCUEFI-compatible firmware, which can be installed in any ComputerCraft machine(with the right configuration)
