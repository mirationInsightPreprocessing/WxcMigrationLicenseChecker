This repository contains a standalone Java application which can be used to help customer to check their network readiness for Cisco IP phones migration license.
When migrating eligible Cisco UCM IP phones (enterprise phones) to Webex calling, the migration licenses will be needed. The migration licenses can be generated using migration wizard or by simply adding the devices in CH.
The migration licenses will be automatically fetched by phones when the eligible Cisco UCM IP phones are upgraded to Multi-Platform phones.

The migration licenses are fetched via TLS, hence the TLS certificates exchange must be successful; second, some network might fragment the license data, so the network must reassembly the packet fragmentation successfully.
This standalone Java application is coded to help customers to determine whether their network meets the requirement for license fetching through the following logic:
for each migration license data center, the migration license for a known device is added into the database, customer can run the standalone application to fetch this known migration license.
If the known license can be fetched successfully, the customers' phones should be able to fetch their migration licenses too.
If the known license can NOT be fetched, customers need to check their network configuration.

The standalone application contains two binaries under ```/bin```:
- ```MigrationLicenseChecker.jar```
- ```phone_ca.jks``` <br />

The first one is the application implementaion, the 2nd one is the keyStore containing Cisco IP phones' root CAs which will validate TLS certificates. 
There is a simple bash script ```checker.sh``` which simplifies user input a little.

***Important Note***:
This application must be run on the same vlan as the to-be-migrated phones are on.


### Syntax
You can first see help menu:

  ```./checker.sh -help ```

The output will be like below:

  ```     Usage: \[\-r regionName\] | \[\-p\]```  
  ```                 regionName: eu, us-east, us-west, fedramp``` <br />
  ```                 -p : display root CA names``` 

See [here](TEST.md) for examples.


### Java version
The application has been tested with Jave 8 and above versions.

### Contacts
Michael Jiang (mijiang@cisco.com)

### LICENSE

Provided under Cisco Sample Code License, for details see [LICENSE](LICENSE.md)

### CODE_OF_CONDUCT

Our code of conduct is available [here](CODE_OF_CONDUCT.md)

### CONTRIBUTING

See our contributing guidelines [here](CONTRIBUTING.md)
