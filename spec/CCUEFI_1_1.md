CCUEFI Page 1.1 - System Files
================================

Some files and folders are protected by a CCUEFI firmware.

 * `/ccuefi/` - The CCUEFI folder, all config files reside there
  * `/ccuefi/ccuefi.cfg` - The CCUEFI main configuration file, it's specification is in `CCUEFI_5_1.md`
  * `/ccuefi/boot/` - the boot folder, `CCUEFI_5_2.md`

#### `/ccuefi/`, the CCUEFI folder

The CCUEFI folder has all other files and folders that a CCUEFI compatible firmware uses to manage a computer.

#### `/ccuefi/ccuefi.cfg`

`ccuefi.cfg` is the main configuration file a CCUEFI firmware needs to know what is the computer it is running on.

Example of a basic `ccuefi.cfg` file:
```
# _init section: initialization variables
section _init {
    # load all available modules
    module load all
    # initialize all available modules
    module init all

    # set config section as the default configuration section
    set CFG_SECTION config
}

# config section: configuration and identification of the computer for the firmware
section config {
    # type of computer: desktop cc(computercraft)
    # other types: ccnet, pocket, etc.
    type cc

    # set an advanced computer
    # use "normal" instead of "advanced" for normal computers
    set cc computer advanced

    # cc.version = any
    # if CC version is 1.79, use "set cc version 1.79"
    set cc version any

    # set default device detection
    detect set all
}
```

You can see a more detailed implementation in `/firmware/ccuefi/ccuefi.cfg`
