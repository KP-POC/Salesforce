Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://open-ic.epic.com/');
request.setMethod('GET');
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
