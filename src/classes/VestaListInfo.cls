global with sharing class VestaListInfo {
    @AuraEnabled
    global static List<Product2> vestaInfo() {
        List<Product2> result = new List<Product2>();
        result = [
                SELECT Name,
                        Family,
                        Description,
                        Equipment__c,
                        Engine__c,
                        Description__c
                FROM Product2
                WHERE Family Like 'Vesta%'
        ];
        return result;
    }
}