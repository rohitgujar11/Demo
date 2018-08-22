@RestResource(urlMapping='/search/*')
global class ContactAndLeadSearch
{
  @HttpPost
  global static List<List<SObject>> searchContactsAndLeads()
  {
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    String lname = null;
    String jsonResponse  = null;
    
    String str = req.requestBody.toString();
    JSONParser parser = JSON.createParser(str);    
      while(parser.nextToken() != null) {
        
        if(parser.getCurrentToken() == JSONToken.FIELD_NAME &&  parser.getText() == 'lname'){
          parser.nextToken();
          lname = parser.getText();
        }
      }
    
    List<List<sObject>> searchList = [FIND :lname IN ALL FIELDS 
                   RETURNING Contact(LastName,FirstName,Phone),Lead(LastName,Company),Account(Name)];
    
     jsonResponse = Json.serialize(searchList);
     res.responseBody = blob.valueOf(jsonResponse);
    return searchList;
    
  }

}