# Rename Planes

A super simple Powershell script to quickly change the default tail numbers of all your planes in Microsoft Flight Simulator (2020).

## Usage

```
renameplanes.ps1 [[-NewTailNumber] <string>] [-PackageLocation <string>]
```

Usage Notes:

* `NewTailNumber` is mandatory. The script will not run without one provided
* `PackageLocation` will assume you installed the packages to the default location of `%appdata%\Local\Packages\Microsoft.FlightSimulator_8wekyb3d8bbwe\LocalCache\Packages`. If you changes the install location during setup, this will be needed to make the script function properly.

## Notes/Warnings

This script is provided AS-IS. It blindly edits the various `aircraft.cfg` files located in your install (or provided) location. THIS MIGHT BREAK SOMETHING, especially if the config file structure changes in the future.