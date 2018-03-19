({
	gotoURL : function (component, event, handler) {    
    $A.get("e.force:navigateToURL").setParams({ 
       "url": "s/login/" 
    }).fire();
	}
})
