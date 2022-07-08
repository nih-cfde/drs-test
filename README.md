# drs-test

A Repo for testing a random sample of drs ids to see if they resolve.

Launch the [![Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/raynamharris/drs-test/master?urlpath=rstudio)

Open the **Terminal** and activate the base Conda environment. You may need to close and reopen the terminal.

Install the DRS client by running `pip install ga4gh-drs-client`.

Open the **drs-test.Rmd** script. This script takes an NCPI manifest file and gets the DRS ids for 10 randomly selected files and prints the output from the command `drs get`. Click **Knit** to generate a report and confirm whether or not all 10 ids resolve. Rerun the **sample** chunck to test a new sample.

