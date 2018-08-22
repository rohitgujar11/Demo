public with sharing class AttachmentBodyController {

    public String body {get; set;}   
    public Attachment attachment {get; set;}    
    
    public AttachmentBodyController(Apexpages.StandardController stdController) {
        String Id  = ApexPages.currentPage().getParameters().get('id');
        attachment =  [SELECT Id, Name, Body, ContentType FROM Attachment WHERE ParentId =:Id];
        body = EncodingUtil.base64Encode(attachment.body);
    }
}