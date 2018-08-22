public class MailManager {
    
    public MailManager()
    {
        sendMail();
    }
    
    public static void sendMail()
    {
      String body = 'Test';
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
      String[] toAddress = new String[] {'anil.jha@nanostuffs.com'};
      mail.setToAddresses(toAddress);
      mail.setSubject('Test Subject');
      mail.setPlainTextBody(body);
      Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                 new Messaging.SingleEmailMessage[] { mail });
    }
    
    public static void checkMail()
    {
        String body = 'New Test';
        Messaging.SingleEmailMessage maill = new Messaging.SingleEmailMessage();
        
    }    
       

}