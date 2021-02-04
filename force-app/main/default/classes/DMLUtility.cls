/* Author:Swathi Doppalapudi
   User Story 10075:Util Class for DML Operation
*/
public with sharing class DMLUtility {
    @AuraEnabled
    public static SObject insertingRecord(SObject sObjectRecord){
        insert sObjectRecord;
        return sObjectRecord;
    }
    public static list<SObject> insertingRecords(list<SObject> sObjectRecords){
        insert sObjectRecords;
        return sObjectRecords;
    }
    public static SObject updatingRecord(SObject sObjectRecord){
        update sObjectRecord;
        return sObjectRecord;
    }
    public static list<SObject> updatingRecords(list<SObject> sObjectRecords){
        update sObjectRecords;
        return sObjectRecords;
    }
}