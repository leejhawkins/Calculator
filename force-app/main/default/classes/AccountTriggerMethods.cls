public inherited sharing class AccountTriggerMethods {
    public static void checkIsgold(List<Account> acc){

        for (Account a:acc){
            a.Is_Gold__c = a.Total_Opportunities_Amount__c > 20000;
        }
    }
}
