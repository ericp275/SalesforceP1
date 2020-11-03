@isTest
public class GeoRESTCalloutMock implements HttpCalloutMock{

    public HttpResponse respond (HttpRequest request){
        	HttpResponse response = new HttpResponse();
        
        response.setHeader('Content-type', 'application/json');
        response.setBody('{"postalcodes":[{"adminCode2":"061","adminCode1":"NY",'+
                        '"adminName2":"New York", "lng":-73.996705,"countryCode":'+ 
                         '"Us","postalcode":"10001","adminName1":"New York", '+
                         '"placeName":"New York","lat":40.74838}]}');
        response.setStatusCode(200);
        return response;
    }    
    
}