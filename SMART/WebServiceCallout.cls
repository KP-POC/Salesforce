public class WebServiceCallout {

    @future (callout=true)
    public static void sendNotification(String name, String city) {

        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        Http http = new Http();

        req.setEndpoint('https://open-ic.epic.com/FHIR/api/FHIR/DSTU2/');
        req.setMethod('POST');
        req.setBody('name='+EncodingUtil.urlEncode(name, 'UTF-8')+'&city='+EncodingUtil.urlEncode(city, 'UTF-8'));
        req.setCompressed(true); // otherwise we hit a limit of 32000

        try {
            res = http.send(req);
        } catch(System.CalloutException e) {
            System.debug('Callout error: '+ e);
            System.debug(res.toString());
        }

    }

    // run WebServiceCallout.sendNotification('Sarajevo', 'Beograd'); from Execute Anonymous to test
    

}
