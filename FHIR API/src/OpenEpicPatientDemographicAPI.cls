public with sharing class OpenEpicPatientDemographicAPI {
	public static String BASE_URL = 'https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient?given=Jason&family=Argonaut';

	//Method to perform a callout and return an httpResponse
	public static httpResponse callout(String httpMethod, String endpoint, String body){
		//Instantiate an httpRequest and set the required attributes
		httpRequest req = new httpRequest();
		req.setMethod(httpMethod);
		req.setEndpoint(endpoint);

		//Optional attributes are often required to conform to the 3rd Party Web Service Requirements
		req.setHeader('Accept-Encoding','gzip, deflate');

		//You can adjust the timeout duration (in milliseconds) to deal with slow servers or large payloads
		req.setTimeout(120000);

		//Use the HTTP Class to send the httpRequest and receive an httpResposne
		/*If you are not using an HttpCalloutMock: 
		if (!test.isRunningTest){
		*/
		httpResponse res = new http().send(req);
		/*If you are not using an HttpCalloutMock: 
		}
		*/
		system.debug(res.toString());
		system.debug(res.getBody());
		return res;
	}
  
  //Method to deserialize the response body
	public static responseResource deserialize(httpResponse res){
		return (responseResource)JSON.deserialize(res.getBody(),responseResource.class);
	}


/**********************************************************************/
// https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient?given=Jason&family=Argonaut


  public static responseResource DSTU2_Patient(String given, String family) {
        httpResponse res = callout('POST', compileEndpoint('DSTU2/Patient', given, family), null);
        if ( res.getStatusCode() == 200 && string.isNotBlank(res.getBody()) ){
            return deserialize(res);
        }
        return null;
    }


  public static String compileEndpoint(String call, String given, String family) {
        PageReference endpoint = new PageReference(BASE_URL+call);
        if ( string.isNotBlank(site) ){
            endpoint.getParameters().put('site',site);
        }
        endpoint.getParameters().put('given','Jason');
        if ( string.isNotBlank(given) ){
			endpoint.getParameters().put('given',given);
		}
        endpoint.getParameters().put('family','Argonaut');
        if ( string.isNotBlank(family) ){
			endpoint.getParameters().put('family',family);
		}
        return endpoint.getURL();
    }
