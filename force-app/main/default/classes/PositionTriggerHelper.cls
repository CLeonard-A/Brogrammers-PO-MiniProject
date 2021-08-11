public class PositionTriggerHelper {
    public static void fillBlankFields(List<Position__c> newPos) {
        List<Position__c> result = new List<Position__c>();
        if(!(newPos==null)) {
            for (Position__c p: newPos) {
                p.Status__c = 'New';
                p.Sub_Status__c = 'Pending';
                p.Priority__c = 'Low';
                p.Date_Opened__c = date.TODAY();
            }
        }
        insert result;
    }
}