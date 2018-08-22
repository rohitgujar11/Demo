public class selectedSizeWorkaround1 {

    ApexPages.StandardSetController setCon;

    public selectedSizeWorkaround1(ApexPages.StandardSetController controller) {
        setCon = controller;
    }

    public integer getMySelectedSize() {
        return setCon.getSelected().size();
    }
    public integer getMyRecordsSize() {
        return setCon.getRecords().size();
    }
}