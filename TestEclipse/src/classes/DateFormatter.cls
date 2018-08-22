public class DateFormatter
    {

      public String convertDate(String dateVal)
      {       
            String newStr='';
            List<String> lstStr = new List<String>();
            Integer j = 0;
            Integer lengthToTrim = 2;        
            while (j<dateVal.length())
            {
               newStr = dateVal.mid(j,lengthToTrim);
               lstStr.add(newStr);
               j = j + lengthToTrim;
            } 
            
            String.join(lstStr, '/');
            //System.debug('lstStr=' + lstStr);
            return lstStr[0] ;
      }
     /* public String convertMonth(String dateVal)
      {}*/
    }