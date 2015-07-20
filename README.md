<a target="_blank" href="http://www.salesforce.com/" title="salesforce_logo_2015_218x218">
<img align="right" src="https://cloud.githubusercontent.com/assets/300046/8766647/6285ae7e-2dfe-11e5-9a39-7cdf5473e14b.png" /></a>
This is intended to be a hands-on guided introduction such that experience developers new to Salesforce 
can get to know the offering deeply yet quickly.

This is a living document and will continue to be updated with more helpful information and examples as they become available.
QUESTION: and ??? mark where I need input.

## <a name="HowToContribute"> How to Contribute</a>

I welcome you to contribute on this GitHub https://github.com/wilsonmar/Salesforce. When this repo is changed, 
changes are [pushed to Gitbook.io automatically](https://www.gitbook.io/book/wilsonmar/Salesforce/activity).

Editing the book can be done either by updating the markdown files with a text editor, or opening the repository in [the Gitbook desktop app](https://github.com/GitbookIO/editor/blob/master/README.md). The desktop app will give you a live preview option.

## <a name="License"> License</a>

[Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](http://creativecommons.org/licenses/by-sa/4.0/) unless otherwise stated


## <a name="Browsers"> Browsers</a>
One of the distinctives about Salesforce is that it works completely over the public internet. 

This means users need to use internet browsers: 
Internet Explorer that comes with Windows or Firefox and Chrome installed by users.

DEVDOC: In [Supported Browsers](https://developer.salesforce.com/docs/atlas.en-us.salesforce_supported_browsers_cheatsheet.meta/salesforce_supported_browsers_cheatsheet/)
some Internet Explorer support is limited. Firefox needs to be configured.

In 2014 Salesforce announced Superpod, offering on HP servers Salesforce will maintain as a dedicated offering
for "the largest of the world's largest enterprises" such as the US FDA.

Salesforce has 15 compute pods distributed across its global datacenters to run its entire operation.

## <a name="Developer"> Developer Setup</a>

1) Get a developer account from http://developer.salesforce.com/signup or http://sforce.co/WBtUN7
   for a Developer Edition (DE) environment.

   PROTIP: During registration, the <strong>Username</strong> needs to be in thte form of an email address.
   But email is not sent to the username, so you can use something unique 
   such as wilsonmar-234@jetbloom.com where -234 is unique to another developer instance.
   
   PROTIP: Have a "main" developer environment that you use for Chatter and Help.
   
 2) When the email "Your Developer Edition Login Information" arrives, click on the link to change password.
 
    PROTIP: Use the unique portion in your password to make it easier to remember.
 
 3) Turn on Developer from Setup | Personal Information. Click Edit. Scroll to click
 <strong>Development Mode</strong> and <strong>Show View State in Development Mode</strong>.
 Save.


## <a name="LoginUI"> Salesforce User Home UI</a>
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


### <a name="Instances"> Instances among Orgs</a>

4) After login, note the URL, such as `https://na31.salesforce.com/...`

   The "na31" in this case is the "multi-tenant" <strong>instance</strong> identifier
   used by about 8,000 customers (tenants) each on the same hardware instance.

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


### <a name="Redundancy"> Redundancy</a>
4 copies of each Oracle RAC database Array is maintained via real-time async replication across 2 instances: 
2 on-line and 2 off-line.

<a target="_blank" href="https://cloud.githubusercontent.com/assets/300046/8587824/39934586-25bf-11e5-90a9-d3875c215ec7.png">
<img alt="salesforce_4_copies" src="https://cloud.githubusercontent.com/assets/300046/8587824/39934586-25bf-11e5-90a9-d3875c215ec7.png" /></a>

* https://en.wikipedia.org/wiki/Oracle_Data_Guard
* https://en.wikipedia.org/wiki/Oracle_RAC


## <a name="OrgDefaults"> Corporate Global Settings Defaults</a>
To set <strong>OWD (Organization-Wide Defaults)</strong>, such as Fiscal Year start date, Record Currency.

1) Click Setup at the upper-right corner.

2) 

A Locale selection determine how dates, time, numbers, names are displayed, 
based on Language, Locale, Time Zone.

* Company Profile
* UI Settings
* Calendar Settings
* Search Settings
* Chatter


## <a name="UserSetup"> One-time User Setup</a>
The 6 standard profiles of permissions:

* Administrator
* Solution Manager
* Read Only
* Standard User
* Marketing User
* Contract Manager

Up to 1000 Permission sets per org can be setup to grant additional permissions without changing user profiles.


1) Click Setup at the upper-right corner.

	Selections in the left-menu is organized into Administer, Build, Deploy, and Monitor.

[Setup video](https://www.youtube.com/watch?t=19&v=uM9Nli7xpEM)

1) [__] Setup verification to mobile phone.

2) [__] Setttings: Personal: Language & Time Zone.

3) [__] Add a photo of yourself https://na31.salesforce.com/_ui/core/userprofile/UserProfilePage?tab=sfdc.ProfilePlatformFeed

4) [__] Setttings: Personal: Advanced User Details: Use a token generated from an authenticator app on your mobile device.
   https://play.google.com/store/apps/details?id=com.salesforce.authenticator
   

## <a name="UI"> Standard UI Declarative</a>
Collapsable Sidebar can be enabled to reduce horizonal scrolling.

1) Create a new page layout for the Contacts object.



### <a name="Keyboard"> Most Common UI Actions and Keyboard Shortcuts</a>
Salesforce does not provide keyboard shortcuts in the Setup "Aloha" UI.
However, if you have downloaded Google Chrome, you can add-on Salesforce Hotkeys at
https://chrome.google.com/webstore/detail/salesforce-hotkeys-beta/hkpmdgakkflkddmiffelfaokkgoamlil?hl=en

The list of hotkeys is <a target="_blank" href="https://docs.google.com/spreadsheets/d/1GPO0dmEkSjodrUaF_rN_ZuErBfbRfid3_zItAQc5sus/pubhtml?gid=1040039296&single=true">
here</a>.

CTRL + ALT/Option is used to select tabs:

   * G = List view
   * R = Reports

CTRL + SHIFT + F or META + SHIFT + F keys are used to Find text in the Search box.

CTRL + SHIFT or META + SHIFT keys are used to select <strong>Create New</strong>:

   * A = Account (with related contacts, opportunities, and cases)
   * C = Contact (of individual people)
   * O = Opportunity (associated with a Contact in an Account with potential sales)
   * L = Lead (associated with campaigns)

The other standard objects that are the bread-and-butter data Salesforce CRM was built to handle:

   * ? = Case
   * ? = Solution
   * ? = Campaign

Additionally:

   * R = Report
   * T = Task
   * E = Event
   * S = Suggestion

CTRL + key within a dialog:

   * E = Edit
   * S = Save
   * Q = Quit / Cancel

Up to 10 Recent Items are displayed.


### <a name="RecycleBin"> Recycle Bin</a>
When a customer object is deleted, Salesforce does not immediately add it to the Recycle Bin.
Instead, deleted objects appear in the <strong>Deleted Objects list for 15 days</strong>
until it is automatically hard deleted.
During an object's "soft deleted" time, it can be restored or permanently erased (hard deleted).

Soft-deleted custom objects and their data still count against your organization’s limits; 
hard-deleted items do not.

See them in the Schema Browser.


## <a name="Businesses"> Businesses from the Salesforce Corporation (CRM)</a>
At http://www.salesforce.com/crm/editions-pricing.jsp
   note DE has Enterprise capabilities, more powerful than the Professional Edition.

Salesforce as a company has several offerings (all SaaS in the cloud):

* <a target="_blank" href="http://www.Salesforce.com/">Salesforce.com</a>
    CRM (Customer Relationship Management) -- the company's stock market symbol --
    is categorized as a SaaS (Software as a Service)
    offering a complete package much like what Google Apps (Gmail), Zoho, and Quickbooks Online.
    Salesforce also includes project management.

   http://www.salesforce.com/platform/overview/
   
   There are separate <strong>feature licenses</strong>
  
   * Marketing User
   * Apex Mobile User
   * Salesforce CRM Content User
   * Force.com Flow User
  
Other businesses:

   * Service Cloud - Sales force automation and CRM
   * Sales Cloud - Complete CRM customer service solutions
   * Marketing Cloud - Build and manage 1:1 customer journeys.
   * Commmunity Cloud - Connect customers, partners, and employees
   * Analytic Cloud - Business intelligence and analytics software solutions

   * Salesforce1 Platform - Turn your idea into apps today with the Salesforce1 Platform.

    "Salesforce1" is the brand name to emphasize that mobile capabilities are automatically provided
    when apps are created.

  * Data.com - B2B prospecting and data cleansing
  * Pardot - B2B marketing automation
  * Desk.com - Customer support for small business

  * <strong>ExactTarget</strong> Fuel Marketing Cloud emails to target specific prospects.
  
  * <a target="_blank" href="http://www.financialforce.com/">FinancialForce.com</a>
    is also a SaaS providing software for managing financial information.

  * <a target="_blank" href="http://www.Force.com/"> Force.com</a> 
    runs underneath SaaS, and is categorized as a PaaS (Platform as a Service) service
    which generalizes the coding in CRM for use in other user domains

  * <a target="_blank" href="http://www.Heroku.com/">Heroku.com</a>
    provides free hosting for low-volume apps written in open-source programming.

    [Getting Started with Ruby on Heroku](https://developer.salesforce.com/docs/atlas.en-us.articles.meta/articles/)

  * <a target="_blank" href="http://www.database.com/">
    Database.com</a>

  * Site.com ???

  * Work.com was retired July 10, 2015. It was a sales performance management solution for on-boarding new reps faster, coaching reps to close more deals, and and rewarding successful behaviors.

    [Work.com chatter](https://success.salesforce.com/_ui/core/chatter/topics/TopicPage?id=0TO300000004GDW&ref=group_profile)

1) See https://www.youtube.com/watch?v=jrKA3cJmoms "Multi Tenant Magic" ([45] 17 Nov 2014)
   in the Salesforce Developers YouTube channel https://www.youtube.com/channel/UCKORm8sxh3cheBpqs0akkhg 

2) Read the whitepaper in http://developer.Force.com

The company exposes data in each of these businesses in an <a href="#APIs">API</a>
for computers to access without a human UI.

BTW, <a target="_blank" href="http://encycolorpedia.com/1798c1">
	Colors in Salesforce screens</a>


## <a name="LaborDemand"> Labor Demand</a>
Here is why you want to spend time on Salesforce.

The company has seen a growth rate of 35% year-over-year unrivaled in the stock market:
![crm_stock_to_20150718](https://cloud.githubusercontent.com/assets/300046/8766609/e7cf7120-2dfc-11e5-981a-433ceba95b37.png)

  * Gartner says "Salesforce leads market share with 16% in 2013 vs. SAP with 13%, and Oracle with 10%."
  * Salesforce is not cheap: thousands of dollars per month
  * Salesforce has not been profitable, but its market value (stock price x shares) is $48 billion dollars.
  * Microsoft's $50 billion offer was rejected.
  * The prediction is for a buyout from Oracle, where Salesforce CEO Benoitt had worked.

Salesforce and Force.com are more attractive to mid-market customers than SAP and Oracle,
which tends to impose industry-specific workflows on implementations.
So you're not as much forced to work for large consulting firms living out of hotels. 

DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Jobs_Board&criteria=ALLQUESTIONS">Jobs Board</a>

Salesforce, as a company, pioneered the 1:1:1 model, which donates one percent of our time, equity, and product to non-profit organizations via http://www.salesforcefoundation.org/

Use case:

* Reliance on spreadsheets
* Collaboration via email
* Documents shared on local file directories
* Time-intensive, manual steps 

I think Salesforce provides an easy and fast way to create apps.

  * Free development environment (no 7 day trials)
  * Integrations
  * Free, full-featured copy of the Salesforce1 Platform
  * Develop apps with clicks or code
  * Fine-grained access control 
  * highly scalable
  * API-first to integrate anything with everything
  * Use popular UI frameworks like Bootstrap, JQuery and more 


Technologically:

  * The <strong>declarative</strong> aspects of the platform is why the company's main number is 800.NO-SOFTWARE.
  
    It has CRUD style security permissions model. Learn this first.
  
  * The <strong>Apex</strong> (Java-like) object-oriented programming language
    managing classes and triggers defined in a database.
    This includes Apex Email services and Call-Outs and Apex (SOAP & REST API) web services

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Apex_Code_Development&criteria=ALLQUESTIONS">
	Apex Code Development</a>
	
  * The <strong>Visualforce</strong> web development language managing HTML+CSS+JS pages and components
    using HTML tags like PHP, ASP.NET, and ColdFusion.

  * The <strong>Lightning</strong> components to create user-developed apps.
  
 
	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Lightning&criteria=ALLQUESTIONS">
	API Board</a>

  * SOA (Service Oriented Architecture)

  * Chattr instant-message


## <a name="SkillCerts"> Skill Certification</a>
Register for certification tests at 
https://www.webassessor.com/wa.do?page=publicHome&branding=SALESFORCE

For Administrators:

* ADM201 

* ADM211 Advanced Administrator Certification

For Developers (which includes database administrators):

* DEV401 (Building Applications with Force.com and <a href="#Visualforce">Visualforce</a>)
http://certification.salesforce.com/developers
focuses on declarative configuration rather than programming.

* DEV501 involves Apex coding

For Solution Architects:

* Certified Technical Architect


## <a name="VersionChangeMgmt"> Version Change Management</a>
Salesforce was launched in 2000, with SOAP API (web service) added 2004.
The Salesforce1 brand name appeared in 2014.

Three releases are planned per year, named by season (avoiding Fall):

| Force Version | API Version |
| ----:         | -----: |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/summer15/">Summer '15</a> | 34.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/spring15/">Spring '15</a> | 33.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/winter15/">Winter '15</a> | 32.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/summer14/">Summer '14</a> | 31.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/spring14/">Spring '14</a> | 30.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/winter14/">Winter '14</a> | 29.0 |

Additionally, beta releases of Minimally Marketable Features (MMF) go out.
So certification holders must keep taking tests to keep up.
 
App logos that appear at the upper left should be no larger than 300 pixels wide by 55 pixels high.
Adjust the number of colors in .gif or .jpg so they are under the 20kb size limit.

[Running on 1,000 machines, half of which are for redundancy. ](http://techcrunch.com/2009/03/23/the-efficient-cloud-all-of-salesforce-runs-on-only-1000-servers/)


## <a name="DevDocs"> Developer Docs</a>
1) <a target="_blank" href="https://developer.salesforce.com/docs/atlas.en-us.fundamentals.meta/fundamentals/">
   Force.com Platform Fundamentals</a> is the "Bible" for Salesforce certification questions.
   It has "Try it" hands-on exercises to develop a Recruitment app.
   The January 2015 version 9 online contains 402 pages.

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


## <a name="Social"> Social Media</a>
Among [Quizzes](https://quizlet.com/subject/salesforce/?sortBy=mostRecent):

* https://quizlet.com/87010545/dev-401-all-flash-cards/ has over 1,000 items.
* [Salesforce ADM 201 - Up through Spring '14 Release](
https://quizlet.com/35268499/salesforce-adm-201-up-through-spring-14-release-flash-cards/)
has over 300 items.

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

 * List of Meetups are at http://salesforce.meetup.com/all/
    * https://success.salesforce.com/userGroups  
    * https://seattlenpsf.wordpress.com/ is the Seattle Non-profit

 * Stackoverflow

 * Consultanting Partners

 * Github repos

  * http://careers.force.com/jobs for jobs inside Salesforce.
 


## <a name="Training"> Training</a>
1) Obtain a Trailhead account at https://developer.salesforce.com/trailhead 
   for FREE tutorials which reward points appearing in your profile.

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

* Chris Duarte (@TheChrisDuarte) is the Managing Editor of #Trailhead 
* Sandeep Bhanot (@cloudysan) is the #Trailhead Product Owner/ Evangelist.

[Workbook](https://developer.salesforce.com/docs/atlas.en-us.workbook.meta/workbook/)
shows you how to create a cloud app in a series of tutorials.

There is also Salesforce University (@SalesforceU) which offers paid classes. See
http://www.salesforce.com/services-training/training_certification/training.jsp
( $3,750 for the 5-day course)

http://www.shellblack.com/administration/how-to/
lists many admin videos


### <a name="ConfApp"> Build Conference App</a>
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

### <a name="SuggestionApp"> Build Suggestion Box App</a>
<a target="_blank" href="https://developer.salesforce.com/trailhead/project/suggestion_box">
Build a Suggestion Box</a> shows how to create reports and dashboards.

Questions and questions about the content can be entered in the Disqus component in the github.io website
<a target="_blank" href="http://ccoenraets.github.io/salesforce-developer-advanced/">
Advanced Developer Workshop</a> generated from 
<a target="_blank" href="https://github.com/ccoenraets/salesforce-developer-advanced">
a github repo</a>.


### <a name="PluralsightTutorials"> Pluralsight Tutorials</a>
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


## <a name="BuildingBlocks"> App Building Blocks</a>
User Interface:

	* Applications
	* Tabs
	* Page Layouts
	* Record Types

Business Logic:

	* Workflow
	* Validation Rules
	* Formula

Data Model:

	* Objects
	* Fields
	* Relationships


## <a name="EntityTypes"> App Entity Types</a>
Code managed by the Developer Console must be within one of these Entity Types:

* Classes
* Triggers
* Pages
* Page Components
* Objects
* Static Resources
* Packages
 
<a target="_blank" href="https://cloud.githubusercontent.com/assets/300046/8683839/f5b4c438-2a29-11e5-929a-407fd72d2490.png">
<img src="https://cloud.githubusercontent.com/assets/300046/8683839/f5b4c438-2a29-11e5-929a-407fd72d2490.png" /></a>


## <a name="ArchStack"> Force.com Architectural Stack</a>
<a target="_blank" href="https://www.youtube.com/watch?v=zarV59FCAok">
Various Architecture Diagrams</a>

  * View layer for UI
  * Controller / APIs (for external programmatic access)
  * Application Logic
  * Database
  * Infrastructure

All these are involved in each cross-cutting service.
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


## <a name="DevTools"> Dev Tools</a>
* <a href="#DeveloperConsole">Developer Console</a> online (look in the pull-down under your name), which opens a new browser window.
* Force CLI
* Force.com IDE plugin on top of Eclipse
* Mavens Mate plugin on top of SublimeText

## <a name="ApexCoding"> Apex Coding</a>
[Force.com Apex Code Developer's Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/)



## <a name="MobileApps"> Mobile Apps</a>
The Salesforce1 mobile emulator is at http://<instance ID>.salesforce.com/one/one.app
See https://developer.salesforce.com/docs/atlas.en-us.salesforce1.meta/salesforce1/dev_best_practices_development_process.htm

  * Mobile apps for iOS | Android
      *  SalesforceA, the mobile app for admins for <a target="_blank" href="https://play.google.com/store/apps/details?id=com.salesforce.admin1"> Android</a> and iOS.
      *  Salesforce1 mobile app for end-users for <a target="_blank" href="https://play.google.com/store/apps/details?id=com.salesforce.chatter"> Android</a> and iOS.

WEBINAR: [Building Mobile Apps using SDK](https://developer.salesforce.com/events/webinars/mobile_SDK)
by Akhilesh Gupta


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


   
## <a name="APIs"> APIs</a>
From https://developer.salesforce.com/page/Salesforce_APIs

<ul><li> <a href="/page/REST_API" title="REST API">REST API</a> - Access objects in your organization using REST.

</li><li> <a href="/page/SOAP_API" title="SOAP API">SOAP API</a> - Integrate your organization’s data with other applications using SOAP.

</li><li> <a href="/page/Tooling_API" title="Tooling API">Tooling API</a> - Build custom development tools for Force.com applications. Coming soon!

</li><li> <a href="/page/Chatter_API" title="Chatter API">Chatter REST API</a> - Access Chatter feeds and social data such as users, groups, followers, and files using REST.

   Each org Salesforce provides 5,000 Chatter Free licenses.

</li><li> <a href="/page/Bulk_API" title="Bulk API">Bulk API</a> - Load or delete large numbers of records.

</li><li> <a href="/page/An_Introduction_to_Force.com_Metadata" title="An Introduction to Force.com Metadata">Metadata API</a> - Manage customizations in your org and build tools that manage the metadata model (not the data, itself).

</li><li> <a href="/page/Streaming_API" title="Streaming API">Streaming API</a> - Provide a stream of data reflecting data changes in your organization.

</li><li> <a href="/page/Creating_REST_APIs_using_Apex_REST" title="Creating REST APIs using Apex REST">Apex REST API</a>	- Build your own REST API in Apex. This API exposes Apex classes as RESTful Web services.

</li><li> <a rel="nofollow" class="external text" href="http://www.salesforce.com/us/developer/docs/apexcode/Content/apex_web_services.htm">Apex SOAP API</a> - Create custom SOAP Web services in Apex. This API exposes Apex classes as SOAP Web services.

</li><li> <a rel="nofollow" class="external text" href="https://developer.salesforce.com/page/Data.com_API">Data.com API</a> - Data.com provides data updated in real-time in the cloud, with comprehensive coverage worldwide. Data.com APIs work with Salesforce Data.com Prospector and Data.com Clean to provide accurate account and contact data from Data.com. 

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

DOCUMENT: [Application Installation Guide](https://developer.salesforce.com/docs/atlas.en-us.appExchangeInstallGuide.meta/appExchangeInstallGuide/)

In 2015 Salesforce has 30M lines of code written by others via APPExchange.

Salesforce Wear https://developer.salesforce.com/wear
includes a set of apps for Apple Watch, Google Glass, and more wearables that all access Salesforce data via APIs.

The highest rated 3rd-party apps:

*    Adobe EchoSign: This application adds enterprise document management functionality to Salesforce. EchoSign allows users and clients to view, edit, sign, track, and file cross-platform documents.

*    Informatica Cloud: This SaaS application is designed to simplify the integration of cloud-based Salesforce data with on-premise systems. Using pre-built connectors, Informatica makes it easy to synchronize Salesforce information with ERP, databases, and other on-premise systems.

*    Marketo Marketing Automation: Marketo is an application designed to integrate marketing efforts with Salesforce. It automates and simplifies the creation, support, and monitoring of marketing campaigns, while providing up-to-date information to the sales department.

## <a name="Sandbox"> Sandbox</a>
Sandboxes are copies of your organization in a separate environment. They are used for development and testing. 
See Sandbox Overview at https://help.salesforce.com/HTViewHelpDoc?id=create_test_instance.htm&language=en_US

Changesets are used release to production.

PROTIP: Most professional developers prefer to use the Force.com IDE with a local copy
rather than the on-line Developer Console to avoid losing work if a refresh occurs.

Revision to earlier changes may not be possible.

PROTIP: Build your own instrumentation.


developer console

https://na31.salesforce.com/_ui/common/apex/debug/ApexCSIPage

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
Examples:

```
for (Speaker__c s : [SELECT Email__c FROM Speaker__c]) 
{
    System.debug(s.email__c);
}
```

An example from the class to retrieve Rose Gonzalez:

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

Other Languages:

* Salesforce Object Search Language (SOSL) 
* Salesforce Analytics Search Language (SASL)


## <a name="DML"> DML</a>
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


## <a name="Triggers"> Triggers</a>
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



## <a name="DBArch"> Data Architecture</a>
<a target="_blank" href="https://www.youtube.com/watch?v=jrKA3cJmoms&t=18m23s">
<img alt="salesforce_data_schema" src="https://cloud.githubusercontent.com/assets/300046/8587497/05c1a464-25ba-11e5-85af-a85d888e9b07.png" /></a>

It doesn't have ORM (but seems to be there).

OrgID hashed to one of 32 keys used to distribute.
Smart Primary Keys and Polymorphic Foreign Keys.
Creative de-normalization and pivoting.

## <a name="Chatter"> Chatter</a>
Chatter History maintains 72 hours of feeds.

A Chatter group has only one owner but can have many managers.


## <a name="Search"> Search</a>
Lists return 25 by default. But 5 - 50 can be set.

There is a maximum of 10 columns (fields)

Using Apache SOLR.

Salesforce is basically implementing Track (the ability to search and monitor conversations by keyword and topic) 


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


## <a name="Testing"> Testing</a>
Salesforce does not allow an app to deploy from a sandbox into production unless there is at least 75% coverage by tests.

Any modification of Apex code requires rerun of tests to refresh code coverage results.
Salesforce also runs all tests before each major service upgrade and release to makes sure that no behavior in custom code has been altered as a result of any service upgrades.

Tests are constructed in the <strong>Developer Console</strong> | File | New Apex Class.

Decorating test code with `@IsTest` instead of the testMethod keyword allows parameters to be specified.
Test classes don’t count toward the 3 MB maximum of Apex code in each org.

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

SOSL searches performed in a test return empty results. To ensure predictable results, you can use Test.setFixedSearchResults() to define the records to be returned by the search. 


# <a name="WorkWithMe"> Work with me</a>
I am interested into automatic generation of test code. 

