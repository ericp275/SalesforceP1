trigger ContactTrigger on Contact (before insert) {
    contactTriggerHandler.RelateAccount(trigger.new);

}