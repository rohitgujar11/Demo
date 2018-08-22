public class Signup{
 public string mm{get;set;}
 public string dd{get;set;}
 public string yy{get;set;}
 
 public Signup__c t{get;set;}
 
 
  public Signup()
  {
      t = new Signup__c();
  }
  
  public void save()
  {
  
    t.Dob__c = date.parse(mm+'/'+dd+'/'+yy);
    insert t;
  }
}