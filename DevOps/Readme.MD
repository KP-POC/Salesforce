# Salesforce DevOps

### Continuous Integration (CI) 
Software Development practice in which developers regularly integrate their code changes into a source code
repository. To ensure that the new code does not introduce bugs, automated builds and tests run before or after
developers check in their changes. The goal of CI is to provide rapid feedback so that when defects are introduced
into the code base, they are identified and corrected as soon as possible.

CI = Automated Version Control + Automated Testing + Automated Deployments + Document Trail

### Continuous Delivery (CD) 
Software Development practice in which teams produce software in short cycles, ensuring that the software can
be reliably released at any time. It aims at building, testing, and releasing software faster and more frequently.

### Continuous Deployment 
Continuous Deployment means that every change is automatically deployed to production. Continuous Delivery
means that the team ensures every change can be deployed to production but may choose not to do it, usually
due to business reasons. In order to do continuous deployment, one must be doing continuous delivery.

### Scratch Orgs
Scratch orgs are ephemeral orgs that can be trivially created and destroyed with the force:org:create and
force:org:delete commands.

### Salesforce DevOps Key Factors
* Code Check-in
* Unit Testing
* Test Automation
* Track Changes
* Compare Orgs
* Rollbacks
* Package Using
* Manage SF Governor Limits
* Support for Data and Metadata Migration
* On-premises/Cloud

### Out of the box tools

Salesforce.com projects are equipped with two technologies to support deployments.  

* "Change Set" - a Salesforce.com hosted UI which can migrate individual components from sandbox to QA sandbox to production.  
* Salesforce Metadata API - which allows specialized ANT scripts to both extract and deploy raw components in the form of XML files.

### Recommended DevOps Stack for Saleforce
| Capabilities        | Stack           | 
| ------------- |:-------------:| 
| Release & Deployment | Release Management App | 
| Deployment      | ANT, Change Set, Metadata API | 
| Test Automation | Selenium Automation | 
| Code Quality Check | Novasuite |
| Collaboration & Review | Gerrit |
| Code Repository | Git |
| Orchestration | Jenkins | 
| Monitoring Tool | Sensu | 
| Hosting Platform | AWS, Bluemix | 


### Salesforce Org

#### Production

#### Sandbox
Sandboxes are special organizations that are used to test changes or new apps without risking damage to your production data or configuration. Sandbox Templates are used to create new Sandboxes containing specific data sets.
##### Developer
* Refresh Interval: 1 day
* Capacity: 200 MB
* Includes:
  * Configuration
  * Apex & Metadat
  * All users which are in Produciton Org
##### Developer Pro
* Refresh Interval: 1 day
* Capacity: 1 GB
* Includes:
  * Configuration
  * Apex & Metadat
  * All users which are in Produciton Org
##### 
