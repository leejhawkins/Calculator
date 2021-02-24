public inherited sharing class LeadTriggerUtility {
    public static void keyFields(List<Lead> leads){
        List<Task> tasks = new List<Task>();
        for(Lead l:leads){
            Integer keyFields = 0;
            keyFields = l.FirstName != null ? keyFields+1: keyFields;
            keyFields = l.LastName != null ? keyFields+1: keyFields;
            keyFields = l.Email != null? keyFields+1:keyFields;
            keyFields = l.Phone != null? keyFields+1:keyFields;
            keyFields = l.Website != null ? keyFields+1:keyFields;
            keyFields = l.Title != null ? keyFields+1:keyFields;
            l.Key_Fields__c = keyFields;
            if (keyFields >= 3){
                if(l.FirstName!=null){
                    tasks.add(new Task(Description='Verify the First Name field',Subject='Other'));
                }
                if(l.LastName!=null){
                    tasks.add(new Task(Description='Verify the Last Name field',Subject='Other'));
                }
                if(l.Email!=null){
                    tasks.add(new Task(Description='Verify the Email field',Subject='Other'));
                }
                if(l.Phone !=null){
                    tasks.add(new Task(Description='Verify the Phone field',Subject='Other'));
                }
                if(l.Website!=null){
                    tasks.add(new Task(Description='Verify the Website field',Subject='Other'));
                }
                if(l.Title!=null){
                    tasks.add(new Task(Description='Verify the Last Name field',Subject='Other'));
                }
            }
        }
        if(tasks.size() > 0) {
            insert tasks;
        }
    }
}
