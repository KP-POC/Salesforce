public with sharing class openEpicAPI {

    //Method to perform a callout and return an httpResponse
    public static httpResponse callout(String httpMethod, String endpoint, String body) {
        // Instantiate an httpRequest and set the required attributes
        httpRequest req = new httpRequest();
        String endpoint = 'https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/Patient/Tbt3KuCY0B5PSrJvCu2j-PlK.aiHsu2xUjUM8bWpetXoB';
        req.setMethod(httpMethod);
        /* req.setEndpoint(endpoint);*/

        // Optional attributes to conform to the web service requirements
        req.setHeader();

        // Adjust the timeout duration (in milliseconds) to deal with slow servers or large payloads
        req.setTimeout(120000);

        //Use the HTTP Class to send the httpRequest and receive an httpResponse
        /*If you are not using an HttpCalloutMock: 
		if (!test.isRunningTest){
		*/
        httpResponse res = new http().send(req);
        system.debug(res.toString());
        system.debug(res.getBody());
        return res;
    }

    // Method to deserialize the response body
    public static responseResource deserialize(httpResponse){
        return (responseResource)JSON.deserialize(res.getBody(),responseResource.class);
    }   
}
