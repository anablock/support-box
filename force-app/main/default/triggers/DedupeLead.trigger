trigger DedupeLead on Lead (before insert) {

    for (Lead myLead : Trigger.new) {

        // Searching for matching contact(s)

        // If matches are found

        // Assign the lead to the data quality queue

        // Add the dupe contact IDs into the lead description
        
    }
}