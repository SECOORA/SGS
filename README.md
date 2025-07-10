# SECOORA Glider System (SGS)

[GUTILS](https://github.com/SECOORA/GUTILS) configuration files for the [SECOORA](http://secoora.org) Glider System (SGS). This repository can be updated at any point and changes will be reflected in any new files or products produced by the SGS (including netCDF files uploaded to the IOOS Glider DAC). The SGS checks for updated configuration files in this repository just before checking for any new data from the gliders.

To create a new deployment, copy the `config/template-YYYYMMDDTHHII` folder to a new folder named for the `glider` and the `trajectory_date`. Edit the `deployment.json` file and add in the `glider` and `trajectory_date` values. Together these two attributes make up the "deployment id" that is used to identify the unique glider deployment. See exisiting configurations for examples and hints.

Because invalid JSON files can cause the IOOS Glider DAC to break, it's worth double-checking your changes, which is easy to do with the `validate_json.sh` utility script (depends on `jq`):

```sh
./validate_json.sh
```

If all is good you should see `All JSON files are valid.`. Otherwise, you'll see a list of bad files to fix.

You can additionally run `./validate_deployments.sh` to perform a set of
sanity checks that go beyond just checking the validity of the JSON formatting.

Both scripts also run via GitHub Actions when you push changes.

For reference please see https://github.com/ioos/ioosngdac/wiki/NGDAC-NetCDF-File-Format-Version-2.
