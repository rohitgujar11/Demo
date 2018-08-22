public class TrainCon {
    public List<Contact> con{get;set;}
    public Contact t{get;set;}
    public String FirstName{get;set;}
    public String LastName{get;set;}
    public String Email{get;set;} 
    public String paramValue{get;set;}
    public String record_id{get;set;}
    public TrainCon()
    {
        con = new List<Contact>();        
        con = [select Id,FirstName,LastName,Email,Phone from Contact];
        t = new Contact();
    }
    
    
    public void saveContact()
    {
        upsert t ;
        con = [select Id,FirstName,LastName,Email,Phone from Contact];
    }
    
      public void deleteRecord()
  {
       
        record_id = this.paramValue;
        t = new Contact(Id=record_id);
        delete t;
        con = [select FirstName,LastName,Email,Phone from Contact];
  }
    
}