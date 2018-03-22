({
    gotoURL : function (component) {
        var urlEvent = $A.get("e.force:navigateToURL");
        urlEvent.setParams({
          "url": "https://cfsandbox-fhir-app.cs21.force.com/s/disclaimer"
        });
        urlEvent.fire();
    }
})
