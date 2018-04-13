public class postCalloutKP{ 

        @AuraEnabled
        public static void makePostCallout() {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://apiservice-bus-dev.kp.org:2005/service/ptnt_care/ptnt_care_sup/KPHC/KPHCLSPApp/v1?esb-region=NCAL&esb-envlbl=dev3');
            request.setMethod('POST');
            request.setHeader('esb-urn', 'urn:kp:hcotca2');
            request.setHeader('esb-id', '110013865747');
            request.setHeader('esb-idtype', 'NCALMRN');
            request.setHeader('Content-Type', 'application/json');
            request.setHeader('Accept', 'application/json');
            request.setHeader('Accept-Encoding','gzip,deflate');
            request.setClientCertificateName('surajbabu');
            // Set the body as a JSON object
            request.setBody('{"ServiceMetadataRequest": {"regionCode": {"code": "SCA"},"systemPropertyList": {"entry": [{"value": "110013865747","name": "MRN"},{"value": "NCALMRN","name": "MRNType"}],"systemName": "EPIC"},"requestingSystemName": "CHR"},"homeInfo":"","consumerID":"123","integrationID":"123-1234567","reqData":[{"key":"ID","value":"110013865747"},{"key":"IDType","value":"NCALMRN"},{"key":"contactIDList","value":"86220791"}]}');
            HttpResponse response = http.send(request);
            
            // Parse the JSON response
            if (response.getStatusCode() != 201) {
                System.debug('The status code returned was not expected: ' +
                    response.getStatusCode() + ' ' + response.getStatus());
            } else {
                System.debug(response.getBody());
            }
        }
}
