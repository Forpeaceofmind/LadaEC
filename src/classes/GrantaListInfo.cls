global with sharing class GrantaListInfo {
    @AuraEnabled
    global static List<Product2> grantaInfo() {
        List<Product2> result = new List<Product2>();
        result = [
                SELECT Name,
                        Family,
                        Description,
                        Equipment__c,
                        Engine__c,
                        Description__c
                FROM Product2
                WHERE Family Like 'Granta%'
                LIMIT 5
        ];
        return result;
    }
}