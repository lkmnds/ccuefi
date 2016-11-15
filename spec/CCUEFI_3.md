CCUEFI Page 3 - Shell Enviroment
================================

All CCUEFI firmwares *must* implement a basic shell so users in *Debug Mode* can configure the firmware to its needs(without any modification of the source code).

The Shell provided by a CCUEFI can be a small program separated from the core files from the firmware, something like `/ccuefi/firmware/fsh/fsh.lua`.

When launched, The Shell checks if the firmware is in *Debug Mode*, if it isn't, it can return control to the firmware.

It should implement basic commands to help the user to use the shell:

 * `help`
  * Show basic help and commands implemented
 * `cd`, `ls`, `cat`
  * Get configuration details
 * `edit` for editing configuration files
 * `fvar` to configure firmware configuration variables
 * `fcfg` to configure firmware configuration files
 * `set` to set variables at runtime
 * `fsave` to save the configuration
 * `frun` to restart the firmware with the configuration variables set in(but doesn't maintain across reboots without `fsave`)
 * `reboot` to reboot, `shutdown` to shutdown
