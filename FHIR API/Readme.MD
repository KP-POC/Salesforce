
`var baseUrl = "https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/"`

`var patientId = data.entry[0].link[0].url.split("/").pop();`

`$ curl "https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB"`

```javascript
$.getJSON(baseUrl + patientSearchString, function(data,error) {
		console.log(data);
		});
```

## Resources
* [Patient + Practitioner](https://open.epic.com/Clinical/FHIR?whereTo=Patient)
