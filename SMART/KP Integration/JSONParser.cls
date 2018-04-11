public class JSONParser {
    
    public static void parseJSONResponse() {
        Http httpProtocol = new Http();
        // Create HTTP request to send.
        HttpRequest request = new HttpRequest();
        // Set the endpoint URL.
        request.setClientCertificateName('surajbabu');
        /*
        String endpoint = 'https://apiservice-bus-dev.kp.org:2005/service/ptnt_care/ptnt_care_sup/KPHC/KPHCLSPApp/v1?esb-region=NCAL&esb-envlbl=dev3';
        request.setEndPoint(endpoint);
		*/
        // Set the HTTP verb.
        request.setMethod('GET');
        // Send the HTTP request and get the response.
        // The response is in JSON format.
        HttpResponse response = httpProtocol.send(request);
        System.debug(response.getBody());
    }
	/*    
    // Method to deserialize the response body
    public static responseResource deserialize(HttpResponse){
        return (responseResource)JSON.deserialize(res.getBody(),responseResource.class);
    }
	*/
}
