public class GetValue1
{

    public String getTestData() {
        return null;
    }


    //public String GetValue1 { get; set; }
    public list<Test__c> result {get;set;}
    
    public GetValue1()
    {
     result = [select First_Name__c,Last_Name__c,Gender__c,Phone_Number__c from Test__c];
    }
    
    public void testData()
    {
        String name = 'Anil';
        List<integer> testList = new List<Integer>();
        testList.add(10);
        testList.add(20);
        testList.add(30);
        
    }
}