({
	gotoURL : function (component) {    
    $A.get("e.force:navigateToURL").setParams({ 
       "url": "https://cfsandbox-fhir-app.cs21.force.com/s/disclaimer" 
    }).fire();
}
})
