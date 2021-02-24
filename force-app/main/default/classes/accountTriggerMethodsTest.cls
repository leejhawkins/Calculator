@isTest
public inherited sharing class accountTriggerMethodsTest {
    
    @TestSetup
    static void makeData(){
        Account acc = new Account(Name='Test Account');
        insert acc;
        Id a = [Select Id from Account where name = 'Test Account'].Id;
        Opportunity opp = new Opportunity(Name='Test Opportunity',StageName='Prospecting',CloseDate=Date.today(),AccountId=a);
        insert opp;
        
    }

    @isTest
    public static void isGoldTest(){
        Opportunity opp = [Select Id from Opportunity Limit 1];
        opp.Amount = 25000;
        update opp;
        Account a = [Select Is_Gold__c from Account where Name='Test Account'];
        System.assertEquals(true, a.Is_Gold__c);
    }
    @isTest
    public static void isGoldNotTest(){
        Opportunity opp = [Select Id from Opportunity Limit 1];
        opp.Amount = 9000;
        update opp;
        Account a = [Select Is_Gold__c from Account where Name='Test Account'];
        System.assertEquals(false, a.Is_Gold__c);
    }
}