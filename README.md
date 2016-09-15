# SGS

Configuration for the SECOORA Glider System (SGS). This repository can be updated at any point and changes will be reflected in any new files or products produced by the SGS (including netCDF files uploaded to the IOOS Glider DAC). The SGS checks for updated configuration files in this repository just before checking for any new data from the gliders.


# SECOORA Glider System (SGS)

This package is part of the SECOORA Glider System (SGS) and was originally developed by the [CMS Ocean Technology Group](http://www.marine.usf.edu/COT/) at the University of South Florida. It is now maintained by [SECOORA](http://secoora.org) and [Axiom Data Science](http://axiomdatascience.com).

* [GUTILS](https://github.com/axiom-data-science/GUTILS): A set of Python utilities for post processing glider data.
* [GSPS](https://github.com/axiom-data-science/GSPS): Watches a directory for new *db flight/science files and publishes the data to a ZeroMQ socket.
* [GDAM](https://github.com/axiom-data-science/GDAM): Watches a directory for new *db flight/science files, inserts the data into a MongoDB instance, and publishes the data to a ZeroMQ socket.
