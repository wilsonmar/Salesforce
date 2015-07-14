This is a hands-on deep technical introduction to Salesforce so experience developers
can get to know the offering intimately and quickly.

## <a name="Developer"> Developer Setup</a>

1) Get a developer account from http://developer.salesforce.com/signup
   for a Developer Edition (DE) environment.

   PROTIP: During registration, the <strong>Username</strong> needs to be in the form of an email address.
   But email is not sent to the username, so you can use something unique 
   such as wilsonmar-234@jetbloom.com where -234 is unique to another developer instance.
   
 2) When the email "Your Developer Edition Login Information" arrives, click on the link to change password.
 
    PROTIP: Use the unique portion in your password to make it easier to remember.
 
 3) Turn on Developer from Setup | Personal Information. Click Edit. Scroll to click
 <strong>Development Mode</strong> and <strong>Show View State in Development Mode</strong>.
 Save.
 
## <a name="Businesses"> Businesses from the Salesforce Corporation (CRM)</a>
Before we get started, note that Salesforce as a company has several offerings (all SaaS in the cloud):

  * <a target="_blank" href="http://www.Salesforce.com/">Salesforce.com</a>
    CRM (Customer Relationship Management) -- the company's stock market symbol --
    is categorized as a SaaS (Software as a Service)
    offering a complete package much like what Google Apps (Gmail), Zoho, and Quickbooks Online provides
    in a "multi-tenant" environment which serves many customers (tenants) on the same hardware.
    Salesforce also includes project management.

    http://www.salesforce.com/platform/overview/
    
    "Salesforce1" is the brand name to emphasize that mobile capabilities are automatically provided
    when apps are created.

  * <strong>ExactTarget</strong> Fuel Marketing Cloud emails to target specific prospects.
  
  * <a target="_blank" href="http://www.financialforce.com/">FinancialForce.com</a>
    is also a SaaS providing software for managing financial information.

  * <a target="_blank" href="http://www.Force.com/"> Force.com</a> 
    runs underneath SaaS, and is categorized as a PaaS (Platform as a Service) service
    which generalizes the coding in CRM for use in other user domains

    https://developer.salesforce.com/docs/atlas.en-us.fundamentals.meta/fundamentals/

  * <a target="_blank" href="http://www.Heroku.com/">Heroku.com</a>
    provides free hosting for low-volume apps written in open-source programming.

  * <a target="_blank" href="http://www.database.com/">Database.com</a>

  * Site.com ???

1) See https://www.youtube.com/watch?v=jrKA3cJmoms "Multi Tenant Magic" ([45] 17 Nov 2014)
   in the Salesforce Developers YouTube channel https://www.youtube.com/channel/UCKORm8sxh3cheBpqs0akkhg 

2) Read the whitepaper in http://developer.Force.com

The company exposes data in each of these businesses in an <a href="#APIs">API</a>
for computers to access without a human UI.

BTW, <a target="_blank" href="http://encycolorpedia.com/1798c1">
Colors in Salesforce screens</a>


## <a name="LaborDemand"> Labor Demand</a>
Here is why you want to spend time on this.

Strong and growing.
  * Salesforce Growth rate 35% year-over-year
  * Salesforce is not cheap: thousands of dollars per month
  * Salesforce has not been profitable, but its market value (stock price x shares) is $48 billion dollars.
  * Microsoft's $50 billion offer was rejected.
  * The prediction is for a buyout from Oracle, where Salesforce CEO Benoitt had worked.

Salesforce and Force.com are more attractive to mid-market customers than SAP and Oracle.
So you're not as much forced to work for large consulting firms living out of hotels. 

DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Jobs_Board&criteria=ALLQUESTIONS">Jobs Board</a>

Salesforce, as a company, pioneered the 1:1:1 model, which donates one percent of our time, equity, and product to non-profit organizations via http://www.salesforcefoundation.org/

Use case:

* Reliance on spreadsheets
* Collaboration via email
* Documents shared on local file directories
* Time-intensive, manual steps 

Technologically:

  * The <strong>declarative</strong> aspects of the platform is why the company's main number  is 800.NO-SOFTWARE.
  
    It has CRUD style security permissions model. Learn this first.
  
  * The <strong>Apex</strong> (Java-like) object-oriented programming language
    managing classes and triggers defined in a database.
    This includes Apex Email services and Call-Outs and Apex (SOAP & REST API) web services

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Apex_Code_Development&criteria=ALLQUESTIONS">
	Apex Code Development</a>
	
  * The <strong>Visualforce</strong> web development language managing HTML+CSS+JS pages and components,
    which uses HTML tags like PHP, ASP.NET, and ColdFusion.

  * The <strong>Lightning</strong> components to create user-developed apps.
  
 
	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Lightning&criteria=ALLQUESTIONS">
	API Board</a>

  * SOA (Service Oriented Architecture)

  * Chattr instant-message

  * Developer Console
  * Mobile apps for iOS | Android
      *  SalesforceA, the mobile app for admins
      *  Salesforce1 mobile app for end-users

I think Salesforce provides an easy and fast way to create apps.

  * Free development environment (no 7 day trials)
  * Integrations
  *  Free, full-featured copy of the Salesforce1 Platform
  * Develop apps with clicks or code
  * Fine-grained access control 
  * highly scalable
  * API-first to integrate anything with everything
  * Use popular UI frameworks like Bootstrap, JQuery and more 


## <a name="SkillCerts"> Skill Certification</a>

There are technical jobs:
  * Administrator
  * Developer (which includes database administrators)
  * Certified Technical Architect

https://developer.salesforce.com/trailhead provides FREE:

| Trail/Project | Hours | Points |
| ----- | :---: | -----: |
| Admin Intro. Trail | 9 | 10,200 |
| Admin Intermediate Trail | 5.9 | 8,200 |
| Developer Beginner Trail | 15 | 19,400 |
| Developer Intermediate Trail | 10 | 8,100 |
| Developer Trail - Mobile SDK | 6.8 | 3,000 |
| <a href="#ConfApp">Build a Conference Management App</a> | 3 |  550 |
| <a href="#SuggestionApp"> Build Suggestion Box App</a> | 1.9 | ? |
| Quick Start: Lightning Components | 0.5 | 150 |
| Quick Connect: Lightning Connect | 0.3 | 100 |
| Total: | 50 | 45,000 |

Points earned show up on your profile.

* Chris Duarte (@TheChrisDuarte) is the Managing Editor of #Trailhead 
* Sandeep Bhanot (@cloudysan) is the #Trailhead Product Owner/ Evangelist.

There is also Salesforce University (@SalesforceU) which offers paid classes.

Register for certification tests at 
https://www.webassessor.com/wa.do?page=publicHome&branding=SALESFORCE


### <a name="ConfApp"> Build Conference App</a>
<a target="_blank" href="https://developer.salesforce.com/trailhead/project/salesforce_developer_workshop">
Build a Conference Management App</a>
used during
Step-by-step Salesforce1 Developer Workshop</a> 

was created by 
Christophe Coenraets, of http://coenraets.org/blog/
(Salesforce Developer Evangelist by day and Ionic Framework expert at night).
Questions and questions about the trailhead content can be entered in the Disqus component in 
<a target="_blank" href="http://ccoenraets.github.io/salesforce-developer-workshop/">
his github.io website</a>

makes use of Connected app whose source is in 
<a target="_blank" href="https://github.com/ccoenraets/salesforce-developer-workshop">
a github repo</a> that contains http://goratchet.com/ CSS library
and ForceTK (https://github.com/developerforce/Force.com-JavaScript-REST-Toolkit)
to integrate with Salesforce.

### <a name="SuggestionApp"> Build Suggestion Box App</a>
<a target="_blank" href="https://developer.salesforce.com/trailhead/project/suggestion_box">
Build a Suggestion Box</a> shows how to create reports and dashboards.

Questions and questions about the content can be entered in the Disqus component in the github.io website
<a target="_blank" href="http://ccoenraets.github.io/salesforce-developer-advanced/">
Advanced Developer Workshop</a> generated from 
<a target="_blank" href="https://github.com/ccoenraets/salesforce-developer-advanced">
a github repo</a>.


## <a name="DevDocs"> Developer Docs</a>
* <a target="_blank" href="https://help.salesforce.com/apex/HTViewHelpDoc?id=glossary.htm">
 Glossary</a> of terms.
* <a target="_blank" href="https://developer.salesforce.com/docs"> 
                                   Developer.salesforce.com/Docs</a>
* <a target="_blank" href="https://developer.force.com/architect"> 
                                   Developer.force.com/architect</a>
* <a target="_blank" href="https://developer.force.com/security"> 
                                   Developer.force.com/security</a>
* <a target="_blank" href="https://developerforce.com/docs"> 
                                   Developer.salesforce.com = Developerforce.com</a>
  with email dev@developerforce.com


## <a name="Social"> Social</a>
Salesforce for Outlook does not work on Mac Office 2011 Outlook.

But Salesforce can link to Google Apps Gmail accounts in Setup | Google Apps (on left menu).

Salesforce enterprise customers can open up tunnels and share data with each other. Cool. It’s EDI for the masses.

1) <a target="_blank" href="https://developer.salesforce.com/forums?communityId=09aF00000004HMGIA2#!/feedtype=RECENT&dc=Trailhead&criteria=ALLQUESTIONS"> Trailhead forum</a>

2) In Twitter follow each of the <a target="_blank" href="https://developer.salesforce.com/mvp">
   Force.com MVPs in the Discussion Forum</a>

3) Plan to be in San Francisco September 15—18, 2015 for the
   <a target="_blank" href="http://www.salesforce.com/dreamforce/DF15/">
   Dreamforce</a> user convention which includes a hackathon.
   Vidoes sessions into YouTube.

4) Salesforce Success Community https://success.salesforce.com/

 * LinkedIn

 * Meetups

 * Stackoverflow

 * Consultanting Partners

 * Github repos

## <a name="ChangeMgmt"> Change Management</a>
Salesforce was launched in 2000, with SOAP API (web service) added 2004.
The Salesforce1 brand name appeared in 2014.

Three releases are planned per year, named by season such as 
* <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/summer14/">
	Summer 2014</a>
* <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/winter14/">
	Winter 2014</a>
* Winter 2015 for the beginning of a year
* <a target="_blank" href="https://developer.salesforce.com/events/webinars/Summer_15_Release_Preview?d=70130000000NJR1">
	Summer 2015</a>, etc.

App logos that appear at the upper left should be no larger than 300 pixels wide by 55 pixels high.

Aditionally, beta releases of Minimally Marketable Features (MMF) go out.
So certification holders must keep taking tests to keep up.
 
Salesforce reportedly has 55,000 enterprise customers, 1.5 million individual subscribers, 30 million lines of third-party code,
 
(Running on 1,000 machines, half of which are for redundancy. )[http://techcrunch.com/2009/03/23/the-efficient-cloud-all-of-salesforce-runs-on-only-1000-servers/]

4 copies of each Oracle RAC database Array is maintained via real-time async replication across 2 instances: 
2 on-line and 2 off-line.

http://www.trust.salesforce.com/
provides real-time information on system availability, performance history, and security alerts.

The Salesforce1 mobile emulator is at http://<instance ID>.salesforce.com/one/one.app
See https://developer.salesforce.com/docs/atlas.en-us.salesforce1.meta/salesforce1/dev_best_practices_development_process.htm


<a target="_blank" href="https://cloud.githubusercontent.com/assets/300046/8587824/39934586-25bf-11e5-90a9-d3875c215ec7.png">
<img alt="salesforce_4_copies" src="https://cloud.githubusercontent.com/assets/300046/8587824/39934586-25bf-11e5-90a9-d3875c215ec7.png" /></a>


## <a name="PluralsightTutorials"> Pluralsight Tutorials</a>
As of this writing, video tutorials at Pluralsight are rather dated:

Force.com Platform - The Big Picture
http://www.pluralsight.com/courses/forcedotcom-bigpicture
for Beginners 
by Don Robins 1h 24m 29 Jan 2013
is 

Force.com for .NET Developers 
<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-dotnet-developers">
1h 37m 25 Feb 2013 video</a>
by Dan Appleman, author of http://advancedapex.com/

## <a name="VisualforceTutorials"> Visualforce Tutorials</a>
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


## <a name="Bulk"> Bulk Actions</a>
With its focus on UI, Salesforce does not provide a <strong>Bulk Delete</strong> natively.
A Java wrapper is described in the 3h 2m [paid] Pluralsight tutorial from 26 Nov 2012
<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-design-patterns-pt1">
Force.com Design Patterns - Part 1</a>
by Adam Purkiss.
There is also a 1h 45m 01 May 2013
<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-design-patterns-pt2">
Force.com Design Patterns - Part 2</a>
by Adam Purkiss.



## <a name="PluralsightTutorials"> MetaData</a>
Metadata literally means data about data. Read https://developer.salesforce.com/page/An_Introduction_to_Force.com_Metadata

A Salesforce <strong>Org</strong> (short for organization) is a 
<strong>container</strong> for metadata that drives the dynamic engine (kernel).

Salesforce’s secret sauce: It queries its databases with “The Multi-Tenant Optimizer.”

<strong>System objects</strong> are: User, Event, Activity, Task.

Object names generated are suffixed by two underlines followed by a letter:

   * __c for custom object.

   * __r for relationship to follow.

   * __s for a latitude and longitude (a single compound geolocation field with two components).


## <a name="ArchStack"> Force.com Architectural Stack</a>
<a target="_blank" href="https://www.youtube.com/watch?v=zarV59FCAok">
Various Architecture Diagrams</a>

  * View layer for UI
  * Controller / APIs (for external programmatic access)
  * Application Lobic
  * Database
  * Infrastructure

All these are involved in each cross-cutting services.

## <a name="ArchServices"> Force.com cross-cutting Services</a>
3:19

 * Metadata Driven Functionality
 * Declarative Customization
 * Programmatic Customization (APEX and VisualForce)
 * User Authentication and Authorization
 * Multi-Featured (Sales and Service Cloud CRM)
 * Social Networking (Chatter)
 * Messaging and Notifications (Email Services, Outbound Messages)
 * Monitoring and Logging
 * Polymorphic Behavior
 * Memory Management
 * Metadata Synchronization
 * Transactional Data Persistence

## <a name="ControllerExtension"> Controller Extension</a>

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

To access a graphic image, you need to create two data types:
One is a 255-length text field namee Picture_path which is referenced by
a Formula data type `IMAGE(Picture_Path__c, '', 350,300)` with Text return type.

In the Developer Console, see run output to `System.Debug('Hello');` by
filtering execution logs for just USER_DEBUG events.


## <a name="UI"> Salesforce Apps UI</a>
1) Go to webpage <a target="_blank" href="http://login.salesforce.com">login.salesforce.com</a>

The blue sausage (app selector) at the upper right lists <strong>apps</strong>.
An app is a group of tabs that work as a unit to provide functionality. Users can switch between apps using the Force.com app drop-down menu at the top-right corner of every page.
2,700+ apps have been created by Salesforce partners.

2) Clicking on a menu item displays on the <strong>main window</strong> in the middle of the screen.

   Each app has a different set of menu tabs going across the screen, beginning with <strong>Home</strong>

   A key differentiator with Salesforce is that, unlike menus on Mirosoft Office software, 
   which has menu items focused on user actions such as Edit and Print,
   Salesforce menu items are focused on <strong>information</strong> such as 
   Opportunities and Contacts.

3) Click the [+] at the right end of the menu.

4) After login, note the URL, such as `https://na31.salesforce.com/...`

	The "na31" in this case is the <strong>instance</strong> identifier.

	Salesforece maintains 50 production instances used by about 8,000 customers each.

	Availability history of each instance is listed at
	<a target="_blank" href="http://www.trust.salesforce.com/trust/instances">
	http://www.trust.salesforce.com/trust/instances</a>


## <a name="UserSetup"> One-time User Setup</a>
1) Click Setup at the upper-right corner.

	Selections in the left-menu is organized into Administer, Build, Deploy, and Monitor.

[Setup video](https://www.youtube.com/watch?t=19&v=uM9Nli7xpEM)

1) [__] Setup verification to mobile phone.

2) [__] Setttings: Personal: Language & Time Zone.

3) [__] Add a photo of yourself https://na31.salesforce.com/_ui/core/userprofile/UserProfilePage?tab=sfdc.ProfilePlatformFeed

4) [__] Setttings: Personal: Advanced User Details: Use a token generated from an authenticator app on your mobile device.
   https://play.google.com/store/apps/details?id=com.salesforce.authenticator
   
   
## <a name="APIs"> APIs</a>
From https://developer.salesforce.com/page/Salesforce_APIs

<ul><li> <a href="/page/REST_API" title="REST API">REST API</a> - Access objects in your organization using REST.

</li><li> <a href="/page/SOAP_API" title="SOAP API">SOAP API</a> - Integrate your organization’s data with other applications using SOAP.

</li><li> <a href="/page/Tooling_API" title="Tooling API">Tooling API</a> - Build custom development tools for Force.com applications. Coming soon!

</li><li> <a href="/page/Chatter_API" title="Chatter API">Chatter REST API</a> - Access Chatter feeds and social data such as users, groups, followers, and files using REST.

</li><li> <a href="/page/Bulk_API" title="Bulk API">Bulk API</a> - Load or delete large numbers of records.

</li><li> <a href="/page/An_Introduction_to_Force.com_Metadata" title="An Introduction to Force.com Metadata">Metadata API</a> - Manage customizations in your org and build tools that manage the metadata model (not the data, itself).

</li><li> <a href="/page/Streaming_API" title="Streaming API">Streaming API</a> - Provide a stream of data reflecting data changes in your organization.

</li><li> <a href="/page/Creating_REST_APIs_using_Apex_REST" title="Creating REST APIs using Apex REST">Apex REST API</a>	- Build your own REST API in Apex. This API exposes Apex classes as RESTful Web services.

</li><li> <a rel="nofollow" class="external text" href="http://www.salesforce.com/us/developer/docs/apexcode/Content/apex_web_services.htm">Apex SOAP API</a> - Create custom SOAP Web services in Apex. This API exposes Apex classes as SOAP Web services.

</li><li> <a rel="nofollow" class="external text" href="https://developer.salesforce.com/page/Data.com_API">Data.com API</a> - Data.com provides 100% complete, high quality data, updated in real-time in the cloud, and with comprehensive coverage worldwide.
</li></ul>

SOAP format APIs are mainly for metadata (not business data).

The REST API returning JSON or XML uses "hypermedia" design.

The "BULK" REST API for large datasets (of 50 million rows)
of XML and CSV (rather than JSON) format.
Dan Appleman (Advanced Apex Programming) believes that all code should be designed and developed in bulk (multi-object) rather than bulkify later.

The Streaming API is a publish/subscribe push model to notify changes to object data.
It uses Bayeux Protocol and CometD libraries
used mainly in social networking apps.

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=APIs_and_Integration&criteria=ALLQUESTIONS">
	API Board</a>

https://github.com/jorgevaldivia/salesforce_bulk
sample bulk API interface Ruby gem.

## <a name="3rdPartyAPI"> 3rd Party API Integrations</a>
There are 3rd-party Salesforce API integrations:

	* https://zapier.com/zapbook/salesforce/



## <a name="AppExchange"> Apps and AppExchange Marketplace</a>
https://appexchange.salesforce.com/
(described at http://www.salesforce.com/appexchange/overview/)
is an online marketplace where you can browse, test drive, download, and 
install pre-built apps and components right into your Salesforce environment. 

1) Menu Build | Develop | AppExchange Marketplace.

2) Search for apps by keyword.

3) Click Get It Now.

Read https://www.salesforce.com/form/conf/platform-appguide.jsp

In 2015 Salesforce has 30M lines of code written by others via APPExchange.

Salesforce Wear https://developer.salesforce.com/wear
includes a set of apps for Apple Watch, Google Glass, and more wearables that all access Salesforce data via APIs.


## <a name="Sandbox"> Sandbox</a>
Sandboxes are copies of your organization in a separate environment. They are used for development and testing. 
See Sandbox Overview at https://help.salesforce.com/HTViewHelpDoc?id=create_test_instance.htm&language=en_US

Changesets are used release to production.

PROTIP: Most professional developers prefer to use the Force.com IDE with a local copy
rather than the on-line Developer Console to avoid losing work if a refresh occurs.

Revision to earlier changes may not be possible.

PROTIP: Build your own instrumentation.


## <a name="Database"> Database Access</a>
Because parent-child and other data relationships are defined up front in the 
<strong>Data Model UI</strong>,
the Salesforce Object Query Language (SOQL) coded to retrieve filtered data
does not allow dynamic implicit joins like those used in ANSI SQL.
Furthermore, SOQL is like Microsoft's LINQ because it contains domain-specific names like "Opportunities".

This approach enables Salesforce engineers to optimize indexing their own way,
invisible to developers and users, such as
returning variable data types in multi-dimensional arrays.

SOQL can be coded and executed dynamically within the Developer Console Query Editor.
Individual rows returned can then be dynamically edited, inserted, and deleted.

Salesforce Object Search Language (SOSL) ???

Salesforce Data Manipulation Language (DML) is coded in Apex classes and triggers
to insert, update and delete data.

See the <a target="_blank" href="https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/">
Force.com SOQL and SOSL Reference</a>

## <a name="Triggers"> Triggers</a>
Each trigger is coded in Apex to a particular sObject.

"(before insert, before update)" are coded as part of the definition.

Triggers are active as soon as they are saved.



## <a name="DBArch"> Data Architecture</a>
<a target="_blank" href="https://www.youtube.com/watch?v=jrKA3cJmoms&t=18m23s">
<img alt="salesforce_data_schema" src="https://cloud.githubusercontent.com/assets/300046/8587497/05c1a464-25ba-11e5-85af-a85d888e9b07.png" /></a>

It doesn't have ORM (but seems to be there).

OrgID hashed to one of 32 keys used to distribute.
Smart Primary Keys and Polymorphic Foreign Keys.
Creative de-normalization and pivoting.

When you delete a custom object, Salesforce does not add it to the Recycle Bin. Instead, deleted objects appear in the Deleted Objects list for 15 days. During this time, the object and its data are soft deleted, meaning you can restore or permanently erase (hard delete) the object and its data. After 15 days, the object and its data are automatically hard deleted.

Soft-deleted custom objects and their data count against your organization’s limits; hard-deleted items do not.

See them in the Schema Browser.

## <a name="Search"> Search</a>
Using Apache SOLR.

Salesforce is basically implementing Track (the ability to search and monitor conversations by keyword and topic) 


## <a name="Github"> Github</a>
	https://github.com/forcedotcom/SalesforceMobileSDK-Android

Create forms and page layouts using drag-and-drop tools in the <strong>Page Layout editor</strong>.


## <a name="C#"> C# .NET Programming</a>
.NET C# Programming

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=NET_Development&criteria=ALLQUESTIONS">
	.NET Development</a>


## <a name="Java"> Java Programming</a>
Java Programming

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Java_Development&criteria=ALLQUESTIONS">
	Java Development</a>

http://docs.aws.amazon.com/lambda/latest/dg/java-gs.html
Getting Started (Authoring AWS Lambda Code in Java)

## <a name="Clojure"> Clojure Programming</a>
<a target="_blank" href="https://github.com/search?utf8=%E2%9C%93&q=salesforce">
Most starred (and forked) public Github library for salesforce</a> is
<a target="_blank" href="https://github.com/forcedotcom/SalesforceMobileSDK-iOS">
Force.com mobile SDK for iOS applications</a>

https://github.com/owainlewis/salesforce


