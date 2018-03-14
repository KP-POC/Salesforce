    /*
    Using the with sharing keywords is one of the essential security measures you need to take when writing server-side controller code. 
    However, it’s a measure that’s necessary, but not sufficient. 
    In particular, you need to implement object- and field-level security (FLS) yourself.
    */
    
    @AuraEnabled
    public static List<Expense__c> getExpenses() {
        
        // Check to make sure all fields are accessible to this user
        String[] fieldsToCheck = new String[] {
            'Id', 'Name', 'Amount__c', 'Client__c', 'Date__c', 
            'Reimbursed__c', 'CreatedDate'
        };
        
        Map<String,Schema.SObjectField> fieldDescribeTokens = 
            Schema.SObjectType.Expense__c.fields.getMap();
        
        for(String field : fieldsToCheck) {
            if( ! fieldDescribeTokens.get(field).getDescribe().isAccessible()) {
                throw new System.NoAccessException();
                return null;
            }
        }
        
        // OK, they're cool, let 'em through
        return [SELECT Id, Name, Amount__c, Client__c, Date__c, 
                       Reimbursed__c, CreatedDate 
                FROM Expense__c];
    }
    
