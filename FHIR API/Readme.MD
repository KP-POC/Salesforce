
`var baseUrl = "https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/"`

`var patientId = data.entry[0].link[0].url.split("/").pop();`

`$ curl "https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB"`

```javascript
$.getJSON(baseUrl + patientSearchString, function(data,error) {
		console.log(data);
		});
```
## RESTful Apex examples
* https://developer.salesforce.com/forums/?id=9060G000000BdnnQAC
* [Parsing a JSON Response from a Web Service Callout](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_json_jsonparser.htm)
* [Calling a Server-Side Action](https://developer.salesforce.com/docs/atlas.en-us.lightning.meta/lightning/controllers_server_actions_call.htm)
* 

## Create an APEX REST Service
* Create an Apex REST class that contains methods for each HTTP method.
* Invoke a custom Apex REST method with an endpoint.
* Pass data to a custom Apex REST method by sending a request body in JSON format.
* Write a test method for an Apex REST method and set properties in a test REST request.
* Write a test method for an Apex REST method by calling the method with parameter values.

## Resources
* [Patient + Practitioner](https://open.epic.com/Clinical/FHIR?whereTo=Patient)
