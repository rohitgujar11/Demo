public class readFile
{    
    public CIBILWrapper wrapper {get;set;}    
    public readFile(){    
        wrapper = new CIBILWrapper();        
    }
     public String getRespnsePDF;
     public  string ContactId {get; set;}
     public  string inputJson {get; set;}
     public readFile(ApexPages.StandardController sc)
      {
        ContactId  = ApexPages.currentPage().getParameters().get('id');
      }
     
     public pageReference dmlOperation(){
         
            getRespnsePDF = '{"ACKNOWLEDGEMENT-ID":72543890,"HEADER":{"APPLICATION-ID":"App-140318-064469","RESPONSE-TYPE":"RESPONSE","CUST-ID":"AC-2017-59982","REQUEST-RECEIVED-TIME":"14032018 15:38:10"},"STATUS":"COMPLETED","FINISHED":[{"JSON-RESPONSE-OBJECT":{"addressList":[{"pinCode":"400708","dateReported":"18082017","stateCode":"27","addressLine4":"MUMBAI","addressLine3":"OFF THANE BELAPUR RD","addressCategory":"03","addressLine2":"BLDG NO 12 MINDSPACE AIROLI","addressLine1":"ACCENTURE SERVICES PVT LTD"},{"pinCode":"520010","dateReported":"23062016","stateCode":"28","addressLine4":"INDIA","addressLine3":"KRISHNA ANDHRA PRADESH","addressCategory":"01","addressLine2":"VMC PARK PATAMATA VIJAYAWADA URBAN","addressLine1":"67 9 13/1 GAFFUR BUILDING DARSI PET"},{"pinCode":"400708","dateReported":"05052016","stateCode":"27","addressLine5":"MUMBAI","addressLine3":"ROAD AIROL I E CODE 11225736 DSGN ASE","addressCategory":"01","addressLine2":"NO 12 MINDSPACE 4TH FLOOR THANE BELAPUR","addressLine1":"ACCENTURE SERVICES PRIVATE LTD BUILDING"},{"pinCode":"410210","dateReported":"05052016","stateCode":"27","addressLine3":",NR BANK OF INDIA , , , NAVI MUMBAI","addressCategory":"02","addressLine2":"PARADISE SECTOR 10 KHARGHAR NAVI MUMBIA","addressLine1":"FLAT NO 3 205 PL NO 261 262 SEA QUEEN ,"}],"enquiryList":[{"dateReported":"12032018","enquiryPurpose":"02","enquiryAmount":"1","reportingMemberShortName":"HOME FIRST"},{"dateReported":"08122017","enquiryPurpose":"02","enquiryAmount":"1","reportingMemberShortName":"HOME FIRST"},{"dateReported":"25102017","enquiryPurpose":"02","enquiryAmount":"34567","reportingMemberShortName":"HOME FIRST"},{"dateReported":"06102017","enquiryPurpose":"10","enquiryAmount":"50000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"18082017","enquiryPurpose":"05","enquiryAmount":"400000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"12082017","enquiryPurpose":"05","enquiryAmount":"100000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"17072017","enquiryPurpose":"10","enquiryAmount":"1","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"14072017","enquiryPurpose":"10","enquiryAmount":"10000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"03052017","enquiryPurpose":"10","enquiryAmount":"100000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"08122016","enquiryPurpose":"10","enquiryAmount":"15000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"09092016","enquiryPurpose":"10","enquiryAmount":"100000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"05052016","enquiryPurpose":"10","enquiryAmount":"10000","reportingMemberShortName":"NOT DISCLOSED"},{"dateReported":"11042016","enquiryPurpose":"10","enquiryAmount":"10000","reportingMemberShortName":"NOT DISCLOSED"}],"accountList":[{"paymentHistoryEndDate":"01102017","highCreditOrSanctionedAmount":"23645","dateReportedAndCertified":"28022018","creditLimit":"113000","accountType":"10","ownershipIndicator":"1","dateOfLastPayment":"12022018","currentBalance":"0","paymentHistoryStartDate":"01022018","paymentHistory1":"000000000000000","paymentFrequence":"03","reportingMemberShortName":"NOT DISCLOSED","dateOpenedOrDisbursed":"21102017"},{"emiAmount":"13334","highCreditOrSanctionedAmount":"400000","dateReportedAndCertified":"28022018","ownershipIndicator":"1","repaymentTenure":"37","currentBalance":"356225","dateOfLastPayment":"01022018","reportingMemberShortName":"NOT DISCLOSED","rateOfInterest":"12.25","paymentHistoryEndDate":"01082017","actualPaymentAmount":"13334","accountType":"05","paymentHistoryStartDate":"01022018","paymentFrequence":"03","paymentHistory1":"000000000000000000000","dateOpenedOrDisbursed":"23082017"},{"highCreditOrSanctionedAmount":"36064","dateReportedAndCertified":"17022018","cashLimit":"11300","creditLimit":"113000","ownershipIndicator":"1","dateOfLastPayment":"02022018","currentBalance":"9552","reportingMemberShortName":"NOT DISCLOSED","rateOfInterest":"37.200","paymentHistoryEndDate":"01062017","actualPaymentAmount":"17219","accountType":"10","paymentHistoryStartDate":"01022018","paymentFrequence":"03","paymentHistory1":"000000000000000000000000000","dateOpenedOrDisbursed":"03052017"},{"highCreditOrSanctionedAmount":"3603","dateReportedAndCertified":"31012018","cashLimit":"17200","creditLimit":"43000","ownershipIndicator":"1","dateOfLastPayment":"22112017","currentBalance":"222","reportingMemberShortName":"NOT DISCLOSED","rateOfInterest":"39.60","paymentHistoryEndDate":"01122016","actualPaymentAmount":"112","accountType":"10","paymentHistoryStartDate":"01012018","paymentFrequence":"03","paymentHistory1":"000000000000000000000000000000000000000000","dateOpenedOrDisbursed":"15122016"},{"paymentHistoryEndDate":"01072016","highCreditOrSanctionedAmount":"12911","dateReportedAndCertified":"10072017","accountType":"10","ownershipIndicator":"1","dateOfLastPayment":"06072017","currentBalance":"0","paymentHistoryStartDate":"01072017","dateClosed":"10072017","paymentHistory1":"000000000000000000000000000XXX000000000","reportingMemberShortName":"NOT DISCLOSED","dateOpenedOrDisbursed":"05062016"},{"paymentHistoryEndDate":"01062016","highCreditOrSanctionedAmount":"5000","dateReportedAndCertified":"10122017","creditLimit":"40000","accountType":"10","ownershipIndicator":"1","dateOfLastPayment":"02112017","currentBalance":"0","paymentHistory2":"000","paymentHistoryStartDate":"01122017","paymentHistory1":"000000000000000000000XXXXXXXXX000XXXXXXXXXXXXXXXXXX000","reportingMemberShortName":"NOT DISCLOSED","dateOpenedOrDisbursed":"02062016"}],"phoneList":[{"telephoneNumber":"43870643","telephoneType":"03","enrichEnquiryForPhone":"Y"},{"telephoneNumber":"09867920486","telephoneType":"00"},{"telephoneNumber":"9867920486","telephoneType":"01"},{"telephoneNumber":"919867920486","telephoneType":"01"}],"name":{"name3":"SAGGURTHI","dob":"08081991","gender":"2","name1":"MAHESH","name2":"SRINIVASARAO"},"idList":[{"idType":"01","idValue":"BSSPS5654K"},{"idType":"03","enrichedThroughtEnquiry":"Y","idValue":"AGZ1386374"},{"idType":"06","enrichedThroughtEnquiry":"Y","idValue":"689026585309"},{"idType":"EMAIL","idValue":"MAHESH.SAGGURTHI@ACCENTURE.COM"},{"idType":"EMAIL","idValue":"MAHESH.SAGURIHI810@GMAIL.COM"},{"idType":"EMAIL","idValue":"MAHESH.SAGGURTHI810@GMAIL.COM"}],"employmentList":[{"income":"691116","dateReported":"28022018","accountType":"05","netGrossIndicator":"G","occupationCode":"01","monthlyAnnuallyIndicator":"A"}],"header":{"dateProceed":"14032018","subjectReturnCode":"1","memberReferenceNumber":"63779963","enquiryControlNumber":"002229954530","enquiryMemberUserID":"NB67255555_CPU2CPU","timeProceed":"153805","version":"12"},"scoreList":[{"reasonCode2":"11","score":"00719","reasonCode1":"20","scoreCardVersion":"10","scoreDate":"14032018","scoreName":"CIBILTUSC2","scoreCardName":"04"}]},"BUREAU":"CIBIL","TRACKING-ID":31189331,"ENCODED STRING":"xyz","PRODUCT":"CIR","STATUS":"SUCCESS"}]}';            
            getRespnsePDF = getRespnsePDF.replace('ACKNOWLEDGEMENT-ID','ACKNOWLEDGEMENTID');
            getRespnsePDF = getRespnsePDF.replace('REQUEST-RECEIVED-TIME','REQUESTRECEIVEDTIME');
            getRespnsePDF = getRespnsePDF.replace('CUST-ID','CUSTID');
            getRespnsePDF = getRespnsePDF.replace('APPLICATION-ID','APPLICATIONID');
            getRespnsePDF = getRespnsePDF.replace('RESPONSE-FORMAT','RESPONSEFORMAT');
            getRespnsePDF = getRespnsePDF.replace('ENCODED STRING','ENCODEDSTRING');
            getRespnsePDF = getRespnsePDF.replace('TRACKING-ID','TRACKINGID');
            getRespnsePDF = getRespnsePDF.replace('HEADER','HEADERR');
            getRespnsePDF = getRespnsePDF.replace('RESPONSE-TYPE','RESPONSETYPE');            
            getRespnsePDF = getRespnsePDF.replace('JSON-RESPONSE-OBJECT','JSONRESPONSEOBJECT');
            getRespnsePDF = getRespnsePDF.replace('\r','');
            getRespnsePDF = getRespnsePDF.replace('\n','');
            getRespnsePDF = getRespnsePDF.replace('/','');
            getRespnsePDF = getRespnsePDF.replace('+','');
            
           /* Integer DPD = getMAXDPD(getRespnsePDF);*/
            Double SanctionedAmount = getSanctionAmount(getRespnsePDF);
           /* Double  CurrentBalanced = getCurrentBalance(getRespnsePDF);
            Integer EnquiryCount12 =  getEnquiryList12(getRespnsePDF);
            Integer EnquiryCount3  = getEnquiryList3(getRespnsePDF);
            Integer AccountCount05 = getAccountList05Count(getRespnsePDF);
            Integer EnquieryPurposeCount = getenquiryPurposeCount(getRespnsePDF); 
            
            ApplicationId__c applicationIdObj = new ApplicationId__c();
            applicationIdObj.Contact__c = ContactId;
            applicationIdObj.Effective_Current_Balance__c = CurrentBalanced;
            applicationIdObj.Effective_Sanction_Amount__c = SanctionedAmount;
            
            upsert applicationIdObj;*/
            
            System.debug('Responseeeee'+SanctionedAmount);           
            return null;
     
     }     
    
    
     public Integer getMAXDPD(String jsonData)
        { 
          
          wrapper = (CIBILWrapper) System.JSON.deserialize(jsonData, CIBILWrapper.class);
          Map<String,Integer> MaxMap = new Map<String,Integer>();
          List<String> maxDateList = new List<String>();
          List<Integer> maxValueList = new List<Integer>();        
          System.debug('******'+wrapper);
          for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList.size();i++)
          { 
           Map<String,Integer> paymentMap = new Map<String,Integer>();
           String EndDate = wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].paymentHistoryEndDate;
           String StartDate = wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].paymentHistoryStartDate;
           String paymentHistory = wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].paymentHistory1;
           paymentHistory = paymentHistory.reverse();
          
           Date StartD = ParsedDate(StartDate);
           Date EndD = ParsedDate(EndDate);         
           Integer Month = Date.Today().Month();
           Integer Year = Date.Today().Year() - 1;
           Integer day = EndD.day();
         
           Date last12month = Date.newInstance(Year,Month,day);
           System.debug('//////////'+EndD);          
           Integer diffMonth = EndD.monthsBetween(last12month);
           //Date 12monthday = Date.newInstance(Date.Today().Month(),Date.Today().Year());
           System.debug('//////////'+diffMonth);
           if(diffMonth > 0)
            {
                EndD = last12month;
                paymentHistory = paymentHistory.substring((diffMonth-1) * 3,paymentHistory.length());
            }          
            Set<String> monthYearSet = new Set<String>(); 
            Integer s =0 ;
            Integer e =3 ;            
            String maxDate = String.valueOf(EndD.Month())+String.valueOf(EndD.Year());
            Integer maxDay = 0;
            
            while(EndD < StartD.AddMonths(1))
            { 
              String dayS = paymentHistory.substring(s,e);
              dayS = dayS.reverse();
              System.debug('&&&&&&&&&&&&&&&'+dayS);
              Integer lateD;
              if(dayS == 'XXX' || dayS == 'STD')
              {
                lateD = 0;
              }
              else if(dayS == 'DBT' || dayS == 'LSS' || dayS == 'SMA' || dayS == 'SUB')
              {
              System.debug('&&&&&&&&&&&&&&&');
               lateD = 91;
              }
              else
              {
                lateD = Integer.valueOf(dayS);
              }
              
              if (lateD>maxDay)
              {
               maxDate = String.valueOf(EndD.Month())+String.valueOf(EndD.Year());
               maxDay = lateD;
               
              }
               paymentMap.put(String.valueOf(EndD.Month())+String.valueOf(EndD.Year()),lateD);                   
               EndD = EndD.AddMonths(1);
                 s = e;
                 e = e + 3;              
            }
            System.Debug('*****************paymentMap'+paymentMap);            
           // MaxMap.put(maxDate,maxDay);
            maxDateList.add(maxDate);
            maxValueList.add(maxDay);
            
            System.Debug('*****************Max'+maxDateList);
            System.Debug('*****************MaxV'+maxValueList);
      }   
      
      Integer maxValue = maxValueList[0];
      String maxKey = maxDateList[0];
      
      Integer i = 0;
      for(Integer dayV : maxValueList)
      {
        if(maxValue < dayV)
        {
          maxValue = dayV;
          maxKey = maxDateList[i];
        }
        i = i+1;
      }             
       // System.Debug('*****************maxKey---'+maxKey+'-'+maxValue);
       return maxValue;
     }
     
     public Double getSanctionAmount(String jsonData)
     {
          Double utilizationFactor;
          List<Double> sanctionList = new List<Double>{};
          Double getSanctionAmount;
          Double totalSanctionAmount;
          Double finalSanctionAmount;
          finalSanctionAmount = 0;
          //wrapper = wrapper.parse(jsonData);
          wrapper = (CIBILWrapper) System.JSON.deserialize(jsonData, CIBILWrapper.class);
           for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList.size();i++)
          {             
             if ((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('10') ||
                 (wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('12') ||
                 (wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('16') ||
                 (wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('31'))
                 {
                     utilizationFactor = 0.0;                     
                 }
             if((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].ownershipIndicator).equals('4'))
                 {
                    utilizationFactor = 0.5;                    
                 }
             if((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].ownershipIndicator).equals('1'))
                 {
                    utilizationFactor = 1.0;                    
                 }
             else
                 {
                   utilizationFactor = 0.0;                   
                 }
              
                    getSanctionAmount =  Double.valueOf(wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].highCreditOrSanctionedAmount);
                    totalSanctionAmount = (getSanctionAmount * utilizationFactor);
                    sanctionList.add(totalSanctionAmount); 
         }
         
         for(Double sanctionSum : sanctionList)
         {
           finalSanctionAmount = finalSanctionAmount + sanctionSum;
         }
         
         //System.debug('-------'+sanctionList);
         //System.debug('-------'+finalSanctionAmount);
         return finalSanctionAmount;
       }
       
       public Double getCurrentBalance(String jsonData)
       {
            Double utilizationFactor;
            List<Double> currentBalanceList = new List<Double>{};
            Double getCurrentBalance;
            Double totalCurrentBalance;
            Double finalCurrentBalance;
            finalCurrentBalance = 0;          
             for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList.size();i++)
              {
                    if ((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('10') ||
                     (wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('12') ||
                     (wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('16') ||
                     (wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('31'))
                     {
                         utilizationFactor = 0.0;                     
                     }
                     if((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].ownershipIndicator).equals('4'))
                     {
                        utilizationFactor = 0.5;                    
                     }
                     if((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].ownershipIndicator).equals('1'))
                     {
                        utilizationFactor = 1.0;                    
                     }
                     else
                     {
                       utilizationFactor = 0.0;                   
                     }
                   getCurrentBalance =  Double.valueOf(wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].currentBalance);
                   totalCurrentBalance = (getCurrentBalance * utilizationFactor);
                   currentBalanceList.add(totalCurrentBalance);
                  } 
                  
                  for(Double currentBal : currentBalanceList)
                 {
                   finalCurrentBalance = finalCurrentBalance + currentBal;
                 }
                 
                 //System.debug('-------'+currentBalanceList);
                 //System.debug('-------'+finalCurrentBalance);
                 return finalCurrentBalance;
            }
            
            
            public Integer getEnquiryList12(String jsonData)
        {
            
            Integer enquiryCount = 0;            
            Integer Month = Date.Today().Month();
            Integer Year = Date.Today().Year() - 1;
            Integer day = 1;         
            Date last12month = Date.newInstance(Year,Month,day);          
             for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.enquiryList.size();i++)
              {
                    Date enquiryDate = ParsedDate(wrapper.FINISHED[0].JSONRESPONSEOBJECT.enquiryList[i].dateReported);
                    if(last12month <= enquiryDate)
                    {
                      enquiryCount = enquiryCount + 1;
                    }
              } 
              //System.debug('-----EnquiryCount:'+enquiryCount);
              return enquiryCount;                  
         } 
         
         public Integer getEnquiryList3(String jsonData)
         {  
            Integer enquiryCount = 0;            
            Integer Month = Date.Today().Month();
            Integer Year = Date.Today().Year();
            Integer day = 1;
         
            Date today = Date.newInstance(Year,Month,day);
            for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.enquiryList.size();i++)
              {
                 Date enquiryDate = ParsedDate(wrapper.FINISHED[0].JSONRESPONSEOBJECT.enquiryList[i].dateReported);                   
                 Integer diffMonth = enquiryDate.monthsBetween(today);
                 //System.debug('-----diffMonth:'+diffMonth);
                 if(diffMonth <= 3)
                  {
                     enquiryCount = enquiryCount + 1;
                  } 
              } 
              //System.debug('-----EnquiryCount3:'+enquiryCount);
              return enquiryCount;                  
          } 

        public Integer getAccountList05Count(String jsonData)
        {
                
            Integer AccountCount = 0;
            
            Integer Month = Date.Today().Month();
            Integer Year = Date.Today().Year() - 1;
            Integer day = 1;
         
            Date last12month = Date.newInstance(Year,Month,day);
          
             for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList.size();i++)
              {
                   Date dateOpenedOrDisbursed = ParsedDate(wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].dateOpenedOrDisbursed);                   
                   if((wrapper.FINISHED[0].JSONRESPONSEOBJECT.accountList[i].accountType).equals('05'))
                   {
                    if(last12month <= dateOpenedOrDisbursed)
                    {
                      AccountCount = AccountCount + 1;
                    }
                   }
              } 
              //System.debug('-----AccountCount:'+AccountCount);
              return AccountCount;                  
          }      

        public Integer getenquiryPurposeCount(String jsonData)
        {            
            Integer enquiryCount = 0;           
             for(Integer i=0;i<wrapper.FINISHED[0].JSONRESPONSEOBJECT.enquiryList.size();i++)
              {                   
                   if((wrapper.FINISHED[0].JSONRESPONSEOBJECT.enquiryList[i].enquiryPurpose).equals('01'))
                    {
                      enquiryCount = enquiryCount + 1;
                    } 
              }  
              //System.debug('-----EnquiryPurpose:'+enquiryCount);
              return enquiryCount;                  
         }
        public static Date ParsedDate (String DateString) 
        {        
            String month;
            String year;
            String day;        
            day = DateString.substring(0,2);
            month = DateString.substring(2,4);
            year = DateString.substring(4,8);        
            Date mydate = Date.newInstance(integer.valueOf(year),integer.valueOf(month),integer.valueOf(day));
            return mydate;
        }  
        
    }