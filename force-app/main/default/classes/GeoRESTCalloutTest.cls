@isTest
public class GeoRESTCalloutTest {
    
    @isTest
    static void testInterfaceMock(){
        	test.setMock(HttpCalloutMock.class, new GeoRESTCalloutMock());
        	String testInfo = GeoRESTCallout.postalCheck('New York', '10001');
        	System.assertEquals('The Zipcode: 10001 is in New York', testInfo);
    }

}