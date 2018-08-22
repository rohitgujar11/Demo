@RestResource(urlMapping='/test_rest_api/*')
global class RestTestController {
    @HttpPost
    global static void getTestAccount() { 
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        res.addHeader('Content-Type', 'application/json');
        String jsonResponse = '';
        system.debug('dfskgdsfhksdhkfhksdfkjsd'+req.RequestBody.toString());
        //String email= req.params.get('email');
        
        String email = req.RequestBody.toString();
        
        
        if(email== null) {
            res.statusCode = 400;
            jsonResponse = '{"response": {"status": "Failure", "message": "Missing RequiredQuery Parameter Email__c"}}';
            res.responseBody = blob.valueOf(jsonResponse);
            //return jsonResponse;
        }
 
        List<Employee__c> accounts = [SELECT First_Name__c, Last_Name__c, Email__c FROM Employee__c 
                                  WHERE Email__c =: email];

        if( accounts.isEmpty()) {
            res.statusCode = 400;
            jsonResponse = '{"response": {"status": "Failure", "message": "No account matching email was found"}}';
            res.responseBody = blob.valueOf(jsonResponse);
            //return jsonResponse;
        }
 

        try {
            res.statusCode = 200;
            jsonResponse = Json.serialize(accounts);
            res.responseBody = blob.valueOf(jsonResponse);
            //return jsonResponse;
        } catch ( Exception ex ) {
            res.statusCode = 500;
            jsonResponse = '{"response": {"status": "Failure", "message": "' + ex + '"}}';
            res.responseBody = blob.valueOf(jsonResponse);
            //return jsonResponse;
        }
    }
}