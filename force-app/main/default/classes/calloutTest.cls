public class calloutTest{

    public String callOutTestando(String url){
    Http http=new Http();
    HttpRequest rec = new HttpRequest();
	rec.setEndpoint(url);
    rec.setMethod('GET');
    HttpResponse resp = http.send(rec);
    return rec.getBody();
        
    
    
}
}