public class CaseController {
    public String nameCase{get; set;}
    public List<Case> matchingCase{get; set;}
    public String errorMessage {get; set;}

    public void returnMatchingCases() {
        try{
            String queryString = 'SELECT Id, Priority, Contact.name FROM Case';
            String n;
            if(this.nameCase != null) {
                n = '%' + this.nameCase + '%';
                queryString += ' WHERE Contact.Name Like :n';
            }
            List<Case> cL = new List<Case>();
            cL = Database.query(queryString);
            for(Case c : cL){
                if (schema.SObjectType.Case.fields.Priority.isAccessible()){

                }else{
                    c.Priority = null;
                }
            }
            this.matchingCase = cL;
            System.debug(this.matchingCase);
        }
        catch(Exception e) {
            this.errorMessage = 'Please enter a name in the above text box';
            this.matchingCase = new List<Case>();
        }
    }

}