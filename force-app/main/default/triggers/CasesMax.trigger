trigger MaxCases on Case (before insert) {

    for (Case myCase : Trigger.new) {
        if (myCase.ContactId)
    }
}