trigger LeadTrigger on Lead (before insert) {
    if(Trigger.isInsert) {
        LeadTriggerUtility.keyFields(Trigger.new);
    }
}