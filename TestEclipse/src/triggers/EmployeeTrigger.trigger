trigger EmployeeTrigger on Employee__c (after insert) {
   /* String id = null;
    String to = null;
    if(trigger.isAfter && trigger.isInsert){
        System.debug('new list--->>>'+trigger.new);
        for(Employee__c emp: trigger.new)
        {
        id = emp.Id;
        to = emp.Email__c;
        }
        EmailTemplate templateId = [Select id from EmailTemplate where developerName= 'test_Demo' limit 1];          
        Contact con = [Select id from Contact Limit 1];
        List<Messaging.SingleEmailMessage> allmsg = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setTemplateID(templateId.Id); 
        mail.toAddresses = new String[] { to, to };
        mail.setTargetObjectId(con.id);
        mail.setSaveAsActivity(false);
        mail.setWhatId(id);
        system.debug('Mailllllllllll'+ mail);
        allmsg.add(mail);
        Messaging.SendEmailResult[] resultMail = Messaging.sendEmail(allmsg,false);
        System.debug('resultMail -->>>'+resultMail );
    }*/
}