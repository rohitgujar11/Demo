@RestResource (urlMapping='/apiLegal/*')
global class LegalApi
{
   @HttpPost
   global static void doPost()
   {
       RestRequest req = RestContext.request;
       RestResponse res = RestContext.response;
       
       String str = req.requestBody.toString();
       String email = null;
       String fname = null;
       String lname = null;
       String phone = null;
       String jsonresponse  = null;
       
       JSONParser parser = JSON.createParser(str);
       
       while(parser.nextToken()!=null)
       {
          if(parser.nextToken() == JSONToken.FIELD_NAME && parser.getText() == 'email')
          {
              parser.nextToken();
              email = parser.getText();
          }
          if(parser.nextToken() == JSONToken.FIELD_NAME && parser.getText() == 'fname')
          {
              parser.nextToken();
              fname = parser.getText();
              
          }
          if(parser.nextToken() == JSONToken.FIELD_NAME && parser.getText() == 'lname')
          {
              parser.nextToken();
              lname = parser.getText();
          }
          if(parser.nextToken() == JSONToken.FIELD_NAME && parser.getText() == 'phone')
          {
             parser.nextToken();
             phone = parser.getText();             
          }
       }
       
      List<Employee__c> emp = [select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c where Email__c=:email];
     List<Contact> cont = new List<Contact>();
     List<Contact> c = new List<Contact>();
     for(Employee__c emp1 : emp )
     {
        Contact con = new Contact();
        con.FirstName = emp1.First_Name__c;
        con.LastName  = emp1.Last_Name__c;
        con.MobilePhone = emp1.Phone_Number__c;
       
       insert con; 
    // attributes
     Contact con1 = new Contact();
     con1 = [select id from Contact where id =: con.id];
      c.add(con1);
     
        
     }
    res.statusCode = 200;
    jsonresponse = JSON.serialize(c);
            res.responseBody = blob.valueof(jsonresponse);
    
   }
   
   
    @HttpGet
    global static void doGet()
    {
          RestRequest req1 = RestContext.request;
          RestResponse res1 = RestContext.response;
          
          String em = req1.params.get('email');
          String na = req1.params.get('name');
          String jsonRes = null;
          
          List<Employee__c> emp1 = [select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c where First_Name__c=:na];
          
          jsonRes = JSON.serialize(emp1);
          res1.responseBody = blob.valueOf(jsonRes);
    }
}