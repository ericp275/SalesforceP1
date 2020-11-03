public class SOQLDataFactory {
    public static void createData(){
        List<Distribution_Center__c> dcList = new List<Distribution_Center__c>();
        dcList.add(new Distribution_Center__c(Name='Atlanta Distribution Center', Current_Number_of_Vehicles__c=10, 
                                              Max_Number_of_Vehicles__c=20, City__c='Atlanta', State__c='GA', 
                                              States_Covered__c='AL;GA', Street__c='2955 Cobb Pkwy SE', 
                                              Zip_Code__c='30339'));
        dcList.add(new Distribution_Center__c(Name='Buffalo Distribution Center', Current_Number_of_Vehicles__c=5, 
                                              Max_Number_of_Vehicles__c=15, City__c='Buffalo', State__c='NY', 
                                              States_Covered__c='NY;PA', Street__c='2141 Elmwood Ave', 
                                              Zip_Code__c='14207'));
        dcList.add(new Distribution_Center__c(Name='Champlain Distribution Center', Current_Number_of_Vehicles__c=3, 
                                              Max_Number_of_Vehicles__c=15, City__c='Champlain', State__c='NY', 
                                              States_Covered__c='NY;VT', Street__c='215 Dorset St', 
                                              Zip_Code__c='05403'));
        dcList.add(new Distribution_Center__c(Name='Chicago Distribution Center', Current_Number_of_Vehicles__c=10, 
                                              Max_Number_of_Vehicles__c=25, City__c='Chicago', State__c='IL', 
                                              States_Covered__c='IL;IN;WI', Street__c='1514 W 33rd St', 
                                              Zip_Code__c='60608'));
        dcList.add(new Distribution_Center__c(Name='Detroit Distribution Center', Current_Number_of_Vehicles__c=5, 
                                              Max_Number_of_Vehicles__c=20, City__c='Detroit', State__c='MI', 
                                              States_Covered__c='MI;OH', Street__c='29800 Southfield Rd', 
                                              Zip_Code__c='48127'));
        dcList.add(new Distribution_Center__c(Name='El Paso Distribution Center', Current_Number_of_Vehicles__c=3, 
                                              Max_Number_of_Vehicles__c=15, City__c='El Paso', State__c='TX', 
                                              States_Covered__c='NM;TX', Street__c='1842 Joe Battle Blvd', 
                                              Zip_Code__c='79936'));
        dcList.add(new Distribution_Center__c(Name='Laredo Distribution Center', Current_Number_of_Vehicles__c=3, 
                                              Max_Number_of_Vehicles__c=15, City__c='Laredo', State__c='TX', 
                                              States_Covered__c='TX', Street__c='7607 San Dario Ave', 
                                              Zip_Code__c='78045'));
        dcList.add(new Distribution_Center__c(Name='Los Angeles Distribution Center', Current_Number_of_Vehicles__c=10, 
                                              Max_Number_of_Vehicles__c=25, City__c='Los Angeles', State__c='CA', 
                                              States_Covered__c='CA', Street__c='2935 Los Feliz Blvd', 
                                              Zip_Code__c='90039'));
        dcList.add(new Distribution_Center__c(Name='San Diego Distribution Center', Current_Number_of_Vehicles__c=3, 
                                              Max_Number_of_Vehicles__c=20, City__c='San Diego', State__c='CA', 
                                              States_Covered__c='CA', Street__c='4251 Genesee Ave', 
                                              Zip_Code__c='92117'));
        dcList.add(new Distribution_Center__c(Name='Seattle Distribution Center', Current_Number_of_Vehicles__c=3, 
                                              Max_Number_of_Vehicles__c=20, City__c='Seattle', State__c='WA', 
                                              States_Covered__c='WA', Street__c='15600 NE 8th St', 
                                              Zip_Code__c='98101'));
        insert dcList;
        
        List<Vehicle__c> vList = new List<Vehicle__c>();
        Integer numPackages = 0;
        Date departDate;
        for(Integer i = 0; i < 55; i++){
            numPackages = Integer.valueOf(Math.floor(Math.random() * 20));
            departDate = Date.today().addDays(-Integer.valueOf(Math.ceil(Math.random() * 7)));
            vList.add(new Vehicle__c(Name='VAN-000' + i, Last_Departure__c=departDate, 
                                     Number_of_Packages__c=numPackages));
        }
        insert vList;
        
        List<Vehicle_Schedule__c> vsList = new List<Vehicle_Schedule__c>();
        for(Integer i = 0; i < 55; i++){
            if(i < 10){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[0].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 15){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[1].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 18){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[2].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 28){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[3].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 33){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[4].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 36){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[5].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 39){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[6].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 49){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[7].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else if(i < 52){
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[8].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
            else{
                vsList.add(new Vehicle_Schedule__c(Name='VS-000' + i, Distribution_Center__c=dcList[9].Id, 
                                                   Vehicle__c=vList[i].Id));
            }
        }
        insert vsList;
    }
}