public class CIBILWrapper {

    public class ScoreList {
        public String reasonCode2;
        public String score;
        public String reasonCode1;
        public String scoreCardVersion;
        public String scoreDate;
        public String scoreName;
        public String scoreCardName;
        
        
    }

    public Integer ACKNOWLEDGEMENTID;
    public HEADERR HEADERR;
    public String STATUS;
    public List<FINISHED> FINISHED;

    public class JSONRESPONSEOBJECT {
        public List<AddressList> addressList;
        public List<EnquiryList> enquiryList;
        public List<AccountList> accountList;
        public List<PhoneList> phoneList;
        public Name name;
        public List<IdList> idList;
        public List<EmploymentList> employmentList;
        public Header header;
        public List<ScoreList> scoreList;
    }

    public class EmploymentList {
        public String income;
        public String dateReported;
        public String accountType;
        public String netGrossIndicator;
        public String occupationCode;
        public String monthlyAnnuallyIndicator;
    }

    public class FINISHED {
        public JSONRESPONSEOBJECT JSONRESPONSEOBJECT;
        public String BUREAU;
        public Integer TRACKINGID;
        public String ENCODEDSTRING;
        public String PRODUCT;
        public String STATUS;
    }

    public class AccountList {
        public String paymentHistoryEndDate;
        public String highCreditOrSanctionedAmount;
        public String dateReportedAndCertified;
        public String creditLimit;
        public String accountType;
        public String ownershipIndicator;
        public String dateOfLastPayment;
        public String currentBalance;
        public String paymentHistoryStartDate;
        public String paymentHistory1;
        public String paymentFrequence;
        public String reportingMemberShortName;
        public String dateOpenedOrDisbursed;
        public String emiAmount;
        public String repaymentTenure;
        public String rateOfInterest;
        public String actualPaymentAmount;
        public String cashLimit;
        public String dateClosed;
        public String paymentHistory2;
    }

    public class IdList {
        public String idType;
        public String idValue;
        public String enrichedThroughtEnquiry;
    }

    public class Name {
        public String name3;
        public String dob;
        public String gender;
        public String name1;
        public String name2;
    }

    public class EnquiryList {
        public String dateReported;
        public String enquiryPurpose;
        public String enquiryAmount;
        public String reportingMemberShortName;
    }

    public class Header {
        public String dateProceed;
        public String subjectReturnCode;
        public String memberReferenceNumber;
        public String enquiryControlNumber;
        public String enquiryMemberUserID;
        public String timeProceed;
        public String version;
    }

    public class PhoneList {
        public String telephoneNumber;
        public String telephoneType;
        public String enrichEnquiryForPhone;
    }

    public class HEADERR {
        public String APPLICATIONID;
        public String RESPONSETYPE;
        public String CUSTID;
        public String REQUESTRECEIVEDTIME;
    }

    public class AddressList {
        public String pinCode;
        public String dateReported;
        public String stateCode;
        public String addressLine4;
        public String addressLine3;
        public String addressCategory;
        public String addressLine2;
        public String addressLine1;
        public String addressLine5;
    }

    
   /* public static CIBILWrapper parse(String json) {
        return (CIBILWrapper) System.JSON.deserialize(json, CIBILWrapper.class);
    }*/
}