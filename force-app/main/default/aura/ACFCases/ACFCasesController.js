({
	init : function(component, event, helper) {
        component.set("v.columns", [
            {label:"Subject", fieldName:"Subject", type:"text"}
        ]);
        
        let getAllCases= component.get("c.getCases");
        getAllCases.setCallback(this, function(response){
            if(response.getState=="SUCCESS"){
                	component.set("v.cases", response.getReturnValue());
            }
        })
        
        $A.enqueueAction(getAllCases);
		
	},
    
    FireFilterEvent : function(cmp, evt, help){
        	let contextObj = cmp.find('Table').getSelectedRows();
        if (contextObj.length >0){
            let newEvent= $A.get("e.c:ACFCaseEvent");
            newEvent.setParams({"AccId": contextObj[0].AccountId, "ConId" : contextObj[0]});
            newEvent.fire();
            
        }
    },
    
    HandleAccountEvent : function(cmp, evt, help){
        	let getFilteredCases = cmp.get("c.getConFilteredCases");
        getFilteredCases.setParams({relId: evt.getParam("ConId")});
        getFilteredCases.setCallBack(this,function(response){
            if(response.getState()==="SUCCESS"){
                	cmp.set("v.cases", response.getReturnValue());
                
            }
        })
        $A.enqueueAction(getFilteredCases);
    }
})