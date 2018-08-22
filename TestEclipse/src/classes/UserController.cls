public class UserController {
 
 public String userName{get;set;}
 public String password{get;set;}
 public String inputValue{get;set;}
 public List<Contact> con{get;set;}
 public Integer conSize{get;set;}
 public List<Account> acc {get;set;}
 public Integer accSize{get;set;} 
 
   public UserController() {
       con = new List<Contact>();
       con = [select ID,FirstName,LastName,Email from Contact];
       conSize = con.size(); 
       
       
       acc = new List<Account>();
       acc = [select ID,Name,Phone,OwnerId from Account];
       accSize = acc.size();
       
       System.debug('Number of Accounts********'+accSize);
   }
 
   public pageReference validateLogin(){
   
   if(ApexPages.currentPage().getCookies().get('email') != null)
   {
       String cookieVal = String.valueOf(ApexPages.currentPage().getCookies().get('email').getValue());
       System.debug('777777777777777777777'+cookieVal);
       if(cookieVal != null || cookieVal !=''){
           PageReference pageRef = new PageReference('/apex/web_dashboard?id='+cookieVal);            
           pageRef.setRedirect(true);
           return pageRef;
       }
       else{
           return null;
        }
       }
       else
       {
       return null;
       }
   }
    
   public pageReference redirectMethod()
   {
   
     List<web_user__c> uss = [select ID,login_flag__c from web_user__c WHERE Id=:ApexPages.currentPage().getParameters().get('id')] ;
     System.debug('**********************'+uss);
     if(uss.size()>0 && uss[0].login_flag__c ==1)
     {
       return null;
     } 
     else{
       PageReference pageRef = new PageReference('/apex/web_logn');
       pageRef.setRedirect(true);
       return pageRef;
         
     }
      
   }
  public pageReference login()
  {
   
     if((userName == null || userName == '') && (password == null || password == ''))
     {
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'UserName And Password Required!'));
        return null;
     }
     else if(userName == null || userName == '' || password == null || password == '')
     {
       if(userName == null || userName == '')
        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'UserName Required!'));
       else
         ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Password Required!'));
           return null;
     }
     else
     {
      List<web_user__c> user = [SELECT ID,login_flag__c FROM web_user__c WHERE User_Email__c=:userName AND password__c=:password];
      
      if(user.size()>0)
      {    
          
           Cookie cook = new Cookie('email', user[0].ID, null, -1, false);           
           Double rnd =  Math.random();
           
           user[0].login_flag__c = 1;
           user[0].login_secret__c= String.valueOf(rnd);
           update user;           
           
          
           PageReference pageRef = new PageReference('/apex/web_dashboard?id='+user[0].ID);
           pageRef.setCookies(new Cookie[]{cook});      
           pageRef.setRedirect(true);
           return pageRef;
      }
      else{
           ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Wrong Credentials!'));
           return null;
      }   
     }    
  } 
  
     public pageReference CheckLogin(){
     
           String para = Apexpages.currentPage().getParameters().get('node');           
           System.debug('*********************Anil'+para);          
           return null;
        
     }
     
     public pageReference logout(){
      System.debug('*******Logout');
      String email = String.valueOf(ApexPages.currentPage().getCookies().get('email').getValue());
      
     List<web_user__c> user1 = [SELECT ID,login_flag__c FROM web_user__c WHERE Id=:email];
     user1[0].login_flag__c = 0;
     update user1[0];
     
      Cookie cook = new Cookie('email', '',null,0,false);
      
           PageReference pageRef = new PageReference('/apex/web_logn');
           pageRef.setCookies(new Cookie[]{cook});
              pageRef.setRedirect(true);
              return pageRef;
     }
    
     public pageReference inbox()
     {
    	String cookieVal = String.valueOf(ApexPages.currentPage().getCookies().get('email').getValue());
        System.debug('777777777777777777777'+cookieVal);
        if(cookieVal != null || cookieVal !='')
        {
           PageReference pageRef = new PageReference('/apex/inbox?id='+cookieVal);            
           pageRef.setRedirect(true);
           return pageRef;
      	}
         else{
              return null;
         }
     }

}