public without sharing class ACFExerciseController {
    //Case Queries
    
    @AuraEnabled
    public static List<Case> getCases(){
        	return [SELECT Id, Subject, AccountId, ContactId FROM Case];
    }
    
    @AuraEnabled
    public static List<Case> getAccFilteredCases(Id relId){
        	return [SELECT Id, Subject, AccountId, ContactId FROM Case WHERE AccountId=:relId];
    }
 	@AuraEnabled
    public static List<Case> getConFilteredCases(Id relId){
        	return [SELECT Id, Subject, AccountId, ContactId FROM Case WHERE ContactId=:relId];
    }
        
    
	
    
    
    //Account Query
      @AuraEnabled
    public static List<Account> getAccounts(){
        	return [SELECT Id, Name FROM Account];
    }
	
    @AuraEnabled
    public static List<Account> getCaseFilteredAccounts(Id relId){
        	return [SELECT Id, Name FROM Account WHERE Id=:relId];
    }
 	@AuraEnabled
    public static List<Account> getConFilteredAccounts(Id relId){
        	return [SELECT Id, Name FROM Account WHERE Id=:relId];
    }    
    
    
    //Contact Query
      @AuraEnabled
    public static List<Contact> getContacts(){
        	return [SELECT Id, Name, AccountId FROM Contact];
    }
    
       @AuraEnabled
    public static List<Contact> getAccFilteredContacts(Id relId){
        	return [SELECT Id, Name, AccountId FROM Contact WHERE AccountId=:relId];
    }
 	@AuraEnabled
    public static List<Contact> getCaseFilteredContacts(Id relId){
        	return [SELECT Id, Name, AccountId FROM Contact WHERE Id=:relId];
    }    
}