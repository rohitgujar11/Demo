public class CreateRequest {
    
    public String userId{get;set;}
    public String ClientId{get;set;}
    
    public CreateRequest(){
          userId = ApexPages.currentPage().getParameters().get('id');
    }
    
    public void CreateRequestForEmail(){
        String EndPoint = 'https://www.googleapis.com/gmail/v1/users/me/settings/pop';
        List<Employee__c> empList = new List<Employee__c>();
        empList = [select id from Employee__c];
        for(Employee__c emp: empList){
            
        }
        
    }
    
    public void CreateRequestForInbox(){
          
    }
    
    public void CreateRequestForDraft(){
        
    }
}