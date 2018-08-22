public class Employee{

  public list<Employee__c> result{get;set;}
  public Employee__c t {get;set;}
  public Employee__c s {get;set;}
  public Employee__c search {get;set;}
  public string record_id;
  public string update_id;
  Public string paramValue{get;set;}
  Public string paramVal{get;set;}
  public boolean displayPopup {get; set;}
  public string searchstring {get;set;}
  
  public Employee()
  {
      result = [select id,First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c];
      t = new Employee__c();
  }
  
  public void saveValue()
  {
      insert t;
      if(t.Email__c !=null || t.Email__c!='')
      {    
          
            /*
            Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
            message.toAddresses = new String[] { t.Email__c, t.Email__c };
            message.optOutPolicy = 'FILTER';
            message.subject = 'Welcome to Salesforce';
            message.plainTextBody = 'ncdsf';
            Messaging.SingleEmailMessage[] messages =   new List<Messaging.SingleEmailMessage> {message};
            Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
            
            if (results[0].success) {
                System.debug('The email was sent successfully.');
            } else {
                System.debug('The email failed to send: ' + results[0].errors[0].message);
            }
          }*/
            
            EmailTemplate templateId = [Select id from EmailTemplate where developerName= 'test_Demo' limit 1];          
            Contact cont = [Select id from Contact Limit 1];
            List<Messaging.SingleEmailMessage> allmsg = new List<Messaging.SingleEmailMessage>();
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setTemplateID(templateId.Id); 
            mail.toAddresses = new String[] { t.Email__c, t.Email__c };
            mail.setTargetObjectId(cont.id);
            mail.setSaveAsActivity(false);
            mail.setWhatId(t.id);
            system.debug('Mailllllllllll'+ mail);
            allmsg.add(mail);
            Messaging.SendEmailResult[] resultMail = Messaging.sendEmail(allmsg,false);
            System.debug('resultMail -->>>'+resultMail );
            result = [select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c];
        }
  }
  
  public void updateRecord()
  {
    
     update result ;
     result = [select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c];
  }
  
  
  public void deleteRecord()
  {
        System.debug('aaaaaaaaaaaaaaaathis.paramValue-->>'+paramValue);
        record_id = this.paramValue;
        t = new Employee__c(Id=record_id);
        delete t;
        result = [select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c];
  }
  
   public void closePopup() {
        displayPopup = false;
    }

    public void showPopup() {
        displayPopup = true;
    }
    
    public void search(){
        string searchquery='select First_Name__c,Last_Name__c,Email__c,Phone_Number__c from Employee__c where First_Name__c like \'%'+searchstring+'%\' OR Last_Name__c like \'%'+searchstring+'%\' OR Email__c like \'%'+searchstring+'%\' OR Phone_Number__c like \'%'+searchstring+'%\' limit 20';
        result= Database.query(searchquery);
     }
}