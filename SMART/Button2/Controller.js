({
	gotoURL : function (component) {    
    $A.get("e.force:navigateToURL").setParams({ 
       "url": "one/one.app#/home" 
    }).fire();
}
})
