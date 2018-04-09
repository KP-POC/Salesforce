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


## Salesforce Org

### Production
Production org is a Salesforce instance available to all Salesforce users and it is a live real-time production environment. 

#### Deploying Apex
You CANNOT develop Apex in your Salesforce production org. Your development work is done in either a sandbox or a Developer Edition org.
You can deploy Apex using:
* [Change Sets](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_deploying_changesets.htm)
* [The Force.com IDE]()
* [The Ant Migration Tool]
* [SOAP API]
Any deployment of Apex is limited to 5,000 code units of classes and triggers.

Using Change Sets To Deploy Apex
Using the Force.com IDE to Deploy Apex
Using the Ant Migration Tool
Using SOAP API to Deploy Apex


### Sandbox
Sandboxes are special organizations that are used to test changes or new apps without risking damage to your production data or configuration. Sandbox Templates are used to create new Sandboxes containing specific data sets.

#### Deploying Apex to a Sandbox Organization
Sandboxes create copies of your Salesforce org in separate environments. Sandboxes are isolated from your production org, so operations that you perform in your sandboxes don’t affect your production org.


### Types of Sandboxes:

#### Developer 
* Refresh Interval: 1 day
* Capacity: 200 MB
* Includes:
  * Configuration
  * Apex & Metadat
  * All users which are in Produciton Org
#### Developer Pro
* Refresh Interval: 1 day
* Capacity: 1 GB
* Includes:
  * Configuration
  * Apex & Metadat
  * All users which are in Produciton Org
#### Partial Copy
* Refresh Interval:  5 Days
* Capacity:  5 GB
* Includes:
  * Configuration
  * Apex & Metadata
  * All Users
  * Records (sample of selected objects)
  * Sandbox Template Support
#### Full Copy 
* Refresh Interval:  29 Days
* Capacity:  Same as Source
* Includes:
  * Configuration
  * Apex & Metadata
  * All Users
  * Records (all or selected objects)
  * Sandbox Template Support
  * History & Chatter Data (optional)

### Writing Tests
Before you deploy Apex, the following must be true:
* At least 75% of your Apex code must be covered by unit tests, and all of those tests must complete successfully.
Note the following.
* When deploying Apex to a production organization, each unit test in your organization namespace is executed by default.
* Calls to System.debug are not counted as part of Apex code coverage.
* Test methods and test classes are not counted as part of Apex code coverage.
* 75% or more of your code should be covered by unit tests.
* Every trigger must have some test coverage.
* All classes and triggers must compile successfully.


### Change Sets
A change set is a means by which one organization can send customizations to another organization.
* An outbound change set is a change set created in the organization you are logged into and want to send to another organization.
* An inbound change set is a change set that has been sent from another organization to the organization you are logged into.
* Change sets can only contain modifications you can make through the setup menu.
* Change sets may contain customizations to existing components or new components, but can't be used to delete or rename components.









https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB
https://apiservice-bus-dev.kp.org:2005/service/ptnt_care/ptnt_care_sup/KPHC/KPHCLSPApp/v1?esb-region=NCAL&esb-envlbl=dev3




