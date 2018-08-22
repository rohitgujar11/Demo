@RestResource(urlMapping='/testSectino/*')
global class TestSection 
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
        String add = null;
        String jsonresponse = null;
        
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
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText() == 'lname')
            {
                parser.nextToken();
                lname = parser.getText();
            }
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText() == 'add')
            {
                parser.nextToken();
                add = parser.getText();
            }
            if(parser.getCurrentToken() == JSONToken.FIELD_NAME && parser.getText() == 'phone')
            {
                parser.nextToken();
                phone = parser.getText();
            }
            List<Employee__c> record = [select First_Name__c,Last_Name__c,Phone_Number__c,Email__c from Employee__c where Email__c=:email];
            
            jsonresponse = JSON.serialize(record);
            res.responseBody = blob.valueof(jsonresponse);
        }
    }
}