public class FindAndEditAccountInfoController {
                                 
    public Contact userContact {get; set;}
    public User u {get; set;}
    
    public FindAndEditAccountInfoController() {
        
        u = [Select Id, FirstName, LastName, Email
             FROM User
             WHERE FirstName = :UserInfo.getFirstName()
             AND LastName = :UserInfo.getLastName()];
        
        userContact = [SELECT Id, Name, FirstName, LastName, Birthdate, Email, Phone, MailingAddress
            		   FROM Contact
            		   WHERE Email = :u.Email];
    }
    
    public PageReference updateContact() {
        u.FirstName = userContact.FirstName;
        u.LastName = userContact.LastName;
        update userContact;
        update u;
        return null;
    }
    
}