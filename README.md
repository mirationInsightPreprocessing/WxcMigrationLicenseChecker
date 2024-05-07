This repository contains a standalone Java application which can be used to help customer to check their network readiness for Cisco IP phones migration license.
When migrating eligible Cisco UCM IP phones (enterprise phones) to Webex calling, the migration licenses will be needed. The migration licenses can be generated using migration wizard or by simply adding the devices in CH.
The migration licenses will be automatically fetched by phones when the eligible Cisco UCM IP phones are upgraded to Multi-Platform phones.

The migration licenses are fetched via TLS, hence the TLS certificates exchange must be successful; second, some network might fragment the license data, so the network must reassembly the packet fragmentation successfully.
This standalone Java application is coded to help customers to determine whether their network meets the requirement for license fetching through the following logic:
for each migration license data center, the migration license for a known device is added into the database, customer can run the standalone application to fetch this known migration license.
If the known license can be fetched successfully, the customers' phones should be able to fetch their migration licenses too.
If the known license can NOT be fetched, customers need to check their network configuration.

The standalone application contains two binaries under [/bin]:
- [MigrationLicenseChecker.jar]
- [phone_ca.jks]
The first one is the application implementaion, the 2nd one is the keyStore containing Cisco IP phones' root CAs which will validate TLS certificates. 
There is a simple bash script [checker.sh] which simplifies user input a little.

### Syntax
You can first see help menu:
Syntax:
  ```./checker.sh -help ```
The output will be like below:
  <br />
  ```Usage: \[\-r regionName\] | \[\-p\]```  
  
  
extracted from a current UCM tar file exported using the [Bulk
Administration Tool (BAT) export
](https://www.cisco.com/c/en/us/support/docs/unified-communications/bulk-administration-tool/200596-Bulk-Configure-Changes-with-Import-Expor.html#anc7).

Once this tar file has been generated and is available locally, the
`csvftar.py` script should then be used to regenerate the tar file containing *only* the data needed for migration. This new tar file should then be uploaded to the Webex Calling Migration Tool in the Control Hub.

- You can use this script when you need to decrease the tar file size because the size for migration is 350 MB. This is achieved by removing not required columns.
- You can use this script when you need to filter the records based on a specific column, for example, a particular device pool
- Follow [cdrfgzip](cdrfgzip/README.md) for Syntax and example test cases. you can find the sample files in the script directory.

### preprocess Call detail records (CDR'S) File using the [cdrfgzip](cdrfgzip/README.md) script

#### How to Collect CDR's
Please follow [this](https://www.cisco.com/c/en/us/td/docs/voice_ip_comm/cucm/service/12_5_1/Car/cucm_b_cdr-analysis-reporting-admin-guide-1251/cucm_b_cdr-analysis-reporting-admin-guide-1251_chapter_010.html#CUCM_RF_C60605F7_00) link for details: 

***Important Note*** Once CDR is received and is available locally, it is mandatory to preprocess the script before uploading it to CH for [Migration Insight](https://help.webex.com/en-us/article/svoi86/Migration-Insights) The script will take your CDR which can be a list of text or CSV file and will regenerate the file in .csv.gz format, which is the acceptable format for MigrationInsight. This helps us in file size reduction as the allowed limit on Control Hub is 2Gb

- This script removes columns that are not required for processing on Control Hub.
- This script also supports filtering where it also requires a UCM tar file from the above step. On filtering it will give data only for devices that are present in phone.csv from the UCM tar file. 
- Follow [cdrfgzip](cdrfgzip/README.md) for Syntax and example test cases. you can find the sample files in the script directory.

### Python version and OS consideration
The scripts had been tested under both Windows 10 and Ubuntu.
The version of Python is 3. x.x.

## Contacts
* Michael Jiang (mijiang@cisco.com)

### LICENSE

Provided under Cisco Sample Code License, for details see [LICENSE](LICENSE.md)

### CODE_OF_CONDUCT

Our code of conduct is available [here](CODE_OF_CONDUCT.md)

### CONTRIBUTING

See our contributing guidelines [here](CONTRIBUTING.md)
