# SECOORA Glider System (SGS)

[GUTILS](https://github.com/SECOORA/GUTILS) configuration files for the [SECOORA](http://secoora.org) Glider System (SGS). This repository can be updated at any point and changes will be reflected in any new files or products produced by the SGS (including netCDF files uploaded to the IOOS Glider DAC). The SGS checks for updated configuration files in this repository just before checking for any new data from the gliders.

To create a new deployment, copy the `config/template-YYYYMMDDTHHII` folder to a new folder named for the `glider` and the `trajectory_date`. Edit the `deployment.json` file and add in the `glider` and `trajectory_date` values. Together these two attributes make up the "deployment id" that is used to identify the unique glider deployment. See exisiting configurations for examples and hints.

For reference please see https://github.com/ioos/ioosngdac/wiki/NGDAC-NetCDF-File-Format-Version-2.
