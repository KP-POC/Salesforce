({
    gotoURL : function (component, event, handler) {
        var urlEvent = $A.get("e.force:navigateToURL");
        urlEvent.setParams({
          "url": "s/login/"
        });
        urlEvent.fire();
    }
})
