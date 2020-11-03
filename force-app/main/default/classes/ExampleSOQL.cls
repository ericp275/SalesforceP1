public class ExampleSOQL {
    public static void ExampleSOQLQueries(){
        	list<Distribution_Center__c> distributionCenters= [SELECT name, Current_Number_of_Vehicles__c,
                                                               States_Covered__c
                                                              FROM Distribution_Center__c WHERE 
                                                               Current_Number_of_Vehicles__c>5 ];
    
        for(Distribution_Center__c temp: distributionCenters){
            system.debug(temp);
        }
        
      //  List<Vehicle_Schedule__c>  vehicleSchedules =[SELECT Vehicle__r.Number_of_Packages__c,
      //  							 Distribution_Center__r.name  FROM Vehicle_Schedule__c];
      // for(Vehicle_Schedule__c temp: vehicleSchedules){
      //    system.debug(temp);
   	  //	}
        
        List<AggregateResult> centerPackages =[SELECT SUM(Vehicle__r.Number_of_Packages__c)totalPackages , Distribution_Center__r.name
                                               FROM Vehicle_Schedule__c
                                              GROUP BY Distribution_Center__r.name];
      	for(AggregateResult cp: centerPackages){
    	    system.debug(cp);
   	  		}
        
        // FINISH EXERCISE 3
        // 
        try{
            Vehicle__c vehicle = [SELECT Name, Number_of_Packages__c,
                              Last_Departure__c FROM vehicle__c
                              WHERE Last_Departure__c= LAST_MONTH limit 1];
        }catch(system.QueryException qe){
            System.debug(qe.getMessage());
        }
}
}