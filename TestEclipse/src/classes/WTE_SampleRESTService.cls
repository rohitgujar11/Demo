@RestResource (urlMapping='/test_find_contact1/*')
global class WTE_SampleRESTService {

@HttpPost
    global static void doPost(){
      String id=null;
      String name = null;
      String company = null;
      String last = null;
      String JsonResponse = '';
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String str = req.requestBody.toString();
        JSONParser parser = JSON.createParser(str);//.replaceAll('\n','').replaceAll('\r',''));
       
        while(parser.nextToken() != null) {
        
        if(parser.getCurrentToken() == JSONToken.FIELD_NAME &&  parser.getText() == 'id'){
           parser.nextToken();
          id = parser.getText();
        }
         if(parser.getCurrentToken() == JSONToken.FIELD_NAME &&  parser.getText() == 'name'){
           parser.nextToken();
           name = parser.getText();
        }
        if(parser.getCurrentToken() == JSONToken.FIELD_NAME &&  parser.getText() == 'company'){
          parser.nextToken();
          company = parser.getText();
        }
         if(parser.getCurrentToken() == JSONToken.FIELD_NAME &&  parser.getText() == 'last'){
          parser.nextToken();
          last = parser.getText();
        }
      }
        
       /* Employee__c emp = new Employee__c();
        emp.EmailAdd__c = id;
        emp.FirstName__c= name;
        emp.LastName__c = last;
       
        insert emp;
        
        List<Employee__c> str2 = [select EmailAdd__c,FirstName__c,LastName__c from Employee__c where EmailAdd__c=:id];
        
             jsonResponse = Json.serialize(str2);
            res.responseBody = blob.valueOf(jsonResponse); */
        }
    }