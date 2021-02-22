trigger accountTrigger on Account (before update) {
    if(Trigger.isUpdate){
        AccountTriggerMethods.checkIsgold(Trigger.New);
    }

}