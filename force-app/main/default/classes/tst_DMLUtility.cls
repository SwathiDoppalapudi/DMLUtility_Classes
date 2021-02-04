@isTest
public class tst_DMLUtility {
    @isTest
    static void testInsertAndUpdateRecord(){
        Test.startTest();
        /*Testing while inserting sObjectRecord*/
        Account acc = TestDataFactory.createAccount();
        Sobject sObj = DMLUtility.insertingRecord(acc);
        Account insertedAcc = (Account) sObj;
        system.assertEquals('Test1',insertedAcc.Name);
        /*Testing while Updating sObjectRecord*/
        insertedAcc.Name = 'updatedAcc';
        Sobject sObj1 = DMLUtility.updatingRecord(insertedAcc);
        system.assertEquals('updatedAcc',insertedAcc.Name);
        Test.stopTest();
     }
    @isTest
    static void testInsertAndUpdateRecords(){
        Test.startTest();
        /*Testing while inserting list of sObjectRecords*/
        Account acc = TestDataFactory.createAccount();
        list<Account> accList = new list<Account>{acc};
        list<Sobject> sObjLst = DMLUtility.insertingRecords(accList);
        list<Account> insertedAcc = (list<Account>) sObjLst;
        system.assertEquals('Test1', insertedAcc[0].Name);
        
        /*Testing while updating list of sobjectRecords */
        insertedAcc[0].Name = 'updatedAcc';
        list<Sobject> sObj1 = DMLUtility.updatingRecords(insertedAcc);
        system.assertEquals('updatedAcc',insertedAcc[0].Name);
        Test.stopTest();
    }
}