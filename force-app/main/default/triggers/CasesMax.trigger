trigger CasesMax on Case (before insert) {

    for (Case myCase : Trigger.new) {
        if (myCase.ContactId != null) {
            // Find all cases with this contact created today
            List<Case> casesTodayFromContact = [SELECT Id
                                                  FROM Case
                                                 WHERE ContactId    = :myCase.ContactId
                                                   AND CreatedDate  = TODAY];

            // If two are found, close the case
            if (casesTodayFromContact.size() >= 2) {
                myCase.Status = 'Closed';
            }
        }
    }
}