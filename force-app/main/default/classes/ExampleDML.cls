public class ExampleDML {
    public static void ExampleDMLInsert(){
     	Vehicle__c memphisVan = new Vehicle__c();
        Distribution_Center__c memphisCenter = new Distribution_Center__c(name='Memphis Distribution Center',
                                                                          city__c='Memphis',Max_Number_of_Vehicles__c=25, State__c='TN',
                                                                          States_Covered__c='AR;MS;TN', Street__c='3460 Poplar Ave',
                                                                          Zip_Code__c='38111');
        Distribution_Center__c dallasCenter = new Distribution_Center__c(name='Dallas Distribution Center',
                                                                          city__c='Dallas',Max_Number_of_Vehicles__c=20, State__c='TX',
                                                                          States_Covered__c='OK;TX', Street__c='39579 Lyndon B Johnson Freeway',
                                                                          Zip_Code__c='75237');
		insert memphisVan;
        insert memphisCenter;
        Insert dallasCenter;
        
        list<vehicle_schedule__c> vSchedules = new list<vehicle_schedule__c>();
        
        vSchedules.add(new vehicle_schedule__c(Distribution_Center__c=memphisCenter.Id,
                                               name='Memphis Schedule One', Vehicle__c=memphisVan.Id));
        
        vSchedules.add(new vehicle_schedule__c(Distribution_Center__c=dallasCenter.Id,
                                               name='Dallas Schedule One'));
        
        //insert vSchedules;
        
        List<database.saveresult> lsr = database.insert(vSchedules, false);
        
        
    }
}