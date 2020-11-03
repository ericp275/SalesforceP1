public class DistributionCenterMap_Controller{
    @AuraEnabled
    public static List<Distribution_Center__c> getCenters(){
        return [SELECT Name, City__c, State__c, Zip_Code__c FROM Distribution_Center__c];	
    }
}