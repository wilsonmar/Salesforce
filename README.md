<a target="_blank" href="http://www.salesforce.com/" title="salesforce_logo_2015_218x218">
<img align="right" src="https://cloud.githubusercontent.com/assets/300046/8766647/6285ae7e-2dfe-11e5-9a39-7cdf5473e14b.png" /></a>
This is intended to be a hands-on guided introduction such that experience developers new to Salesforce
can get to know the offering deeply yet quickly.

This is a living document and will continue to be updated with more helpful information and examples as they become available.
QUESTION: and ??? mark where I need input.

Much of the contents of this file has been transferred to my blog and expanded there.
A list of the blog entries related to Salesforce is at
<a target="_blank" href="https://wilsonmar.github.io/salesforce"><strong>https://wilsonmar.github.io/salesforce</strong></a>


<a name="HowToContribute"></a>

## Please Contribute

Content in this repo is [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](http://creativecommons.org/licenses/by-sa/4.0/) unless otherwise stated

I welcome you to contribute on this GitHub https://github.com/wilsonmar/Salesforce. When this repo is changed,
changes are [pushed to Gitbook.io automatically](https://www.gitbook.io/book/wilsonmar/Salesforce/activity).

Editing the book can be done either by updating the markdown files with a text editor, or opening the repository in [the Gitbook desktop app](https://github.com/GitbookIO/editor/blob/master/README.md). The desktop app will give you a live preview option.


<hr />

<a name="Developer"></a>

## Developer Setup

1) Get a developer account from <a target="_blank" href="http://developer.salesforce.com/signup">http://developer.salesforce.com/signup</a> (= <a target="_blank" href="http://sforce.co/WBtUN7">http://sforce.co/WBtUN7</a>)
   for a Developer Edition (DE) environment.

   PROTIP: During registration, the <strong>Username</strong> needs to be in the form of an email address.
   But email is not sent to the username, so you can use something unique
   such as "wilsonmar-234@jetbloom.com" where -234 is unique to another developer instance.

   PROTIP: Have a "main" developer environment that you tell people and use for social Chatter and Help.
   Other accounts you use only to log in secretly.

 2) When the email "Your Developer Edition Login Information" arrives, click on the link to change password.

    PROTIP: Use the unique portion in your password to make it easier to remember.

 3) Turn on Developer from Setup | Personal Information. Click Edit. Scroll to click
 <strong>Development Mode</strong> and <strong>Show View State in Development Mode</strong>.
 Save.


<a name="LoginUI"></a>

## Salesforce User Home UI

1) Go to webpage <a target="_blank" href="http://login.salesforce.com">login.salesforce.com</a>

The blue sausage (app selector) at the upper-right lists <strong>apps</strong>.
An app is a group of tabs that work as a unit to provide functionality. Users can switch between apps using the Force.com app drop-down menu at the top-right corner of every page.
2,700+ apps have been created by Salesforce partners.

   Standard apps:

   * Call Center
   * Community
   * Content
   * Marketing
   * Sales
   * Salesforce Center

   A custom landing page can be configured for custom apps.

2) Clicking on a menu item displays on the <strong>main window</strong> in the middle of the screen.

   Each app has a different set of menu tabs going across the screen, beginning with <strong>Home</strong>

   A key differentiator with Salesforce is that, unlike menus on Mirosoft Office software,
   which has menu items focused on user actions such as Edit and Print,
   Salesforce menu items are focused on <strong>information</strong> such as
   Opportunities and Contacts.

3) Click the [+] at the right end of the menu.


   <a name="Instances"></a>

   ### Instances among Orgs

4) After login, note the URL, such as `https://na31.salesforce.com/...`

   The "na31" in this case is the "multi-tenant" <strong>instance</strong> identifier
   used by about 8,000 customers (tenants) each on the same hardware infrastructure.

   Multi-tenancy is what has enabled Salesforce to offer services to SMB at an affordable price.

   Salesforece maintains 50 production instances (potentially 400,000 orgs). Currently,
   Salesforce reportedly has 55,000 enterprise customers and 1.5 million individual subscribers.

5) Availability history of each instance is listed at
	<a target="_blank" href="http://www.trust.salesforce.com/trust/instances">
	http://www.trust.salesforce.com/trust/instances</a>

6) The mobile version of instance na31 is at URL:

	 https://na31.salesforce.com/one/one.app

7) Click the "pancake" / "hamburger" icon at the upper left.

8) Click "Show more".

   The One UI is more similar to Apple in confirmation icons at the upper right
   and go back/cancel icons on the upper left.

   MORE READING: Salesforce1 Mobile Basics > Getting Started with the Salesforce1 Mobile App
   https://developer.salesforce.com/trailhead/salesforce1_mobile_app/salesforce1_mobile_app_intro

* https://github.com/forcedotcom/SalesforceMobileSDK-Android


<a name="OrgDefaults"></a>

##  Corporate Global Settings Defaults

To set <strong>OWD (Organization-Wide Defaults)</strong>, such as Fiscal Year start date, Record Currency.

1) Click Setup at the upper-right corner.

A Locale selection determine how dates, time, numbers, names are displayed,
based on Language, Locale, Time Zone.

* Company Profile
* UI Settings
* Calendar Settings
* Search Settings
* Chatter


<a name="Permissions"></a>

## Permissions

The 6 standard profiles of permissions:

* Administrator
* Solution Manager
* Read Only
* Standard User
* Marketing User
* Contract Manager

Up to 1000 Permission sets per org can be setup to grant additional permissions without changing user profiles.

<a name="UserSetup"></a>

## One-time User Setup

1) Click Setup at the upper-right corner.

	Selections in the left-menu is organized into Administer, Build, Deploy, and Monitor.

[Setup video](https://www.youtube.com/watch?t=19&v=uM9Nli7xpEM)

1) [__] Setup verification to mobile phone.

2) [__] Setttings: Personal: Language & Time Zone.

3) [__] Add a photo of yourself https://na31.salesforce.com/_ui/core/userprofile/UserProfilePage?tab=sfdc.ProfilePlatformFeed

4) [__] Setttings: Personal: Advanced User Details: Use a token generated from an authenticator app on your mobile device.
   https://play.google.com/store/apps/details?id=com.salesforce.authenticator


## Two-factor authentication

https://trailhead.salesforce.com/modules/identity_login

1. On your iOS or Android, open the store app to search for "Salesforce Authentictor".
2. Log onto Salesforce https://login.salesforce.com/ as Administrator of your DE org.
3. In Lightning Experience, click the setup icon, Setup Home.
4. From Setup, enter Permission in the Quick Find box, then select Permission Sets.
5. Label: "2fa Auth for User Logins". 
6. API Name: "X2fa_Auth_for_User_Logins".
7. Click Save.
8. Under Recent Items or System, click System Permissions. Now you’re on the detail page for the 
"2fa Auth for User Logins" permission set.
9. Click Edit.
10. Select "Two-Factor Authentication for User Interface Logins".
11. Click Save.




<a name="UI"></a>

## Standard UI Declarative

Collapsable Sidebar can be enabled to reduce horizonal scrolling.

1) Create a new page layout for the Contacts object.


<a name="Keyboard"></a>

### Most Common UI Actions and Keyboard Shortcuts

Salesforce does not provide keyboard shortcuts in the Setup "Aloha" UI.
However, if you have downloaded Google Chrome, you can add-on Salesforce Hotkeys at
https://chrome.google.com/webstore/detail/salesforce-hotkeys-beta/hkpmdgakkflkddmiffelfaokkgoamlil?hl=en

Up to 10 Recent Items are displayed.

The list of hotkeys is <a target="_blank" href="https://docs.google.com/spreadsheets/d/1GPO0dmEkSjodrUaF_rN_ZuErBfbRfid3_zItAQc5sus/pubhtml?gid=1040039296&single=true">
here</a>.

CTRL + ALT/Option is used to select tabs:

   * G = List view
   * R = Reports

CTRL + SHIFT + F or META + SHIFT + F keys are used to Find text in the Search box.

CTRL + key within a dialog:

   * E = Edit
   * S = Save
   * Q = Quit / Cancel

### Key directly to specific object

CTRL + SHIFT or META + SHIFT keys are used to select <strong>Create New</strong>:

   * A = Account (with related contacts, opportunities, and cases)
   * C = Contact (of individual people)
   * O = Opportunity (associated with a Contact in an Account with potential sales)
   * L = Lead (associated with campaigns)

Additionally:

   * R = Report
   * T = Task
   * E = Event
   * S = Suggestion

The other standard objects that are the bread-and-butter data Salesforce CRM was built to handle:

   * ? = Case
   * ? = Solution
   * ? = Campaign


<a name="RecycleBin"></a>

### Recycle Bin

When a customer object is deleted, Salesforce does not immediately add it to the Recycle Bin.
Instead, deleted objects appear in the <strong>Deleted Objects</strong> list for 15 days.
During an object's "soft deleted" time, it can be restored before being permanently erased (hard deleted).

Soft-deleted custom objects and their data still count against your organization’s limits;
hard-deleted items do not.

See them in the Schema Browser.



<a name="Sandbox"></a>

##  Sandbox

Sandboxes are copies of your organization in a separate environment. They are used for development and testing.
See Sandbox Overview at https://help.salesforce.com/HTViewHelpDoc?id=create_test_instance.htm&language=en_US

Changesets are used release to production.

PROTIP: Most professional developers prefer to use the Force.com IDE with a local copy
rather than the on-line Developer Console to avoid losing work if a refresh occurs.

Revision to earlier changes may not be possible.

PROTIP: Build your own instrumentation.

See <a target="_blank" href="
https://na31.salesforce.com/_ui/common/apex/debug/ApexCSIPage">
https://na31.salesforce.com/_ui/common/apex/debug/ApexCSIPage</a>

<hr />

<a name="ConfApp"></a>

### Build Conference App

<a target="_blank" href="https://developer.salesforce.com/trailhead/project/salesforce_developer_workshop">
Build a Conference Management App</a>
used during
<a target="_blank" href="http://ccoenraets.github.io/salesforce-developer-workshop/">
Step-by-step Salesforce1 Developer Workshop</a>.
Click "Start Now" on that page and you'll get to the
github.io website</a>
created by
Christophe Coenraets, of http://coenraets.org/blog/
(Salesforce Developer Evangelist by day and Ionic Framework expert at night).
Questions and questions about the trailhead content can be entered in the Disqus component in

makes use of Connected app whose source is in
<a target="_blank" href="https://github.com/ccoenraets/salesforce-developer-workshop">
a github repo</a> that contains http://goratchet.com/ CSS library
and ForceTK (https://github.com/developerforce/Force.com-JavaScript-REST-Toolkit)
to integrate with Salesforce.

Visualforce includes its own ExtJS JavaScript library.

Apex remoting forms an async parametized bridge between JavaScript and Apex.


### Reports and Dashboards

<a target="_blank" href="https://success.salesforce.com/featuredGroupDetail?id=a1z30000006IDYrAAO">
Join the Reports & Dashboards group</a>


<a name="SuggestionApp"></a>

### Build Suggestion Box App

<a target="_blank" href="https://developer.salesforce.com/trailhead/project/suggestion_box">
Build a Suggestion Box</a> shows how to create reports and dashboards.

Questions and questions about the content can be entered in the Disqus component in the github.io website
<a target="_blank" href="http://ccoenraets.github.io/salesforce-developer-advanced/">
Advanced Developer Workshop</a> generated from
<a target="_blank" href="https://github.com/ccoenraets/salesforce-developer-advanced">
a github repo</a>.


### Invoice app with Francis Pindar

<a target="_blank" href="https://www.linkedin.com/in/francisuk/">Francis Pindar</a> (Londoner, 6X MVP, <a target="_blank" href="https://twitter.com/radnip">@radnip</a>, <a target="_blank" href="http://www.radnip.com/">radnip.com</a>) at <a target="_blank" href="https://acloud.guru/">ACLoud.Guru</a> created a Salesforce 101 video course and a whole 
<a target="_blank" href="https://acloud.guru/learn/salesforce-certified-administrator-2017">
Salesforce Certified Administrator 2018</a>, which builds an invoice app over 12 hours of video, using the Aug. 2016 version of the Salesforce classic experience.


### Lynda

<a target="_blank" href="https://www.lynda.com/Salesforce-tutorials/Learn-Salesforce-Basics/513603-2.html">
Learn Salesforce: The Basics
10/14/2016 1h 39m</a>
by Christine V Pereira


<a name="PluralsightTutorials"></a>

### Pluralsight Tutorials

As of Feb 2017, Pluralsight has 18 videos on Salesforce,
from 2013 to 2016:

Dan Appleman

#### Don Robins

<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-bigpicture">
Force.com Platform - The Big Picture
[Beginners] 1h 24m 29 Jan 2013</a>

#### Adam Purkiss

<a target="_blank" href="https://www.pluralsight.com/courses/forcedotcom-design-patterns-pt1">
Force.com Design Patterns - Part 1
 [Intermediate] Nov 26 2012 3h 2m</a>

<a target="_blank" href="https://www.pluralsight.com/courses/forcedotcom-design-patterns-part2">
Force.com Design Patterns - Part 2
 [Intermediate] May 1 2013 1h 45m</a>

#### Richard Seroter

<a target="_blank" href="https://www.pluralsight.com/courses/using-forcedotcom-integration-aps-connect-applications">
Using Force.com Integration APIs to Connect Your Applications
[Intermediate] Mar 8 2016 5h 14m</a>

<a target="_blank" href="https://www.pluralsight.com/courses/force4devs">
Force.com for Developers
[Intermediate] Aug 23 2012 5h 47m</a>

#### Matt Lacey

<a target="_blank" href="https://www.pluralsight.com/courses/visualforce-introduction">
Introduction To Visualforce
[Intermediate] Jul 31 2013 2h 32m</a>


Atlassian Confluence
https://tddprojects.atlassian.net/wiki/spaces/SF/overview
https://tddprojects.atlassian.net/wiki/spaces/SF/pages/239534121/Actions+Examples

Sara Morgan created
<a target="_blank" href="https://www.pluralsight.com/courses/lightning-component-framework-spa-getting-started">
Getting Started Building SPAs with Lightning Component Framework
Apr 26 2016, 2h 26m</a>

<a target="_blank" href="https://app.pluralsight.com/library/courses/your-first-salesforce-application/table-of-contents">
Building Your First Salesforce Application</a> 28 Feb 2018
by Scott Allen



<a name="DevTools"></a>

## Dev Tools

* <a href="#DeveloperConsole">Developer Console</a> online (look in the pull-down under your name), which opens a new browser window.
* Force CLI
* Force.com IDE plugin on top of Eclipse
* Mavens Mate plugin on top of SublimeText


<a name="ApexCoding"></a>

## Apex Coding

[Force.com Apex Code Developer's Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/)


<a name="MobileApps"></a>

##  Mobile Apps

The Salesforce1 mobile emulator is at http://<em>instance ID</em>.salesforce.com/one/one.app
See <a target="_blank" href="https://developer.salesforce.com/docs/atlas.en-us.salesforce1.meta/salesforce1/dev_best_practices_development_process.htm">this</a>.

<a target="_blank" href="https://itunes.apple.com/us/developer/salesforce-com/id281826149?mt=8">Mobile apps for iOS</a>
and Android:

   * Salesforce Authenticator for 2FA
   * SalesforceA, the mobile app for admins for <a target="_blank" href="https://play.google.com/store/apps/details?id=com.salesforce.admin1"> Android</a> and iOS.
   * Salesforce1 mobile app for end-users for <a target="_blank" href="https://play.google.com/store/apps/details?id=com.salesforce.chatter"> Android</a> and iOS.
   <br /><br />

WEBINAR: [Building Mobile Apps using SDK](https://developer.salesforce.com/events/webinars/mobile_SDK) by Akhilesh Gupta



<a name="VisualforceTutorials"></a>

##  Visualforce Tutorials

Visualforce coding is much like Ruby on Rails and Django.
Visualforce generates HTML based on markup such as:

```
<apex:page standardController="Speaker__c">
<apex:form >
    <apex:pageBlock title="Edit Speaker">
        <apex:pageBlockSection columns="1">
            <apex:inputField value="{!Speaker__c.First_Name__c}"/>
            <apex:inputField value="{!Speaker__c.Last_Name__c}"/>
            <apex:inputField value="{!Speaker__c.Email__c}"/>
        </apex:pageBlockSection>
        <apex:pageBlockButtons >
            <apex:commandButton action="{!save}" value="Save"/>
        </apex:pageBlockButtons>
    </apex:pageBlock>
</apex:form>
</apex:page>
```

Visualforce coding can declare logic such as a repeat loop:

```
<apex:repeatvalue="{!users}"var="user">
{!user}<br />
</apex:repeat>
```

Setting the default page is not the most intuitive. An example:

1) In Setup, select Build > Create > Objects and click the Speaker object link.

2) Scroll down to the Buttons, Links, and Actions section, and click Edit next to New.

3) Check Override With Visualforce Page, and select SpeakerForm.


DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums?id=906F00000008lLvIAI#!/feedtype=RECENT&dc=Visualforce_Development&criteria=ALLQUESTIONS">Visualforce Board</a>

There was (31 Jul 2013) a 2h 32m Pluralsigh [paid] tutorial
<a target="_blank" href="http://www.pluralsight.com/courses/visualforce-introduction">
Introduction To Visualforce</a>
by Matt Lacey.


<a name="Bulk"></a>

##  Bulk Actions

With its focus on UI, Salesforce does not provide a <strong>Bulk Delete</strong> natively.
A Java wrapper is described in the 3h 2m [paid] Pluralsight tutorial from 26 Nov 2012
<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-design-patterns-pt1">
Force.com Design Patterns - Part 1</a>
by Adam Purkiss.

There is also a 1h 45m 01 May 2013
<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-design-patterns-pt2">
Force.com Design Patterns - Part 2</a>
by Adam Purkiss.

<a target="_blank" href="https://github.com/jorgevaldivia/salesforce_bulk/">
sample bulk API interface Ruby gem</a>


<a name="Metadata"></a>

##  MetaData

Metadata literally means data about data. Read https://developer.salesforce.com/page/An_Introduction_to_Force.com_Metadata

A Salesforce <strong>Org</strong> (short for organization) is a
<strong>container</strong> for metadata that drives the dynamic engine (kernel).

Salesforce’s secret sauce: It queries its databases with “The Multi-Tenant Optimizer”

<strong>System objects</strong> are: User, Event, Activity, Task.

Object names generated are suffixed by two underlines followed by a letter:

   * __c for custom object.
   * __r for relationship to follow.
   * __s for latitude and longitude (a single compound geolocation field with two components).

https://help.salesforce.com/HTViewHelpDoc?id=custom_field_types.htm&language=en_US

	LIMIT: Picklists are limited to 300 values

Use data type <strong>Text(encrypted)</strong> for credit card numbers and national ID such as US social security numbers.
To keep users from editing:

   * Validation Rules
   * Field-level Security
   * Page Layout Settings

An object can have up to 3 external ID fields.
External IDs (not case-sensitive) are used with upsert command to prevent duplication during import.
But external IDs can only be data type number, unencrypted text, email (not phone).

WEBINAR: [Encrypt Sensitive Data while Preserving Platform Functionality](https://www.youtube.com/watch?v=pXGYWYoe40E)
with Salesforce Summer '15 Shield "encryption as a service" feature bundle using customer-managed keys
stored in the new TenantSecret sObject.
This requires additional licensing.


<a name="ControllerExtension"></a>

##  Controller Extension

In the Create trail, an increment() method and a counter property can be added:

```
public with sharing class SpeakerControllerExtension {
    public Integer counter {get; set;}
    private final Speaker__c speaker;
    private ApexPages.StandardController stdController;
    public SpeakerControllerExtension(ApexPages.StandardController stdController) {
        this.speaker = (Speaker__c)stdController.getRecord();
        this.stdController = stdController;
        counter = 0;
    }
    public void increment() {
        counter++;
    }
}
```

<a name="Formulas"></a>

###  Formulas

To access a graphic image, you need to create two data types:
One is a 255-length text field namee Picture_path which is referenced by
a Formula data type `IMAGE(Picture_Path__c, '', 350,300)` with Text return type.

In the Developer Console, see run output to `System.Debug('Hello');` by
filtering execution logs for just USER_DEBUG events.

* IsChanged(Field) is based on whether the specific field value has changed.
* PrioValue(Field) allows access to previous vale of the field.
* IsNew() checks for create v/s update action.

For more about formula fields:

* https://developer.salesforce.com/page/An_Introduction_to_Formulas * https://help.salesforce.com/HTViewHelpDoc?id=useful_advanced_formulas.htm&language=en_US


<a name="AppExchange"></a>

##  Apps and AppExchange Marketplace

<a target="_blank" href="
https://appexchange.salesforce.com/">
https://appexchange.salesforce.com</a>
(described at http://www.salesforce.com/appexchange/overview/)
is an online marketplace where you can browse, test drive, download, and
install pre-built apps and components right into your Salesforce environment.

1) Menu Build | Develop | AppExchange Marketplace.
2) Search for apps by keyword.
3) Get "Demo Jam" to watch short demos of various apps. 
4) Click Get It Now.

In 2015 Salesforce has 30M lines of code written by others via APPExchange at

Read <a target="_blank" href="https://www.salesforce.com/form/conf/platform-appguide.jsp">
https://www.salesforce.com/form/conf/platform-appguide.jsp</a>

DOCUMENT: [Application Installation Guide](https://developer.salesforce.com/docs/atlas.en-us.appExchangeInstallGuide.meta/appExchangeInstallGuide/)

Salesforce Wear <a target="_blank" href="https://developer.salesforce.com/wear">
https://developer.salesforce.com/wear</a>
includes a set of apps for Apple Watch, Google Glass, and more wearables that all access Salesforce data via APIs.

The highest rated 3rd-party apps:

*    Adobe EchoSign: This application adds enterprise document management functionality to Salesforce. EchoSign allows users and clients to view, edit, sign, track, and file cross-platform documents.

*    Informatica Cloud: This SaaS application is designed to simplify the integration of cloud-based Salesforce data with on-premise systems. Using pre-built connectors, Informatica makes it easy to synchronize Salesforce information with ERP, databases, and other on-premise systems.

*    Marketo Marketing Automation: Marketo is an application designed to integrate marketing efforts with Salesforce. It automates and simplifies the creation, support, and monitoring of marketing campaigns, while providing up-to-date information to the sales department.



<a name="Permissions"></a>

##  Permissions

* "Author Apex" permissions are necessary to use Search SOQL/SASL in the Query tab.
* "View All Data" permissions are necessary to use the Developer Console
* "Customize Applications" permissions are necessary to make changes to Apex, VisualForce, Lightning components.


<a name="Database"></a>

##  Database Query

Because parent-child and other data relationships are defined up front in the
<strong>Data Model UI</strong>,
the Salesforce Object Query Language <strong>(SOQL)</strong> coded to retrieve filtered data
does not allow dynamic implicit joins like those used in ANSI SQL.
Furthermore, SOQL is like Microsoft's LINQ because it contains domain-specific names like "Opportunities".

There is also the Salesforce Analytics Search Language (SASL)

This approach enables Salesforce engineers to optimize indexing their own way,
invisible to developers and users, such as
returning variable data types in multi-dimensional arrays.

SOQL can be coded and executed dynamically within the Developer Console Query Editor.
Examples:

```
for (Speaker__c s : [SELECT Email__c FROM Speaker__c])
{
    System.debug(s.email__c);
}
```

An example to retrieve "Rose Gonzalez" from "%rose%":

```
SELECT Id, Name, Phone, Account.Name  
       FROM Contact
       WHERE Phone <> null
       AND Name LIKE '%rose%'
       ORDER BY Name
       LIMIT 50
```

For a master-detail example:

```
SELECT Name,
       (SELECT FirstName, LastName, Phone
               FROM Contacts)
       FROM Account
```

Individual rows returned from SOQL can be dynamically edited, inserted, and deleted.

<strong>Junction Object</strong> is a custom object
(of auto-number data type)
joining two Master Detail Relationships.

* https://help.salesforce.com/HTViewHelpDoc?id=overview_of_custom_object_relationships.htm
* https://help.salesforce.com/HTViewHelpDoc?id=relationships_manytomany.htm&language=en_US
<br /><br />


<a name="DML"></a>

## DML

Salesforce Data Manipulation Language (DML) is coded in Apex classes and triggers
to insert, update and delete data, in the Developer Console <strong>Anonymous Window</strong>.

See the <a target="_blank" href="https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/">
Force.com SOQL and SOSL Reference</a>

Some insert:

```
Session__c session = new Session__c();
session.name = 'Apex 101';
session.level__c = 'Beginner';
insert session;
```

```
Session__c session = new Session__c(
    name = 'Apex 201',
    level__c = 'Intermediate'
);
insert session;
```

Update sample:

```
String oldName = 'Apex 101';
String newName = 'Apex for Beginners';
Session__c session =   [SELECT Id, Name FROM Session__c
                   WHERE Name=:oldName];
session.name = newName;
update session;
```

Sample Delete:

```
String name = 'Testing 501';
Session__c session =
   [SELECT Name FROM Session__c
               WHERE Name=:name];
delete session;
```

Sample Undelete: ???


<a name="Triggers">

##  Triggers

Each trigger is coded in Apex to a particular sObject.

"(before insert, before update)" are coded as part of the definition.

Triggers work on lists of records, not single records.
This is to support bulk operations (Data Import, Bulk API, etc.)

Example before trigger:

```
trigger on Account (before update) {
    for (Account acc: Trigger.New) {
        // Compare new value with old value
        if (acc.Rating != Trigger.oldMap.get(acc.Id).Rating) {
            // Your Logic
        }
    }
}
```

Example of after trigger:

```
trigger WelcomeKit on Account (after insert) {
    List<Case> cases = new List<Case>();
    for (Account account : Trigger.new) {
        Case case = new Case();
        case.Subject = 'Mail Welcome Kit';
        case.Account.Id = account.Id;
        cases.add(case);
    }
    insert cases;
}
```

Triggers are active as soon as they are saved.


<a name="DBArch"></a>

##  Data Architecture

<a target="_blank" href="https://www.youtube.com/watch?v=jrKA3cJmoms&t=18m23s">
<img alt="salesforce_data_schema" src="https://cloud.githubusercontent.com/assets/300046/8587497/05c1a464-25ba-11e5-85af-a85d888e9b07.png" /></a>

It doesn't have ORM (but seems to be there).

OrgID is hashed to one of 32 keys used to distribute.
Smart Primary Keys and Polymorphic Foreign Keys.
Creative de-normalization and pivoting.

<a name="Chatter"></a>

##  Chatter

Chatter History maintains 72 hours of feeds.

A Chatter group has only one owner but can have many managers.


<a name="Search"></a>

##  Search

Lists return 25 by default. But 5 - 50 can be set.

There is a maximum of 10 columns (fields)

Using Apache SOLR.

Salesforce is basically implementing Track (the ability to search and monitor conversations by keyword and topic)


Create forms and page layouts using drag-and-drop tools in the <strong>Page Layout editor</strong>.

## Programming languages

<a name="C#"></a>

### C# .NET Programming

.NET C# Programming

DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=NET_Development&criteria=ALLQUESTIONS">
	.NET Development</a>


<a name="Java"></a>

### Java Programming

Java Programming

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Java_Development&criteria=ALLQUESTIONS">
	Java Development</a>

http://docs.aws.amazon.com/lambda/latest/dg/java-gs.html
Getting Started (Authoring AWS Lambda Code in Java)

<a name="Clojure"></a>

### Clojure Programming

<a target="_blank" href="https://github.com/search?utf8=%E2%9C%93&q=salesforce">
Most starred (and forked) public Github library for salesforce</a> is
<a target="_blank" href="https://github.com/forcedotcom/SalesforceMobileSDK-iOS">
Force.com mobile SDK for iOS applications</a>

See <a target="_blank" href="
https://github.com/owainlewis/salesforce">
https://github.com/owainlewis/salesforce</a>



<a name="DebugLog"></a>

##  Debug Log

Debug logs can be obtained for other users.

Change Log Levels in the Debug menu.

3MB is the maximum size of a Debug Log. A message about truncated logs when truncation occurs.



<a name="TestData"></a>

## Test Data

Each object is assigned an 18 character identifier for API transaction.

Each object is assigned a 15 character identifier for internal reporting and data loading.



<a name="Testing"></a>

## Testing

Salesforce does not allow an app to deploy from a sandbox into production unless there is at least 75% coverage by tests.

<a target="_blank" href="https://pmd.github.io/">
PMD</a> <a target="_blank" href="https://en.wikipedia.org/wiki/PMD_(software)">("Programming Mistake Detector")</a> source code analyzer finds common programming flaws like unused variables, empty catch blocks, unnecessary object creation, etc. <a target="_blank" href="https://pmd.github.io/pmd-6.2.0/pmd_rules_apex.html">in Apex code</a>. 
It includes CPD, the copy-paste-detector. CPD finds duplicated code 

Any modification of Apex code requires rerun of tests to refresh code coverage results.
Salesforce also runs all tests before each major service upgrade and release to makes sure that no behavior in custom code has been altered as a result of any service upgrades.

Test classes don’t count toward the 3 MB maximum of Apex code in each org.

So construct test code in separate class file in the <strong>Developer Console</strong> | File | New Apex Class.

Decorating test code with `@IsTest` instead of the testMethod keyword allows parameters to be specified.

TUTORIAL: https://developer.salesforce.com/trailhead/module/apex_testing
on the Apex testing framework providea example.

```
@isTest
private class MyTestClass {
    @isTest static void myTest() {
        // code_block
    }
}
```

There is usually more test code lines for coverage of various state/conditions.

* testWarmTemp of 70
* testFreezingPoint of 32
* testBoilingPoint of 212
* testNegativeTemp of -10

Tests should also cover null values.

public classes are used in test data factory.

Test methods cannot send emails or call external services, only use mock callouts in tests.

Use the System.Test.loadData() with static resource (such as a CSV file).
PROTIP: Include the System. prefix in case a local Test class is created, which would cause test failure.

```
List<Contact> contacts = PrepareTestData.
```

SOSL searches performed in a test return empty results. To ensure predictable results, you can use Test.setFixedSearchResults() to define the records to be returned by the search.

https://www.iridize.com/ provides customized on-boarding guides based on specific workflows on Salesforce and other apps.

VIDEO TUTORIAL: <a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-design-patterns-part2">
Force.com Design Patterns, Part 2</a>



## Opportunity Stages

Opportunity Stages (with their probability): 

<table cellpadding="4" cellspacing="0">
<tr><th>Stage</th><th>Fields</th></tr>
<tr valign="top"><td> New (10%)</td><td>Application Submitted, Amount, Needs Insurance, Needs Waiver, Adventure Cost </td></tr> 
<tr valign="top"><td> Needs Information (20%)</td><td>Application Submitted, Needs Insurance, Needs Waiver </td></tr> 
<tr valign="top"><td> Negotiation (40%)</td><td>Discount, Promo Code, Adventure Cost, Amount </td></tr> 
<tr valign="top"><td> Negotiation Rejected (40%)</td><td>Discount, Adventure Cost, Amount </td></tr> 
<tr valign="top"><td> Awaiting Approval (60%)</td><td> Discount, Adventure Cost, Amount</td></tr> 
<tr valign="top"><td> Deposit Made (70%)</td><td> - </td></tr> 
<tr valign="top"><td> Scheduled (80%)</td><td> - </td></tr> 
<tr valign="top"><td> Completed (100%)</td><td> - </td></tr> 
<tr valign="top"><td> Cancelled (0%)</td><td> - </td></tr> 
</table>

