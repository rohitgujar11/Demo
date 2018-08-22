public class GetValue
{

    public string user_id{get;set;}
    public list<Test__c> result {get;set;}
    Public Test__c t {get;set;}
    public String GetValue { get; set; }

    public GetValue() {
    result  = [select First_Name__c,Last_Name__c,Gender__c,Phone_Number__c from Test__c];
         t = new Test__c();
    }
   
    /*public GetValue()
    {
       // Test__c t = new Test__c();
       // List<Test__c> t =[select First_Name__c from Test__c where id=:user_id];
       // result = t.First_Name__c;
       
      
       //update result;
   
       system.debug('+++'+result);
    }*/
    public void SaveValue()
    {
         insert t;
         result  = [select First_Name__c,Last_Name__c,Gender__c,Phone_Number__c from Test__c];  
        
    }
}