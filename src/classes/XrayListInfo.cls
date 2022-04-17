global with sharing class XrayListInfo {
    @AuraEnabled
    global static List<Product2> xrayInfo() {
        List<Product2> result = new List<Product2>();
        result = [
                SELECT Name,
                        Family,
                        Description,
                        Equipment__c,
                        Engine__c,
                        Description__c
                FROM Product2
                WHERE Family Like 'XRAY%'

        ];
        return result;
    }
}