@RestResource(urlMapping='/Contact_api/*')

global class RestAPI_Contact
{

@HttpGet
    global static void doGet()
    {
          RestRequest req1 = RestContext.request;
          RestResponse res1 = RestContext.response;
          
          String em = req1.params.get('email');
          
          String jsonRes = null;
          
          List<Contact> emp1 = [select FirstName,LastName,Email from Contact where Email=:em];
          String name = req1.params.get('name');
          String lname = req1.params.get('lname');
          String phone = req1.params.get('phone');
         
            if(emp1.size()>0)
            {
              
               
               
               emp1[0].FirstName = name;
               emp1[0].LastName = lname;
               emp1[0].MobilePhone= phone;
               
               
               update emp1; 
               res1.responseBody = blob.valueOf('Updated Successfully!');
            }
            else
            {
                Contact con = new Contact();
                con.Email = em;
                con.FirstName = name;
                con.LastName  = lname;
                con.MobilePhone = phone;
                
                insert con;
                 res1.responseBody = blob.valueOf('Created Successfully!');
            }
}
 }