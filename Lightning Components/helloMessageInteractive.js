/*
When the button is clicked, its action handler gets called (1).
In the action handler, the controller gets the button that was clicked, pulls the label text out of it, 
and then sets the component’s message attribute to that text (2). 
And the message of the day is updated (3).
*/

({
    handleClick: function(component, event, helper) {
        var btnClicked = event.getSource();         // the button
        var btnMessage = btnClicked.get("v.label"); // the button's label
        component.set("v.message", btnMessage);     // update our message
    },

    handleClick2: function(component, event, helper) {
        var newMessage = event.getSource().get("v.label");
        component.set("v.message", newMessage);
    },

    handleClick3: function(component, event, helper) {
        component.set("v.message", event.getSource().get("v.label"));
    }
})
