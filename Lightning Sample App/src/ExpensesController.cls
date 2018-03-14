public with sharing class ExpensesController {
    // query for and receive expenses data from Salesforce
    @AuraEnabled
    public static List<Expense__c> getExpenses() {
        return [SELECT Id, Name, Amount__c, Client__c, Date__c, 
                       Reimbursed__c, CreatedDate 
                FROM Expense__c];
    }
}
