@RestResource(urlMapping='/update_Contact/*')
global class Rest_Upadte_Contacts
{
 @HttpGet
 global static void doget()
 {
   string emailId = null;
   string fname = null;
   string lname = null;  
   String mobile = null;
   String phone  = null;
   String account = null;
   
   string jsonResponse = null;   
   RestRequest req = RestContext.request;
   RestResponse res = RestContext.response;
   
   emailId = req.params.get('email');
   fname = req.params.get('fname');
   lname = req.params.get('lname');
   mobile = req.params.get('mobile');
   phone  = req.params.get('phone');
   account = req.params.get('account');
   
   Account acc = new Account();
   List<Account> det = [select Id,Name from Account where Name=:account];
    
           Contact contObj = new Contact(
                         FirstName=fname,
                         LastName=lname,  
                         Email=emailId,
                         MobilePhone=mobile,
                         Phone=phone);
             upsert contObj Contact.fields.Email;
             res.responseBody = blob.valueOf('Operation Performed!');
           
    
 }
}