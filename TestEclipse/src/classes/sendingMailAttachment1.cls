public class sendingMailAttachment1 {

    public String cmail { get; set; }

    public String name { get; set; }
   
    public sendingMailAttachment1 (){}
    public pagereference Submit(){
    
    contact Conval=new contact();
    conval.lastname=name;
    conval.Email=cmail ;
    insert conval;
    
        ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.info, 'contact inserted');
        ApexPages.addMessage(myMsg); 
        
        
        
        // Reference the attachment page and pass in the  ID
        //PageReference pdf =  Page.emailAttachmentEx1;
        PageReference pdf =  Page.Employee_record1; 
       //pdf.getParameters().put('id',Conval);
        // Take the PDF content
        Blob b = pdf.getContentAsPDF();
        // Create the email attachment
        Messaging.EmailFileAttachment efa = new Messaging.EmailFileAttachment();
        efa.setContentType('application/pdf');
        efa.setFileName('attachment.pdf');
        efa.setInline(false);
        efa.setBody(b);
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {conval.Email};
        mail.setToAddresses(toAddresses);
        mail.setSubject('New contact is created'); 
        
        mail.plainTextBody = 'Name : '+conval.lastname+'\n'+'Mail Id : '+conval.email;
        
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] {efa});
        Messaging.SendEmail(new Messaging.SingleEmailMessage[] {mail});
        return null;
    }
    
}