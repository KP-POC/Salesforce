    // Not real code! Do not cut-and-paste!
    doInit: function(component, event, helper) {
        // Create server request
        var action = component.get("c.getExpenses");
        // Send server request
        $A.enqueueAction(action);
        // ... time passes ...
        // ...
        // ... Jeopardy theme plays ...
        // ...
        // ... at some point in the indeterminate future ...
        // Handle server response
        var state = action.response.getState();
        if (state === "SUCCESS") {
            component.set("v.expenses", action.response.getReturnValue());
        }
    },
