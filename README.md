# drs-test

A Repo for testing a random sample of drs ids to see if they resolve.

## Steps


Launch the [![Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nih-cfde/drs-test/master?urlpath=rstudio)


Open the **drs-test.R** script. This script takes an NCPI manifest file and gets the DRS ids for 10 randomly selected files and prints the output from the command `drs get`. Click **R** to run the whole script and generate and output file called **drs-test.sh** that contains one `drs get` command per line.


Open the **Terminal** and iniate and activate the base Conda environment. You may need to close and reopen the terminal. 

Then install the DRS client by running the following command.

```
pip install ga4gh-drs-client
```

Then, change the modifications on the **drs-test.sh** and run it. 

```
chmod u+x  drs-test.sh

bash drs-test.sh
```

## What to Expect

The output for `drs get https://drs.hmpdacc.org 1L3EGziLLV5a1` should look like:


```
2022-07-08 22:36:56,995	DEBUG	command-line arguments: {'url': 'https://drs.hmpdacc.org', 'object_id': '1L3EGziLLV5a1', 'authtoken': 'omitted', 'download': False, 'expand': False, 'logfile': None, 'max_threads': 1, 'output_dir': '/home/jovyan', 'output_metadata': None, 'silent': False, 'suppress_ssl_verify': False, 'validate_checksum': False, 'verbosity': None}
2022-07-08 22:36:56,995	INFO	issuing request to DRS Object endpoint
2022-07-08 22:36:56,995	DEBUG	URL: https://drs.hmpdacc.org/ga4gh/drs/v1/objects/1L3EGziLLV5a1
2022-07-08 22:36:56,995	DEBUG	Headers: {}
2022-07-08 22:36:56,995	DEBUG	Request params: {'expand': False}
{
    "id": "1L3EGziLLV5a1",
    "created_time": "2020-07-28T20:04:26.000Z",
    "drs_id": "1L3EGziLLV5a1",
    "checksums": [
        {
            "checksum": "67d38c1df44e3d9fb3ff5667f961a918",
            "type": "md5"
        },
        {
            "checksum": "477ab934afec889bd5dd72404403ab13fa37583ae96315cc6a20970f0f677ecd",
            "type": "sha-256"
        }
    ],
    "self_uri": "drs://drs.hmpdacc.org/1L3EGziLLV5a1",
    "size": 78136036,
    "name": "HMP2_J43802_M_ST_T0_B0_0120_ZMGT937-06_C93B2ANXX_L004_R1.fastq.bz2",
    "access_methods": [
        {
            "access_id": "9691359252-1",
            "access_url": {
                "url": "https://hmpdcc.s3.amazonaws.com/ihmp/t2d/microbiome/wms/raw/HMP2_J43802_M_ST_T0_B0_0120_ZMGT937-06_C93B2ANXX_L004_R1.fastq.bz2"
            },
            "type": "s3",
            "region": "us-east-1"
        }
    ]
}
2022-07-08 15:56:01,746	INFO	object/bundle download not requested
2022-07-08 15:56:01,746	INFO	exiting with exit code: 0
```
