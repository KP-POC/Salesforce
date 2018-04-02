/*
The variable searchTerm retrieves the value of the defaultSearch aura:attribute.
The variable patient retrievs the value of the location aura:attribute.
`var action = component.get(“c.getLocal");` assigns the specified method of the component's Apex controller to the action variable.
`this` keyword refers to the Helper, which allows us to call another method within the Helper.
*/

({
    getLocalList: function(component) {
        var searchTerm = component.get("v.defaultSearch");
        var location = component.get("v.location");
        var action = component.get("c.getLocal");
        location = JSON.parse(location);
        action.setParams({
            "searchTerm": searchTerm,
            "lat": location.coords.latitude,
            "lon": location.coords.longitude
        });
        action.setCallback(this, function(response) {
            this.doLayout(response, component);
        });
        $A.enqueueAction(action);
    }

    doLayout: function(response, component) {
        var data = JSON.parse(response.getReturnValue());
        component.set("v.restaurantList", data.bizArray);
        console.log("The Data: ", data);
    }    
})
