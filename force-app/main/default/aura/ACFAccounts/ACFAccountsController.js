({
	init : function(component, event, helper) {
        component.set("v.columns", [
            {label: "Subject", fieldName: "Subject", type: "text"}
        ]);
        
        let getAllAccounts= component.get("c.getAccounts");
        getAllAccounts.setCallback(this, function(response){
            if(response.getState()==="SUCCESS"){
                	component.set("v.accounts", response.getReturnValue());
            }
        })
        
        $A.enqueueAction(getAllAccounts);
		
	},
    FireFilterEvent : function(cmp, evt, help){
        	let contextObj = cmp.find('Table').getSelectedRows();
        if (contextObj.length >0){
            let newEvent= $A.get("e.c:ACFAccountEvent");
            newEvent.setParams({"AccId": contextObj[0].Id });
            newEvent.fire();
            
        }
    },
    
    
})