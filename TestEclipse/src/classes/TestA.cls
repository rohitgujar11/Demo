@RestResource (urlMapping='/TestApi/*')
global class TestA
{
@HttpPost
    global static void getVal()
    {
    
        String email = null;
        String fname = null;
        String lname = null;
        String phone = null;
        String jsonResponse= null;
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String str = req.requestBody.toString();
        JSONParser parser = JSON.createParser(str);
        
        while(parser.nextToken()!=null)
        {
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText()=='email')
            {
                parser.nextToken();
                email = parser.getText();
            }
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText()=='fname')
            {
                parser.nextToken();
                fname = parser.getText();
            }
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText()=='lname')
            {
               parser.nextToken();
               lname = parser.getText();
            }
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText()=='phone')
            {
                parser.nextToken();
                phone = parser.getText();
            }
            
        }
        
        Employee__c emp = new Employee__c();
        emp.Email__c = email;
        emp.First_Name__c = fname;
        emp.Last_Name__c = lname;
        emp.Phone_Number__c= phone;
        
        insert emp;
        
        List<Employee__c> record = [select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c where Email__c=:email];
        jsonResponse = json.serialize(record);
        res.responseBody=blob.valueOf(jsonResponse);
    
    }
}