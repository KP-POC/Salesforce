Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://open-ic.epic.com/');
request.setMethod('GET');
request.setHeader('Accept-Encoding','gzip, deflate');
HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.

request.setHeader('Content-Type', 'application/json;charset=UTF-8');

Http http = new Http();
HttpRequest req = new HttpRequest();
        req.setMethod(method);
        req.setEndpoint('http://' + bucketname + '.' + host + '/' +UserInfo.getUserId() + '/' + fileName);
        req.setHeader('Host', bucketname + '.' + host);
        req.setHeader('Content-Length', String.valueOf(fileBody.length()));
        req.setHeader('Content-Encoding', 'UTF-8');
        req.setHeader('Content-type', contentType);
        req.setHeader('Connection', 'keep-alive');
        req.setHeader('Date', now);
        req.setHeader('ACL', 'public-read');
        req.setBody(fileBody);


http://kphc-ic-dev18.appl.kp.org/interconnect-hcotca2/wcf/KPHCLSPApplicationV1/KPHCLSPApplicationV1.svc/rest/getDat
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
