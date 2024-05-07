#### Case 1: fetch the known migration license from us-east region
* Syntax:
  ```./checker.sh -rus-east ```
* If the network does not any issue (access restriction or data connection issue), the output will be like below:
  <br />
  ```Trying to fetch a license from https://migration-service-a.wbx2.com : ```<br />
  ```  Device ##########3C : a valiad license has been fetched```
* PASSED.

#### Case 2: fetch the known migration license from eu region
* Syntax:
  ```./checker.sh -reu ```
* If the network does not any issue (access restriction or data connection issue), the output will be like below:
  <br />
  ```Trying to fetch a license from https://migration-service-k.wbx2.com :```<br />
  ```  Device ##########3C : a valiad license has been fetched```
* PASSED.

#### Case 3: fetch the known migration license from fedramp region
* Syntax:
  ```./checker.sh -rfedramp ```
* If the network does not any issue (access restriction or data connection issue), the output will be like below:
  <br />
  ```Trying to fetch a license from https://migration-service.gov.ciscospark.com :```<br />
  ```  Device ##########CB : a valiad license has been fetched```
* PASSED.

#### Case 4: TLS certificate can not be validated
* Syntax:
  ```./checker.sh -rus-west ```
* If the network does not any issue (access restriction or data connection issue), the output will be like below:
  <br />
  ```Trying to fetch a license from https://migration-service-r.wbx2.com :```<br />
  ```  Error: unable to validate certificate issuer - [customer.proxy.com, Unknown Certificate]```
* PASSED.

#### Case 5: print the root CAs
* Syntax:
  ```./checker.sh -p ```
* If the network does not any issue (access restriction or data connection issue), the output will be like below:
  <br />
  ```Phone root CA list:```<br />
  ```  0 - D-TRUST Root Class 3 CA 2 EV 2009```<br />
  ```  1 - USERTrust RSA Certification Authority```<br />
  ```  2 - SSL.com TLS ECC Root CA 2022```<br />
  ```  ...```<br />  
* PASSED.
