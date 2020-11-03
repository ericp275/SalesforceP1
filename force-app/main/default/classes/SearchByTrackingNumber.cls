public class SearchByTrackingNumber {
    public List<Mail__c> mail {get; set;}
    public String trackingNumber {get; set;}
    public String errorMessage{get; set;}

    public void search(){
        try{
        	String queryString = 'SELECT Name, Id, Tracking_Number__c, Distribution_Center__c, Delivery_Status__c FROM Mail__c';
            String n;
            if(this.trackingNumber != null){
                n = this.trackingNumber;
                queryString += ' WHERE ID =:n';
            }
                
        	this.mail = Database.query(queryString);
            system.debug(this.mail);
        }catch(Exception e){
            this.errorMessage = 'Please enter a tracking number in the above text box';
            this.mail = new List<Mail__c>(); 
        }
        
    }
    public void clear() {
        mail.clear();
    }

}