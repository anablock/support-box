# Salesforce App

This guide helps Salesforce developers who are new to Visual Studio Code go from zero to a deployed app using Salesforce Extensions for VS Code and Salesforce CLI.

## Part 1: Choosing a Development Model

There are two types of developer processes or models supported in Salesforce Extensions for VS Code and Salesforce CLI. These models are explained below. Each model offers pros and cons and is fully supported.

### Package Development Model

The package development model allows you to create self-contained applications or libraries that are deployed to your org as a single package. These packages are typically developed against source-tracked orgs called scratch orgs. This development model is geared toward a more modern type of software development process that uses org source tracking, source control, and continuous integration and deployment.

If you are starting a new project, we recommend that you consider the package development model. To start developing with this model in Visual Studio Code, see [Package Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/package-development-model). For details about the model, see the [Package Development Model](https://trailhead.salesforce.com/en/content/learn/modules/sfdx_dev_model) Trailhead module.

If you are developing against scratch orgs, use the command `SFDX: Create Project` (VS Code) or `sfdx force:project:create` (Salesforce CLI)  to create your project. If you used another command, you might want to start over with that command.

When working with source-tracked orgs, use the commands `SFDX: Push Source to Org` (VS Code) or `sfdx force:source:push` (Salesforce CLI) and `SFDX: Pull Source from Org` (VS Code) or `sfdx force:source:pull` (Salesforce CLI). Do not use the `Retrieve` and `Deploy` commands with scratch orgs.

### Org Development Model

The org development model allows you to connect directly to a non-source-tracked org (sandbox, Developer Edition (DE) org, Trailhead Playground, or even a production org) to retrieve and deploy code directly. This model is similar to the type of development you have done in the past using tools such as Force.com IDE or MavensMate.

To start developing with this model in Visual Studio Code, see [Org Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/org-development-model). For details about the model, see the [Org Development Model](https://trailhead.salesforce.com/content/learn/modules/org-development-model) Trailhead module.

If you are developing against non-source-tracked orgs, use the command `SFDX: Create Project with Manifest` (VS Code) or `sfdx force:project:create --manifest` (Salesforce CLI) to create your project. If you used another command, you might want to start over with this command to create a Salesforce DX project.

When working with non-source-tracked orgs, use the commands `SFDX: Deploy Source to Org` (VS Code) or `sfdx force:source:deploy` (Salesforce CLI) and `SFDX: Retrieve Source from Org` (VS Code) or `sfdx force:source:retrieve` (Salesforce CLI). The `Push` and `Pull` commands work only on orgs with source tracking (scratch orgs).

## The `sfdx-project.json` File

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

The most important parts of this file for getting started are the `sfdcLoginUrl` and `packageDirectories` properties.

The `sfdcLoginUrl` specifies the default login URL to use when authorizing an org.

The `packageDirectories` filepath tells VS Code and Salesforce CLI where the metadata files for your project are stored. You need at least one package directory set in your file. The default setting is shown below. If you set the value of the `packageDirectories` property called `path` to `force-app`, by default your metadata goes in the `force-app` directory. If you want to change that directory to something like `src`, simply change the `path` value and make sure the directory you’re pointing to exists.

```json
"packageDirectories" : [
    {
      "path": "force-app",
      "default": true
    }
]
```

## Part 2: Working with Source

For details about developing against scratch orgs, see the [Package Development Model](https://trailhead.salesforce.com/en/content/learn/modules/sfdx_dev_model) module on Trailhead or [Package Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/package-development-model).

For details about developing against orgs that don’t have source tracking, see the [Org Development Model](https://trailhead.salesforce.com/content/learn/modules/org-development-model) module on Trailhead or [Org Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/org-development-model).

## Part 3: Deploying to Production

Don’t deploy your code to production directly from Visual Studio Code. The deploy and retrieve commands do not support transactional operations, which means that a deployment can fail in a partial state. Also, the deploy and retrieve commands don’t run the tests needed for production deployments. The push and pull commands are disabled for orgs that don’t have source tracking, including production orgs.

Deploy your changes to production using [packaging](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_dev2gp.htm) or by [converting your source](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm#cli_reference_convert) into metadata format and using the [metadata deploy command](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_mdapi.htm#cli_reference_deploy).

# Salesforce App

### Package Development Model

The package development model allows you to create self-contained applications or libraries that are deployed to your org as a single package. These packages are typically developed against source-tracked orgs called scratch orgs. This development model is geared toward a more modern type of software development process that uses org source tracking, source control, and continuous integration and deployment.

If you are starting a new project, we recommend that you consider the package development model. To start developing with this model in Visual Studio Code, see [Package Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/package-development-model). For details about the model, see the [Package Development Model](https://trailhead.salesforce.com/en/content/learn/modules/sfdx_dev_model) Trailhead module.

If you are developing against scratch orgs, use the command `SFDX: Create Project` (VS Code) or `sfdx force:project:create` (Salesforce CLI)  to create your project. If you used another command, you might want to start over with that command.

When working with source-tracked orgs, use the commands `SFDX: Push Source to Org` (VS Code) or `sfdx force:source:push` (Salesforce CLI) and `SFDX: Pull Source from Org` (VS Code) or `sfdx force:source:pull` (Salesforce CLI). Do not use the `Retrieve` and `Deploy` commands with scratch orgs.

### Org Development Model

The org development model allows you to connect directly to a non-source-tracked org (sandbox, Developer Edition (DE) org, Trailhead Playground, or even a production org) to retrieve and deploy code directly. This model is similar to the type of development you have done in the past using tools such as Force.com IDE or MavensMate.

To start developing with this model in Visual Studio Code, see [Org Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/org-development-model). For details about the model, see the [Org Development Model](https://trailhead.salesforce.com/content/learn/modules/org-development-model) Trailhead module.

If you are developing against non-source-tracked orgs, use the command `SFDX: Create Project with Manifest` (VS Code) or `sfdx force:project:create --manifest` (Salesforce CLI) to create your project. If you used another command, you might want to start over with this command to create a Salesforce DX project.

When working with non-source-tracked orgs, use the commands `SFDX: Deploy Source to Org` (VS Code) or `sfdx force:source:deploy` (Salesforce CLI) and `SFDX: Retrieve Source from Org` (VS Code) or `sfdx force:source:retrieve` (Salesforce CLI). The `Push` and `Pull` commands work only on orgs with source tracking (scratch orgs).

## The `sfdx-project.json` File

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

The most important parts of this file for getting started are the `sfdcLoginUrl` and `packageDirectories` properties.

The `sfdcLoginUrl` specifies the default login URL to use when authorizing an org.

The `packageDirectories` filepath tells VS Code and Salesforce CLI where the metadata files for your project are stored. You need at least one package directory set in your file. The default setting is shown below. If you set the value of the `packageDirectories` property called `path` to `force-app`, by default your metadata goes in the `force-app` directory. If you want to change that directory to something like `src`, simply change the `path` value and make sure the directory you’re pointing to exists.

```json
"packageDirectories" : [
    {
      "path": "force-app",
      "default": true
    }
]
```

## Part 2: Working with Source

For details about developing against scratch orgs, see the [Package Development Model](https://trailhead.salesforce.com/en/content/learn/modules/sfdx_dev_model) module on Trailhead or [Package Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/package-development-model).

For details about developing against orgs that don’t have source tracking, see the [Org Development Model](https://trailhead.salesforce.com/content/learn/modules/org-development-model) module on Trailhead or [Org Development Model with VS Code](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/org-development-model).

## Part 3: Deploying to Production

Don’t deploy your code to production directly from Visual Studio Code. The deploy and retrieve commands do not support transactional operations, which means that a deployment can fail in a partial state. Also, the deploy and retrieve commands don’t run the tests needed for production deployments. The push and pull commands are disabled for orgs that don’t have source tracking, including production orgs.

Deploy your changes to production using [packaging](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_dev2gp.htm) or by [converting your source](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_source.htm#cli_reference_convert) into metadata format and using the [metadata deploy command](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_force_mdapi.htm#cli_reference_deploy).

## Dev, Build and Test

Refer to the Salesforce documentation for Salesforce DX.
This is a Salesforce DX project.
Chapters are located in individual branches in the git repository. Steps within a chapter are represented by individual commits

## Resources

Refer to the license or license.txt file for copyright and license information.

## Description of Files and Directories

Refer to Salesforce DX and Salesforce metadata documetnation for a description of
all files.
For an in-depth explanation of this project, refer to the 4th edition of the book Advanced Apex Programming

## Issues


## =============================================
* triggers can receive up to 200 objects at once
* SOQL queries and DML statements should not be inside of loops
* Apex code should be designed to handle bulk operations

* Why test?
    * Does the code work
    * Code coverage
    * Handling invalid input

Unit tests are unique in that they have two sets of governor limits available: 
    * one set used for setting up data and verifying results, 
    * onse set for the test itself (the code between a call to the `Test.StartTest` and `Test.StopTest` methods.

One common design pattern is to create utility functions that can be shared by multiple test classes or methods.

## Example on how to use utility functions
in the following example, there are two utility functions.  The first one, `TestBulkPatterns.InitTestObjects`, sets up test scenarios based on some parameters.  The `newopportunities` parameter references a list that is initialized by this function with the new opportunities.  `NumberOfOpportunities` specifies the number of new opportunities to create.  `NumberOfOtherOpportunities` specifies the number of additional opps to create - opps that will be associated with the contacts, but will not be updated by the test code.  `ContactRolesPerOp` specifies the number of contacts to be associated with each opp.  `NumberOfContacts` specifies the number of contacts to distribute among the opps, and is required to be at larger or equal to `ContactRolesPerOp`.

```apex
function
    try 
        Test condition
        If fail return

        continue operation
    catch
        rethrow erro
    finally
        early return statement and any exceptions
        will all execute here
```

## Triggers
* non-deterministic - 

### Managing the Data Updates
Two rules to always keep in mind for insert and update triggers:
* Updating fields on an object is a before trigger - fields that are udpatable are updated.
* Updating fields on an object in an after trigger requires a DML operation and cannot be performed on the objects provided by the trigger.  Those objects, found in the new, old, newMap and oldMap trigger context variables, have all their fields set to read-only.

To facilitate combining DML operations from multiple classes, use centralized data handler.

#### Centralized Design Handler - simple option
`TriggerDMLSupport` class - class has two static variables
* `updatePendingObjects` variable is a Boolean that indicates to the system that an internal DML operation is currently in progress.  This can be used by the various triggers to modify their behavior - for example, to skip trigger handling that is either unnecassary, or might spawn off additional DML operations.  It is also used within the class to ensure that a DML operation does not invoke another one, even if the trigger framework tries to do so.
* `opsToUpdate` static variable is used by other classes to keep track of records that need to be updated.  In this example, the class only handles opportunity objects.  

```java
// Basic data management class
public virtual class TriggerDMLSupport {
    public static Boolean updatingPendingObjects = false;
    public static Map<ID, Opportunity> opsToUpdate = new Map<ID, Opportunity>();

    // Return a map of updatable opportunity records to use in after triggers
    public static Map<ID, Opportunity> getUpdatableOpportunities(Set<ID> opsIds) {
        Map<ID, Opportunity> ops = new Map<ID, Opportunity>();
        for(ID opid: opIDs) {
            ops.put(opid, new Opportunity(ID = opid));
        }
        return ops;
    }

    public static void updatePendingOpportunities() {
        if(!updatingPendingObjects){
            while(opsToUpdate.size()>0){
                List<Opportunity> updatingList = opsToUpdate.value();
                opsToUpdate = new Map<ID, Opportunity>();
                updatingPendingObjects = true;
                update updatingList;
                updatingPendingObjects = false;
            }
        }
    }
}
```
* `getUpdatableOpportunities` method creates a map containing empty opportunity objects for each ID.  The various trigger handler classes can then set field values for these objects for later update.

* `updatePendingOpportunities` function is called at the end of the trigger.   It does not fire if called while currently updating objects - this helps reduce the chance of reentrancy.  It continues to loop while there are any objects to update.  

### Implementing tightly controlled execution flow within a trigger
The code should be designed so that it is easy to add additional functionality to the trigger later - anywhere in the sequence of operations.

```java
trigger OnOpportunity on Opportunity (before insert, after insert, after update) {
    if(TriggerDMLSupport.updatingPendingObjects) return;
    Map<ID, Opportunity> updateableMap;
    if(trigger.isAfter) updateableMap = TriggerDMLSupport.getUpdatableOpportunities(trigger.newMap.keyset());

}

```
The first thing trigger does is check to see if the trigger was caused by an internal DML operation, in other words, are we currently in process of updating opps.

The trigger uses the TriggerDMLSupport class to create a map of updateable objects for use by the after triggers, passing it as a parameter to each class.  The two trigger handler classes are called, followed by the `TriggerDMLSupport.updatePendingOpportunities` method to perform the database operation on behalf of both classes.

## Maps
* Alwaya access map elements by key
* A map key can hold the `null` value
* Map keys of type String are case sensitive
* Apex is a statically typed language.
* Statically typed means that users must specify the data type for a variable before that variable can be used.
#


```java
Account[] aa = [SELECT Id, Name FROM Account WHERE Name ='Acme'];
Integer i = [SELECT COUNT() FROM Contact WHERE LastName ='Weissman']; List<List<SObject>> searchList = [FIND 'map*' IN ALL FIELDS RETURNING Account (Id, Name),
Contact, Opportunity, Lead];
```

A static or instance method invocation:
```java
System.assert(true)
myRenamingClass.replaceNames()
changePoint(new Point(x,y))
```

## Domain class template
`FinancialForce.com Apex Enterprise Patterns` library has base class `fflib_SObjectDomain`.
Domain class utilizing this base class is shown here:
```java
public class Races extends fflib_SObjectDomain 
{
    public Races(List<Race__c> races)
    {
        super(races);
    }

    public class Constructor implements fflib_SObjectDomain.IConstructable
    {

    }
}
```

## Implementing Domain Trigger Logic
The most common initial use case for a Domain class is to encapsulate the Apex trigger logic.  Apex trigger invokes the `triggerHandler` method.  This will route the various Trigger events to the appropriate methods in the Domain class, avoding the need for if/else logic around `Trigger.isXXXX` variables.

```java
trigger Seasons on Seasone__c (
    after delete, after insert, after update,
    before delete, before insert, before update
) {
    fflib_SObjectDomain.triggerHandler(Season.class);
}
```

## System.assertEquals()
This assert statement is only used in test classes.  Every test class should have at least one `System.assertEquals()`.

`System.assetEquals(input1, input2, input3);`

* input1(expected value) and input2(actual value) are required
* input3(error message) is optional - The message to display if the actual value != expected value
* user SOQL to get the most up-to-date info on records
* `size()` can only be used on the `List` data type

```java
@IsTest
private class NewStatusTest {
    static testMethod void CreateLead() {
        Lead myLead         = new Lead();
        myLead.FirstName    = 'Jon';
        myLead.LastName     = 'Snow';
        myLead.Company      = 'Winter Hotels';
        insert myLead;

        Lead latestLead = [SELECT Status
                            FROM Lead
                            WHERE Id = :myLead.Id];

        System.assertEquals(
            'New',
            latestLead.Status
        );
    }
}
```

```java
@IsTest
private class NewStatusTest {
    static testMethod void CreateLead() {
        String leadOwner = userInfo.getUserId();
        
        // Create all required records
        Lead myLead         = new Lead();
        myLead.FirstName    = 'Jon';
        myLead.LastName     = 'Snow';
        myLead.Company      = 'Winter Hotels';
        myLead.Email        = 'vuk+lead@anablock.com';
        myLead.Description  = 'Testing dedupe trigger...';
        myLead.OwnerId      = leadOwner;
        insert myLead;

        // Use SOQL to find the latest values
        Lead updatedLead = [SELECT OwnerId,
                                  Description  
                            FROM  Lead
                            WHERE Id = :myLead.Id];

        // Assert that the results are expected
        System.assertEquals(leadOwner, updatedLead.OwnerId);
        System.assertEquals(myLead.Description, updatedLead.Description);
    }
}
```

```java
@isTest
private class ComparableOppsTest {

    @isTest static void noComparableOpps() {
        // Create Account record
        Account acc = new Account();
        acc.Name        = 'Winterfall';
        acc.Industry    = 'Industry';
        insert acc;

        // Create Opp record
        Opportunity opp = new Opportunity();
        opp.Name        = 'Winterfall';
        opp.AccountId   = acc.Id;
        opp.Amount      = 100;
        opp.StageName   = 'Prospecting';
        opp.CloseDate   = Date.today();
        insert opp;

        // Query latest values
        Comparable__c comparables = [SELECT Id
                                       FROM Comparable__c
                                      WHERE Base_Opportunity__c = :opp.Id];

        // Assert
        System.assertEquals(0, comparables.size());
    }

    @isTest static void multipleComparableOpps() {
        // Create comparable records
        Account acc = new Account();
        acc.Name        = 'Winterfall';
        acc.Industry    = 'Industry';
        insert acc;

        List<Opportunity> comparablesOpps = new List<Opportunity>();
        Opportunity comp1   = new Opportunity();
        opp.Name            = 'Winterfall';
        opp.AccountId       = acc.Id;
        opp.Amount          = 105;
        opp.StageName       = 'Closed Won';
        opp.CloseDate       = Date.today().addDay(-1);
        comparableOpps.add(comp1);

        Opportunity comp2   = new Opportunity();
        opp.Name            = 'Winterfall';
        opp.AccountId       = acc.Id;
        opp.Amount          = 95;
        opp.StageName       = 'Closed Won';
        opp.CloseDate       = Date.today().addDay(-100);
        comparableOpps.add(comp2);
        insert comparableOpps;

        Opportunity baseOpp   = new Opportunity();
        opp.Name            = 'Winterfall';
        opp.AccountId       = acc.Id;
        opp.Amount          = 100;
        opp.StageName       = 'Prospecting';
        opp.CloseDate       = Date.today();
        insert baseOpp;

        // Get latest values
        List<Comparable__c> comparables = [SELECT Id,
                                                  Comparable_Opportunity__c
                                             FROM Comparable__c
                                            WHERE Base_Opportunity__c = :baseOpp.Id
                                            ORDER BY Comparable_Opportunity__r.CloseDate DESC];

        // Make assertions
        System.assertEquals(comp1.Id, comparables.get(0).Comparable_Opportunity__c);
        System.assertEquals(comp1.Id, comparables.get(1).Comparable_Opportunity__c);    
    }
}
```

```java
trigger MaxCases on Case (before insert) {

    for (Case myCase : Trigger.new) {
        if (myCase.ContactId)
    }
}
```