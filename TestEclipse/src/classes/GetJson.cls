public class GetJson {
 public String data{get;set;}
    
    pageReference getData()
    {
        Attachment att = [select ID,a.ParentId,a.Name,a.Contenttype,a.body from Attachment a where ParentId='0037F00000T6XAP' limit 1];     
        Blob b = att.body;
        data = b.toString();
        return null;
    }
}