# Salesforce SOAP API

## Description
Salesforce provides two SOAP API WSDLs for two different use cases. The enterprise WSDL is optimized for a single Salesforce org. It’s strongly typed, and it reflects your org’s specific configuration, meaning that two enterprise WSDL files generated from two different orgs contain different information.
* The partner WSDL is optimized for use with many Salesforce orgs. It’s loosely typed, and it doesn’t change based on an org’s specific configuration.
* Typically, if you’re writing an integration for a single Salesforce org, use the enterprise WSDL. For several orgs, use the partner WSDL.
## Use Case

## Implementation Steps
*  from Setup, enter API in the Quick Find box, then select API. On the API WSDL page, click Generate Enterprise WSDL.
* On the Generate Enterprise WSDL page, click Generate. 
* Web Services Connector (WSC) consume the WSDL file. 
* WSC create classes that enable you to make requests with SOAP API using common programming languages.
* 

## Pattern Value-add

## Resources

## Notes
Web Services Description Language (WSDL) file - It contains the bindings, protocols, and objects to make API calls.
