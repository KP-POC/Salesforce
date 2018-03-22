({
    gotoURL : function (component) {
        var urlEvent = $A.get("e.force:navigateToURL");
        urlEvent.setParams({
          "url": "one/one.app#/home"
        });
        urlEvent.fire();
    }
})
