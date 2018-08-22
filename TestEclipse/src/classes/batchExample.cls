global class batchExample implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext BC) { 
        Account lst = [SELECT Id,ownerId,Name FROM Account limit 1];//new List<Account>();       
        return Database.getQueryLocator([SELECT Id,ownerId,Name FROM Account limit 1]);
    }
     
    global void execute(Database.BatchableContext BC, List<Account> accList) {
      System.debug('****'+accList);
       List<Contact> lList = new List<Contact>();
        
       for(Integer i = 0; i<5000; i++){
    	Contact con = new Contact(FirstName='Anil',LastName='Jha'+i);
   
    		lList.add(con);
           // System.debug('Listtttttttt'+lList);
		}
        try {            
             insert lList;
             //System.debug('Listtttttttt'+lList);
         
        } catch(Exception e) {
            System.debug(e);
        }
         
    }   
     
    global void finish(Database.BatchableContext BC) {
      
  }
}