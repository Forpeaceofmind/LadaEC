global with sharing class NivaListInfo {
    @AuraEnabled
    global static List<Product2> nivaInfo() {
        List<Product2> result = new List<Product2>();
        result = [
                SELECT Name,
                        Family,
                        Description,
                        Equipment__c,
                        Engine__c
                FROM Product2
                WHERE Family Like 'Niva%'
        ];
        return result;
    }
}