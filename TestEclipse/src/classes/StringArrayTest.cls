public class StringArrayTest 
{
  public static List<String> generateStringArray(Integer len)
  {
    List<String> val = new List<String>();
    for(Integer i=0;i<len;i++)
    {
        val.add('Test '+i);
    }
      return val;
  }
}