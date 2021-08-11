@isTest
public class PositionTrigger_Test {

    @isTest
    static void testmethod1() {
        Position__c p = new Position__c(Name = 'Manager',
                                       	Start_Date__c = date.today().addMonths(3)
                                        );
        
        Test.startTest();
        insert p;
        Test.stopTest();
        
        Position__c result = [SELECT Status__c, Sub_Status__c, Priority__c FROM Position__c LIMIT 1];
        
        System.assertEquals(result.Status__c, 'New');
        System.assertEquals(result.Sub_Status__c, 'Pending');
		System.assertEquals(result.Priority__c, 'Low');
    }
}