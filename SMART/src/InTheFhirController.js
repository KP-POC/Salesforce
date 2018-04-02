/*
Function's in a cmp's controlle file can only be called from within the cmp's markup.  
Best practice is to put functions that need to be called from within the controller in the cmp's helper file.
*/

doInit : function(component, event, helper) {
    helper.getLocalList(component);
}
