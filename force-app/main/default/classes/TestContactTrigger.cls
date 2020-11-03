@isTest
public class TestContactTrigger {
@isTest
    static void addAccount(){
        
        contact c = new Contact(firstname='Rodolfo', lastname='Mauricio', mailingcity='seattle', mailingstreet='805 23rd ave E', mailingstate ='WA');
        account a = new Account(name='Rodolfo Mauricio', shippingcity='seattle', shippingstreet='805 23rd ave E', shippingstate ='WA');
 
        
        database.insert(a,false);
        
        test.starttest();
        database.SaveResult result = database.insert(c, false);
        test.stopTest();
        
        system.assert(result.isSuccess());
            
        
}
}