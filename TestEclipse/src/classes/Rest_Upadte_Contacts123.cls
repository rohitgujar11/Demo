@RestResource(urlMapping='/update_Contact2/*')
global class Rest_Upadte_Contacts123
{

 @HttpGet
 global static void doget()
 {
   string emailId = null;
   string fname = null;
   string lname = null;
   
   
   string jsonResponse = null;
   
   RestRequest req = RestContext.request;
   RestResponse res = RestContext.response;
   
   emailId = req.params.get('email');
   fname = req.params.get('fname');
   lname = req.params.get('lname');
   
    system.debug('*********************'+req.params.get('email'));
    
  

   Contact contObj = new Contact(
                         FirstName=fname,
                         LastName=lname,  
                         Email=emailId);
                         
    system.debug('*********************'+contObj);

    upsert contObj Contact.fields.Email;
   
  
 }

}