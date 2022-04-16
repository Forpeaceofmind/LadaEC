global with sharing class MapContoller {
    @AuraEnabled
    global static List<Lada_Center__c> infoForMap() {
        List<Lada_Center__c> ladaList = new List<Lada_Center__c>();
        ladaList = [
                SELECT Name,
                        Sales_Department_Phone__c,
                        Service_Department_Phone__c,
                        Address__c,
                        Working_Hours__c,
                        Longitude__c
                FROM Lada_Center__c
        ];
        return ladaList;
    }
}