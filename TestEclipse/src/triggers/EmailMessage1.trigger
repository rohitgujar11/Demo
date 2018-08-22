trigger EmailMessage1 on EmailMessage (after insert) {
    for(EmailMessage obg : Trigger.new){
        if(obg.HasAttachment){
          			 //Create list of Messageing email File Attachments
						list<Messaging.EmailFileAttachment> fileAttachments = new list<Messaging.EmailFileAttachment>();
						//Query all child Attachments relating to this email Id
						list<Attachment> allAttachmentsInEmail = [Select Name, ContentType, Body From Attachment Where parentId =:obg.id]; 
						//Add to list of Attachments to email
						system.debug('---->number of attachments: ' + allAttachmentsInEmail.size());
						for(Attachment a: allAttachmentsInEmail){
							Messaging.Emailfileattachment efa = new Messaging.Emailfileattachment();
							efa.setFileName(a.Name);
							efa.setBody(a.Body);
							fileAttachments.add(efa);
						}
        }
        else{
            System.debug('************File Not Attached@!!!!');
        }
        
        
    }
}