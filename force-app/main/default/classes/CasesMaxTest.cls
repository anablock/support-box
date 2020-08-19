@isTest
Private class CasesMaxTest {

    @isTest static void noCasesToday() {
        Contact con = new Contact();
        con.LastName = 'Snow';
        insert con;

        Case myCase = new Case();
        myCase.ContactId = con.Id;
        myCase.Status = 'New';
        insert myCase;

        Case updateCase = [SELECT Status
                             FROM Case
                            WHERE Id = :myCase.Id];
        System.assertEquals('New', updateCase.Status);
    }

    @isTest static void threeCasesTodayOnContact() {
        Contact con = new Contact();
        con.LastName = 'Snow';
        insert con;

        List<Case> oldCases = new List<Case>();
        for (Integer i = 0; i < 2; i++) {
            Case oldCase = new Case();
            oldCase.ContactId = con.Id;
            oldCases.add(oldCase);
        }
        insert oldCases;

        Case myCase = new Case();
        myCase.ContactId = con.Id;
        insert myCase;

        Case updatedCase = [SELECT Status
                             FROM Case
                            WHERE Id = :myCase.Id];
        System.assertEquals('Closed', updatedCase.Status);
    }
}