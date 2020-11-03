global class ScheduleableExercise implements Schedulable {

    global void execute(SchedulableContext sc){
        Case c = new Case();
        c.Contact.LastName = 'Schedule Case';
        insert c;
        
    }
}