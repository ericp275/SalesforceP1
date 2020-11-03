({
	doInit : function(component) {
        let centerAction=component.get("c.getCenters");
        centerAction.setCallback(this, function(response){
            
            if(response.getState()=="SUCCESS"){
                let markers=[];
                let region= component.get("v.region");
                let regionStates;
                
                switch(region){
                    case 'Northeast':
                        regionStates = component.get("v.northeastStates");
                        component.set("v.markersTitle", "Northeast Distribution Centers");
                        break;
                    case 'Midwest':
                        regionStates = component.get("v.midwestStates");
                        component.set("v.markersTitle", "Midwest Distribution Centers");
                        break;
                    case 'South':
                        regionStates = component.get("v.southStates");
                        component.set("v.markersTitle", "Southern Distribution Centers");
                        break;
               	    case 'West':
                        regionStates = component.get("v.westStates");
                        component.set("v.markersTitle", "Western Distribution Centers");
                        break;        
                }
                
                for(let dc of response.getReturnValue()){
                    if(regionStates && regionStates.indexOf(dc.State__c)!=-1){
                        markers.push({
                            location: {
                                City: dc.City__c,
                                State: dc.State__c,
                                PostalCode: dc.Zip_Code__c
                            },
                            title: dc.Name
                        });
                    }
                }
                component.set("v.mapMarkers", markers);
                
            }
                
      });
        $A.enqueueAction(centerAction);
        
		
	}
})