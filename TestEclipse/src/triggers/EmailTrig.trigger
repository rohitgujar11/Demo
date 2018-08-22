trigger EmailTrig on Account (after Insert,after delete) {
    if(Trigger.isInsert)
    {
        Integer count = Trigger.new.Size();
        
        EmailManager.sendMail('anil.jha@nanaostuffs.com','New Insert',count+ ' row(s) inserted');
    }
    else if(Trigger.isDelete)
    {
    } 
}