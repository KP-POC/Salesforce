/*
built-in event that can trigger a handler named init when the component loads
*/

({
    doInit : function(component, event, helper) {
        helper.getPatientData(component);
    }
    /*
    handleClick : function(component, event) {
        var 
    }
    */
})
