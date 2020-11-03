public class ContactTriggerHandler {
    public static void RelateAccount (List<Contact> newContact){
          List<Account> allOfThem = [select Name, Shippingcity, shippingstreet, shippingstate,id FROM account];
        	
        for(Contact m: newContact){
                for(Account acc: allOfThem){
                    if(acc.Name==(m.firstname+ ' ' + m.LastName)&& m.mailingcity==acc.shippingcity && m.mailingstreet==acc.shippingstreet && m.mailingstate==acc.shippingstate){
                        m.accountid=acc.id;
                    }
                }
                
            }
            }
        
        }