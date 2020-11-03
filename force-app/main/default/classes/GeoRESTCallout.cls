public class GeoRESTCallout {
    public static String postalCheck(String city, String zipcode){
        Http http = new http();
        httpRequest request = new HttpRequest();
        
        request.setEndpoint('http://api.geonames.org/postalCodeLookupJSON?postalcode=%27+zipcode+%27&country=US&username=hayhujac');
		request.setMethod('GET');
        HttpResponse response= http.send(request);
        
        if(response.getstatusCode() == 200){
            	Map<String, Object> respMap = (Map<String, Object>) JSON.deserializeUntyped(response.getbody());
        		List<Object> postalCodeList = (List<Object>) respMap.get('postalcodes');
            	Map<String, Object> postalCodeMap = (Map<String, Object>) postalCodeList[0];
       		
            If (postalCodeMap.get('placeName')==city){
                	return 'The Zipcode: ' + zipcode + ' is in ' + city;
            } else {
                return 'The Zipcode: ' + zipcode + 'is not in ' + city;
            }	
        }
        return 'error';
    }

}