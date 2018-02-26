# Salesforce SOAP API

## Description
Salesforce provides two SOAP API WSDLs for two different use cases. The enterprise WSDL is optimized for a single Salesforce org. It’s strongly typed, and it reflects your org’s specific configuration, meaning that two enterprise WSDL files generated from two different orgs contain different information.
* Web Services Description Language (WSDL) file - It contains the bindings, protocols, and objects to make API calls.
* The partner WSDL is optimized for use with many Salesforce orgs. It’s loosely typed, and it doesn’t change based on an org’s specific configuration.
* Typically, if you’re writing an integration for a single Salesforce org, use the enterprise WSDL. For several orgs, use the partner WSDL.
* Salesforce requires all connections to use TLS 1.1 or higher.
* Salesforce SOAP API is synchronous.
### Breakdown of the endpoint URI
* `https://` — Specifies secure HTTP.
* `login.salesforce.com` — Top-level domain for a login request.
* `/services/Soap` — Specifies that we’re making a SOAP API request.
* `/c—Specifies` that we’re using the enterprise WSDL. Use /u for the partner WSDL.
* `/36.0` — API version number. 
* `/0DF36000000LHZw` — Package version number.
## Use Case

## Implementation Steps
*  from Setup, enter API in the Quick Find box, then select API. On the API WSDL page, click Generate Enterprise WSDL.
* On the Generate Enterprise WSDL page, click Generate. 
* Web Services Connector (WSC) consume the WSDL file. 
* WSC create classes that enable you to make requests with SOAP API using common programming languages.
* The properties inside the LoginScopeHeader element concern the authentication of Self-Service and Customer Portal users. 
* Append your security token to the end of your password. For example, if your password is mypassword and your security token is XXXXXXXXXX, enter mypasswordXXXXXXXXXX inside the <urn:password> element. 
* SessionHeader. It’s going to contain the session ID we got from the login() response.
* Change the text in the `<urn:sObjects>` tag to look like this: `<urn:sObjects xsi:type="urn1:Account" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">`. This adjustment specifies the correct record type using the XML instance schema declaration.
* The endpoint URI looks something like this: `https://na30.salesforce.com/services/Soap/c/36.0`
## Pattern Value-add

## Resources

## Notes

