public class JSONDeserialize {
    public InvoiceWrapper wrapper {
        get;
        set;
    }

    public void deserialize() {
       String pId = ApexPages.currentPage().getParameters().get('id');
       Attachment att = [select ID,a.ParentId,a.Name,a.Contenttype,a.body from Attachment a where ParentId='0037F00000KWSI2' limit 1];
     
      Blob b = att.body;
      //String data = b.toString();
      
      String data = '{"invoiceList":[{"totalPrice": 5.5,"statementDate": "2011-10-04T16:58:54.858Z","lineItems":[{"UnitPrice":1,"Quantity":5,"ProductName":"Pencil"},{"UnitPrice":0.5,"Quantity": 1,"ProductName":"Eraser"}],"invoiceNumber":1},{"totalPrice": 11.5,"statementDate":"2011-10-04T16:58:54.858Z","lineItems":[{"UnitPrice":6,"Quantity":1,"ProductName":"Notebook"},{"UnitPrice":2.5,"Quantity":1,"ProductName":"Ruler"},{"UnitPrice":1.5,"Quantity":2,"ProductName":"Pen"}],"invoiceNumber":2}]}';

      wrapper = (InvoiceWrapper) JSON.deserializeStrict(data, InvoiceWrapper.class);
    }
}