({
    getPatientData : function(component) {
        var patient = component.get("v.patient");
        var action = component.get("c.makePostCallout");
        patient = JSON.parse(patient);
        action.setParams({
            "patient" : patient
        });
        action.setCallback(this, function(response) {
            this.doLayout(response, component);
        });
        $A.enqueueAction(action);
    },
    // add doLayout function
    doLayout : function(response, component) {
        var data = JSON.parse(response.getReturnValue());
        component.set("v.patientDataList", data);
        console.log("The Patient Data: ", data);
    }
})
