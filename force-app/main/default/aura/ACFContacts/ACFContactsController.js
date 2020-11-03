({
	init : function(component, event, helper) {
        component.set("v.columns", [
            {label: "Subject", fieldName: "Subject", type: "text"}
        ]);
        
        let getAllContacts= component.get("c.getContacts");
        getAllContacts.setCallback(this, function(response){
            if(response.getState()=="SUCCESS"){
                	component.set("v.contacts", response.getReturnValue());
            }
        })
        
        $A.enqueueAction(getAllContacts);
		
	},
})