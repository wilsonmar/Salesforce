<a target="_blank" href="http://www.salesforce.com/" title="salesforce_logo_2015_218x218">
<img align="right" src="https://cloud.githubusercontent.com/assets/300046/8766647/6285ae7e-2dfe-11e5-9a39-7cdf5473e14b.png" /></a>
This is intended to be a hands-on guided introduction such that experience developers new to Salesforce
can get to know the offering deeply yet quickly.

This is a living document and will continue to be updated with more helpful information and examples as they become available.
QUESTION: and ??? mark where I need input.

<a name="HowToContribute"></a>

## How to Contribute

I welcome you to contribute on this GitHub https://github.com/wilsonmar/Salesforce. When this repo is changed,
changes are [pushed to Gitbook.io automatically](https://www.gitbook.io/book/wilsonmar/Salesforce/activity).

Editing the book can be done either by updating the markdown files with a text editor, or opening the repository in [the Gitbook desktop app](https://github.com/GitbookIO/editor/blob/master/README.md). The desktop app will give you a live preview option.

Salesforce World Tour <a target="_blank" href=""


<a name="License"></a>

## License

[Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](http://creativecommons.org/licenses/by-sa/4.0/) unless otherwise stated

<a name="WhySalesforce"></a>

## Why Salesforce? #

For end-users, get away from:

   * Reliance on spreadsheets
   * Collaboration via email
   * Documents shared on local file directories
   * Time-intensive, manual steps

Salesforce provides an easy and fast way to create apps.

  * Free development environment (no 7 day trials)
  * Integrations
  * Free, full-featured copy of the Salesforce1 Platform
  * Develop apps with clicks or code
  * Fine-grained access control
  * highly scalable
  * API-first to integrate anything with everything
  * Use popular UI frameworks like Bootstrap, JQuery and more

  * <a href="#Lightning">Lightning</a> HTML UI components for user-developed apps.


<a name="Browsers"></a>

## Browsers

Salesforce is one of first major companies that works completely over the public internet.

This means users need to use internet browsers:
Internet Explorer that comes with Windows or Firefox and Chrome installed by users.

DEVDOC: In [Supported Browsers](https://developer.salesforce.com/docs/atlas.en-us.salesforce_supported_browsers_cheatsheet.meta/salesforce_supported_browsers_cheatsheet/)
some Internet Explorer support is limited. Firefox needs to be configured.

In 2014 Salesforce announced Superpod, offering on HP servers Salesforce will maintain as a dedicated offering for "the largest of the world's largest enterprises" such as the US FDA.

Salesforce has 15 compute pods distributed across its global datacenters to run its entire operation.

[Running on 1,000 machines, half of which are for redundancy. ](http://techcrunch.com/2009/03/23/the-efficient-cloud-all-of-salesforce-runs-on-only-1000-servers/)

In August, 2016, Salesforce announced that it is moving to use the infrastructure maintained by Amazon.

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


<a name="Redundancy"></a>

### Redundancy

4 copies of each Oracle RAC database Array is maintained via real-time async replication across 2 instances: 2 on-line and 2 off-line.

<a target="_blank" href="https://cloud.githubusercontent.com/assets/300046/8587824/39934586-25bf-11e5-90a9-d3875c215ec7.png">
<img alt="salesforce_4_copies" src="https://cloud.githubusercontent.com/assets/300046/8587824/39934586-25bf-11e5-90a9-d3875c215ec7.png" /></a>

* <a target="_blank" href="
https://en.wikipedia.org/wiki/Oracle_Data_Guard">https://en.wikipedia.org/wiki/Oracle_Data_Guard</a>
* <a target="_blank" href="
https://en.wikipedia.org/wiki/Oracle_RAC">https://en.wikipedia.org/wiki/Oracle_RAC</a>


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


<a name="UserSetup"></a>

## One-time User Setup

<a name="Permissions"></a>

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


<a name="Keyboard"></a>

### Most Common UI Actions and Keyboard Shortcuts

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

### Competitors in CRM

* Oracle
* SAP
* Microsoft Dynamics 365

* SOHO
* Hubspot
* SugarCRM
* Highrise

<a name="RecycleBin"></a>

### Recycle Bin

When a customer object is deleted, Salesforce does not immediately add it to the Recycle Bin.
Instead, deleted objects appear in the <strong>Deleted Objects</strong> list for 15 days.
During an object's "soft deleted" time, it can be restored before being permanently erased (hard deleted).

Soft-deleted custom objects and their data still count against your organization’s limits;
hard-deleted items do not.

See them in the Schema Browser.



<a name="Businesses"></a>

## Businesses from the Salesforce Corporation (CRM)

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
   <br /><br />

Other businesses which have "consultant" certification exams:

   * Sales Cloud - Complete CRM customer service solutions
   * Service Cloud - Sales force automation and CRM
   * Marketing Cloud - Build and manage 1:1 customer journeys. It has its own query language. No free accounts here.
   * Commmunity Cloud - Connect customers, partners, and employees
   * Analytic Cloud - Business intelligence and analytics software solutions
   * Pardot - B2B marketing automation

Additional businesses:

  * <a target="_blank" href="http://www.data.com/">Data.com</a> - B2B prospecting and data cleansing
  * <a target="_blank" href="http://www.demandware.com/">Demandware.com</a> acquired in 2016 for manufacturing processes
  * <a target="_blank" href="http://www.desk.com/">Desk.com</a> - Customer support for small business
  * Thunder

  * <strong>ExactTarget</strong> Fuel Marketing Cloud emails to target specific prospects (purchased by Salesforce)

  * <a target="_blank" href="http://www.financialforce.com/">FinancialForce.com</a>
    is also a SaaS providing software for managing financial information.

  * "Salesforce1 Platform" is the brand name to emphasize that mobile capabilities are automatically provided when apps are created.

  * <a target="_blank" href="http://www.Force.com/"> Force.com</a>
    runs underneath SaaS, and is categorized as a PaaS (Platform as a Service) service
    which generalizes the coding in CRM for use in other user domains

  * <a target="_blank" href="http://www.Heroku.com/">Heroku.com</a>
    provides free hosting for low-volume apps written in open-source programming.

  * <a target="_blank" href="http://www.database.com/">
    Database.com</a>

  * <a target="_blank" href="http://www.site.com/">Site.com</a>

  * Work.com was retired July 10, 2015. It was a sales performance management solution for on-boarding new reps faster, coaching reps to close more deals, and and rewarding successful behaviors. See [Work.com chatter](https://success.salesforce.com/_ui/core/chatter/topics/TopicPage?id=0TO300000004GDW&ref=group_profile)

The company exposes data in each of these businesses in an <a href="#APIs">API</a>
for computers to access without a human UI.

1) See https://www.youtube.com/watch?v=jrKA3cJmoms "Multi Tenant Magic" ([45] 17 Nov 2014)
   in the Salesforce Developers YouTube channel https://www.youtube.com/channel/UCKORm8sxh3cheBpqs0akkhg

2) Read the whitepaper in http://developer.Force.com

BTW, <a target="_blank" href="http://encycolorpedia.com/1798c1">
	Colors in Salesforce screens</a>


<a name="LaborDemand"></a>

## Labor Demand

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

## Technologically:

  * The <strong>declarative</strong> aspects of the platform is why the company's main number is 800.NO-SOFTWARE.

    It has CRUD style security permissions model. Learn this first.

  * The <strong>Apex</strong> (Java-like) object-oriented programming language
    managing classes and triggers defined in a database.
    This includes Apex Email services and Call-Outs and Apex (SOAP & REST API) web services

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Apex_Code_Development&criteria=ALLQUESTIONS">
	Apex Code Development</a>

  * The <strong>Visualforce</strong> web development language managing HTML+CSS+JS pages and components
    using HTML tags like PHP, ASP.NET, and ColdFusion.

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Lightning&criteria=ALLQUESTIONS">
	API Board</a>

  * SOA (Service Oriented Architecture)

  * Chattr instant-message


<a name="VersionChangeMgmt"></a>

## Version Change Management

Salesforce was launched in 2000, with SOAP API (web service) added 2004.
The Salesforce1 brand name appeared in 2014.
<a href="#Lightning">Lightning</a> HTML components were added 2015.

Three releases are planned per year, named by season (avoiding Fall):

| Force Version | API Version |
| ----:         | -----: |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/summer18/">Summer '18</a> | 41.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/spring18/">Spring '18</a> | 42.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/winter18/">Winter '18</a> | 41.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/summer17/">Summer '17</a> | 40.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/spring17/">Spring '17</a> | 39.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/winter17/">Winter '17</a> | 38.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/summer16/">Summer '16</a> | 37.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/spring16/">Spring '16</a> | 36.0 |
| <a target="_blank" href="http://www.salesforce.com/customer-resources/releases/winter16/">Winter '16</a> | 35.0 |
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


<a name="DevDocs"></a>

## Developer Docs

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


<a name="Social"></a>

## Social Media

On your <a target="_blank" href="https://itunes.apple.com/us/app/social-studio/id840173798?mt=8">
iOS device install Social Studio app</a>

Among [Quizzes](https://quizlet.com/subject/salesforce/?sortBy=mostRecent):

* https://quizlet.com/87010545/dev-401-all-flash-cards/ has over 1,000 items.
* [Salesforce ADM 201 - Up through Spring '14 Release](
https://quizlet.com/35268499/salesforce-adm-201-up-through-spring-14-release-flash-cards/)
has over 300 items.

* https://medium.com/trailhead

CAUTION: Salesforce for Outlook does not work on Mac Office 2011 Outlook.

Salesforce can link to Google Apps Gmail accounts in Setup | Google Apps (on left menu).
    
    * COURSE: 


Salesforce enterprise customers can open up tunnels and share data with each other. Cool. It’s EDI for the masses.

1) <a target="_blank" href="https://developer.salesforce.com/forums?communityId=09aF00000004HMGIA2#!/feedtype=RECENT&dc=Trailhead&criteria=ALLQUESTIONS"> Trailhead forum</a>

2) In Twitter follow each of the <a target="_blank" href="https://developer.salesforce.com/mvp">
   Force.com MVPs in the Discussion Forum</a>

3) Plan to be in San Francisco around September for the
   <a target="_blank" href="http://www.salesforce.com/dreamforce/">
   Dreamforce</a> user convention which includes a hackathon.
   
   Recorded vidoes sessions are on the 
   <a target="_blank" href="https://www.youtube.com/user/salesforce">
   Salesforce YouTube channel</a>.

4) Salesforce Success Community https://success.salesforce.com/

 * LinkedIn

 * List of Meetups are at http://salesforce.meetup.com/all/
    * https://success.salesforce.com/userGroups  
    * https://seattlenpsf.wordpress.com/ is the Seattle Non-profit

 * Stackoverflow

 * Consultanting Partners

 * Github repos

  * http://careers.force.com/jobs for jobs inside Salesforce.



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


<a name="Training"></a>

##  Training

1) Obtain a Trailhead account <a target="_blank" href="https://developer.salesforce.com/trailhead">
   here</a> for FREE tutorials which reward points appearing in your profile.

   PROTIP: Sign up for Trailhead with a personal social media account instead of company email so you'll sign in no matter where you work.

2) COURSE: <a target="_blank" href="https://trailhead.salesforce.com/trails/learn_salesforce_with_trailhead">
   Learn Salesforce with Trailhead</a>

   Learning topics are organized into modules, which are broken up into units. 

   Trails group modules to provide guided learning paths suited to specific roles or needs.

   Earn points when you finish each unit by completing a quiz or a challenge in a Salesforce org.

   "Challenges" gives you a set of requirements that you have to figure out how to meet on your own.
   A project lays out step-by-step instructions for you to follow, then validates that you did everything correctly.

   More points get you higher <a target="_blank" href="https://trailhead.salesforce.com/en/trailblazer-ranks">rank</a>.

   Projects and superbadges allow you to learn interactively by requiring you to implement a feature or solution in an org (a Trailhead Playground).

   <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges">Superbadges"</a> provide skill-based, domain-level "specialist" credential (to put on resume) by completing modules of real-life business scenario for which you have to build a solution across entire feature areas. 

   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_security">Security</a>
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_reports">
   Reports & Dashboards</a>

   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_apex">
   Apex  Specialist</a>
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_aap">
   Advanced Apex  Specialist</a>
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_lightning_platform_app_builder">
   App Customization Specialist</a>

   <a name="LightningSuperbadges"></a>

   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_lcf">
   Lightning Component Framework Specialist</a>
   builds a sophisticated app.
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_lex">
   Lightning Experience Specialist</a>
   super-charges interface and process automation.
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_lex_rollout">Lightning Experience Rollout Specialist</a>

   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_process_automation">
   Process Automation Specialist</a>
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_business_specialist">
   Business Administration Specialist</a>
   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_integration">
   Data Integration Specialist</a>

   * <a target="_blank" href="https://trailhead.salesforce.com/en/superbadges/superbadge_analytics_integration_specialist">
   Einstein Analytics Data Preparation Specialist</a>
   (Follow <a target="_blank" href="https://twitter.com/SForceAnalytics">@SForceAnalytics</a>)

3) Map my own:

   | Trail/Project | Hours | Points |
   | ----- | :---: | -----: |
   | Admin Intro. Trail | 9 | 10,200 |
   | Admin Intermediate Trail | 5.9 | 8,200 |
   | Developer Beginner Trail | 15 | 19,400 |
   | Developer Intermediate Trail | 10 | 8,100 |
   | Developer Trail - Mobile SDK | 6.8 | 3,000 |
   | <a href="#ConfApp">Build a Conference Management App</a> | 3 |  550 |
   | <a href="#SuggestionApp"> Build Suggestion Box App</a> | 1.9 | ? |
   | Quick Start: <a href="#Lightning">Lightning</a> Components | 0.5 | 150 |
   | Quick Connect: Lightning Connect | 0.3 | 100 |
   | Total: | 50 | 45,000 |

   * Chris Duarte (@TheChrisDuarte) is the Managing Editor of #Trailhead
   * Sandeep Bhanot (@cloudysan) is the #Trailhead Product Owner/ Evangelist.



[Workbook](https://developer.salesforce.com/docs/atlas.en-us.workbook.meta/workbook/)
shows you how to create a cloud app in a series of tutorials.

Salesforce University (@SalesforceU) offers <strong>paid</strong> classes. See
http://www.salesforce.com/services-training/training_certification/training.jsp
($3,750 for the 5-day course)

<a target="_blank" href="
http://www.shellblack.com/administration/how-to/">
http://www.shellblack.com/administration/how-to</a>
lists many admin videos


<a name="SkillCerts"> </a>

## Skill Certification

When ready, <a target="_blank" href="http://certification.force.com/pkb/articles/Public_KB/Scheduling-an-Exam">register for certification tests</a>. Pay $200 or $99 at Dreaforce conference.

1. <a target="_blank" href="http://certification.force.com/pkb/articles/Public_KB/Online-Proctoring-Completing-Your-Exam-Remotely">To take exam remotely on your own computer</a>
   with Kryterion’s Sentinel Secure software downloaded.

   Alternately, pick a <a target="_blank" href="http://www.kryteriononline.com/Locate-Test-Center">
   Kryterion test center</a> near you.

2. Register at <a target="_blank" href="https://www.webassessor.com/wa.do?page=publicHome&branding=SALESFORCE">webassessor.com</a> 

(SU18) 

### For Administrators:

For $200, answer 65% of 60 multiple-choice/multiple-select questions in 105 minutes:

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedAdministrator.pdf">PDF</a>Salesforce Administrator Certification</a>

   * Org. setup 2%
   * user setup 7%
   * Security and access 14%
   * Standard and custom objects 15%
   * Sales and Marketing applications 12%
   * Activity management and collaboration 3%
   * Data management 8%
   * Analytics - reports and dashboards 10%
   * Workflow/Process Automation 12%
   * Desktop and mobile admin 1%
   * Appexchange 1%

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedAdvancedAdministrator.pdf">PDF</a> Advanced Administrator Certification</a>

### For Salespeople (users):

* <a target="_blank" href="http://certification.salesforce.com/SG_AccreditedSalesProfessional.pdf">PDF</a> Salesforce Accredited Sales Professional</a>

### For Developers 

(which includes database administrators):

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedPlatformDeveloperI.pdf">PDF</a> Certified Salesforce Platform Developer I 

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedPlatformDeveloperII.pdf">PDF</a> Certified Salesforce Platform Developer II

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedCommerceCloudDigitalDeveloper.pdf">PDF</a> Salesforce Certified Commerce Cloud Digital Developer

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedPlatformAppBuilder.pdf">PDF</a> Salesforce Certified Platform App Builder 

* DEV401 (Building Applications with Force.com and <a href="#Visualforce">Visualforce</a>)
http://certification.salesforce.com/developers
focuses on declarative configuration rather than programming.

* DEV501 involves Apex coding

### For Solution Consultants:

These are $200 each.

For each Salesforce product line (except Knowledge Cloud, Marketing Cloud, and Service Cloud)

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedSalesCloudConsultant.pdf">PDF</a> Salesforce Certified Sales Cloud Consultant</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedServiceCloudConsultant.pdf">PDF</a> Salesforce Certified Service Cloud Consultant</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedCommunityCloudConsultant.pdf">PDF</a> Salesforce Certified Community Cloud Consultant</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedFieldServiceLightningConsultant.pdf">PDF</a> Salesforce Certified Field Service Lightning Consultant</a>

   o Scheduling and optimization
   o Resource management
   o Asset management
   o Inventory management
   o Work Order and Service Appointments lifecycle management
   o Contract, entitlements, and warranty
   o Mobility
   o Quoting and invoicing



### For Architects:

These are $400 each.

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedDataArchitectureandManagementDesigner.pdf">PDF</a> Salesforce Certified Data Architecture and Management Designer</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedCommerceCloudTechnicalSolutionDesigner.pdf">PDF</a> Salesforce Certified Commerce Cloud Technical Solution Designer</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedIntegrationArchitectureDesigner.pdf">PDF</a> Salesforce Certified Integration Architecture Designer</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedDevelopmentLifecycleandDeploymentDesigner.pdf">PDF</a> Salesforce Certified Data Architecture and Management Designer</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedSharingAndVisibilityDesigner.pdf">PDF</a> Salesforce Certified Sharing and Visibility Designer</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedMobileSolutionsArchitectureDesigner.pdf">PDF</a> Salesforce Certified Mobile Solutions Architecture Designer</a>

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedIdentityAndAccessManagementDesigner.pdf">PDF</a> Salesforce Certified Identity and Access Management Designer</a>

### Technical Architect

The highest level of certification costs $6,000 to pay for a review board at Salesforce offices:

* <a target="_blank" href="http://certification.salesforce.com/SG_CertifiedTechnicalArchitect.pdf">PDF</a> Salesforce Certified Technical Architect - Review Board </a>

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
Salesforce Certified Administrator 2018</a>, which builds an invoice app.


### Lynda

<a target="_blank" href="https://www.lynda.com/Salesforce-tutorials/Learn-Salesforce-Basics/513603-2.html">
Learn Salesforce: The Basics
10/14/2016 1h 39m</a>
by Christine V Pereira


<a name="sightTutorials"></a>

### Pluralsight Tutorials

As of Feb 2017, Pluralsight has 18 videos on Salesforce,
from 2013 to 2016:

#### Dan Appleman

The author of http://advancedapex.com/
was the first instructor

<a target="_blank" href="https://www.pluralsight.com/courses/salesforce-developers-career-strategies-opportunities">
Career Strategies and Opportunities for Salesforce Platform Developers
[Beginner] Sep 2 2015 1h 42m</a>

<a target="_blank" href="https://www.pluralsight.com/courses/javascript-in-salesforce-getting-started">
Getting Started with JavaScript in Salesforce
[Beginner] Jan 24 2017 2h 18m</a>

<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-dotnet-developers">
Force.com for .NET Developers
1h 37m 25 Feb 2013 video</a>
by Dan Appleman, author of http://advancedapex.com/

<a target="_blank" href="https://www.pluralsight.com/courses/forcedotcom-apex-for-developers">
Force.com and Apex Fundamentals for Developers
[Intermediate] Sep 8 2016 3h 45m</a>

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

#### David Liu

<a target="_blank" href="https://www.pluralsight.com/courses/apex-absolute-beginner-guide-coding-salesforce">
Apex Academy: Absolute Beginner's Guide to Coding in Salesforce
[Beginner] Jan 14 2016 2h 30m</a>

<a target="_blank" href="https://www.pluralsight.com/courses/apex-fundamental-coding">
Apex Academy: Fundamental Salesforce Coding Techniques
[Beginner] May 26 2016 3h 27m</a>

<a target="_blank" href="https://www.pluralsight.com/courses/apex-soql-salesforce">
Apex Academy: The Power of SOQL
[Intermediate] Aug 18 2016 2h 57m</a>


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


<a name="Lightning"></a>

## Lightning UX HTML

Salesforce has two different desktop user interfaces: Lightning Experience and Salesforce Classic. This module is designed for Lightning Experience.

"Lightning" is the brand name for <a target="_blank" href="https://www.lightningdesignsystem.com/">Salesforce's "design system"</a> of markup and CSS framework. 
It's much like Google's "Material" Design which offers <a target="_blank" href="https://www.lightningdesignsystem.com/icons/">icons</a> and 3D look with <a target="_blank" href="https://www.lightningdesignsystem.com/guidelines/animation/styleguidelines/">motion and animation</a> that automatically include <a target="_blank" href="https://www.lightningdesignsystem.com/accessibility/overview/">ARIA roles and properties for accessibility</a>. One doesn't have to be in Salesforce to use Lightning code is <a target="_blank" href="https://github.com/salesforce-ux/design-system">open-sourced at https://github.com/salesforce-ux/design-system</a>.

To enable Lightning Experience, 

To switch between interfaces, 

The <strong>Lightning Component Framework</strong> is used to completely upgrade the Salesforce CRM product to enable complete flexibility for adding new HTML5 features.

To begin using and understanding it, use the Rapid prototyping environment on your laptop:

0. Install NodeJs.
1. Fork the Lightning Design System Starter Kit at https://github.com/salesforce-ux/design-system-starter-kit
2. Clone your version of it onto your machine.
3. <tt>git remote add upstream https://github.com/salesforce-ux/design-system-starter-kit</tt>
   so it can be sycned easier.
4. <tt>npm install</tt> to download dependencies.

   WARNING: Some library versions are deprecated.

5. npm audit
6. <tt>npm run dev</tt> opens <a target="_blank" href="http://localhost:3000">http://localhost:3000</a> which should look like the on-line <a target="_blank" href="  https://starter-kit-demo.herokuapp.com/">this</a>

   * http://localhost:3000/workshop.html

   * http://localhost:3000/workshop-done.html should look like 
   https://starter-kit-demo.herokuapp.com/example.html
   <br /><br />

7. Edit files in the src directory to customize your prototype app.

    https://mozilla.github.io/nunjucks/ templating language (from Mozilla)


VIDEO: <a target="_blank" href="https://app.pluralsight.com/library/courses/salesforce-lightning-components-customizing-getting-started">
Customizing Salesforce with Lightning Components: Getting Started</a> 10 May 2017
by Sara Morgan Nettles. It points to startegies defined in 2016 by Mike Topolavich for migrating from
Visualforce to Lighting components.

VIDEO: <a target="_blank" href="https://app.pluralsight.com/library/courses/play-by-play-salesforce-lightning-components-state-records">  
Play By Play: State Driven Record Actions with Salesforce Lightning Components</a>
21 Feb 2018 by Christian Menzinger and Don Robins

VIDEO COURSE: https://app.pluralsight.com/library/courses/play-by-play-debugging-troubleshooting-salesforce-lightning-components

VIDEO COURSE: https://app.pluralsight.com/library/courses/play-by-play-salesforce-reusable-lightning-components-builder


<a href="#LightningSuperbadges">Superbadges on use of Lightning with Apex</a> (4 modules each):

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


<a name="BuildingBlocks"></a>

## App Building Blocks

User Interface:

	* Applications
	* Tabs
	* Page Layouts
	* Record Types

Business Logic:

	* Workflow
	* Validation Rules
	* <a href="#Formulas">Formula</a>

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


<a name="ArchStack"></a>

## Force.com Architectural Stack

<a target="_blank" href="https://www.youtube.com/watch?v=zarV59FCAok">
Various Architecture Diagrams</a>

  * View layer for UI
  * Controller / APIs (for external programmatic access)
  * Application Logic
  * Database
  * Infrastructure

All these are involved in each cross-cutting service.

<a name="ExecutionOrder"></a>

##  Execution Order

1. Validation checks - checks compliance with PageLayout and Validation rules (maximum field lengths)
2. Execute Before Apex Triggers - in "before" the record is saved to SalesForce database
3. Execute Duplicate Rules - checks if record has the same key as an existing record
4. Save the record to the database (but not "committed")
5. Execute after Apex Triggers - "after" record has been saved to the Salesforce database
6. Execute Rules - Assignment rules, then Auto-Response rules, then Workflow rules (and re-runs if required)
7. Execute Processes - when Flows/Process Builder runs

<a name="ArchServices"></a>

## Force.com cross-cutting Services

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



<a name="Platform"></a>

### Force Platform structure

<a target="_blank" title="force-plartform-814x592" href="https://user-images.githubusercontent.com/300046/43039910-75978714-8cf4-11e8-8df8-cf80bc61243f.png">
<img alt="force-plartform-648x472-126267.jpg" width="648" src="https://user-images.githubusercontent.com/300046/43039933-c8b319cc-8cf4-11e8-80f5-711738c53641.jpg"></a>

From: <a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-bigpicture">
Force.com Platform - The Big Picture 29 Jan 2013</a>
by Don Robins


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

https://itunes.apple.com/us/app/dreamoji/id1294827604?mt=8


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

<a name="APIs"></a>

##  APIs

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

The REST API returning JSON or XML uses "hypermedia" design.

Older SOAP (XML) format APIs are mainly for metadata (not business data).

The "BULK" REST API for large datasets (of 50 million rows)
of XML and CSV (rather than JSON) format.
Dan Appleman (Advanced Apex Programming) believes that all code should be designed and developed in bulk (multi-object) rather than bulkify later.

The Streaming API is a publish/subscribe push model to notify changes to object data.
It uses Bayeux Protocol and CometD libraries
used mainly in social networking apps.

DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=APIs_and_Integration&criteria=ALLQUESTIONS">
	API Board</a>


<a name="3rdPartyAPI"></a>

##  3rd Party API Integrations

There are 3rd-party Salesforce API integrations:

	* https://zapier.com/zapbook/salesforce/
   is a central hub to many other APIs on the open web.


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

OrgID hashed to one of 32 keys used to distribute.
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


<a name="C#"></a>

## C# .NET Programming

.NET C# Programming

DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=NET_Development&criteria=ALLQUESTIONS">
	.NET Development</a>


<a name="Java"></a>

## Java Programming

Java Programming

	DISCUSSIONS: <a target="_blank" href="https://developer.salesforce.com/forums/#!/feedtype=RECENT&dc=Java_Development&criteria=ALLQUESTIONS">
	Java Development</a>

http://docs.aws.amazon.com/lambda/latest/dg/java-gs.html
Getting Started (Authoring AWS Lambda Code in Java)

<a name="Clojure"></a>

## Clojure Programming

<a target="_blank" href="https://github.com/search?utf8=%E2%9C%93&q=salesforce">
Most starred (and forked) public Github library for salesforce</a> is
<a target="_blank" href="https://github.com/forcedotcom/SalesforceMobileSDK-iOS">
Force.com mobile SDK for iOS applications</a>

See <a target="_blank" href="
https://github.com/owainlewis/salesforce">
https://github.com/owainlewis/salesforce</a>


<a name="TestData"></a>

## Test Data

Each object is assigned an 18 character identifier for API transaction.

Each object is assigned a 15 character identifier for internal reporting and data loading.


<a name="DebugLog"></a>

##  Debug Log

Debug logs can be obtained for other users.

Change Log Levels in the Debug menu.

3MB is the maximum size of a Debug Log. There is a message about truncated logs.



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
<a target="_blank" href="http://www.pluralsight.com/courses/forcedotcom-design-patterns-part2">
Force.com Design Patterns, Part 2</a>


<a name="WorkWithMe"></a>

##  Work with me

I am interested into automatic generation of test code.


<a name="References"></a>

## References

Mason Frank Internatonal, a recruiter, publishes a report each year about the Salesforce ecosystem,
providing detailed breakdowns of salaries by job role, location, and so much more.
<a target="_blank" href="
https://www.masonfrank.com/salesforce-salary-survey/">
https://www.masonfrank.com/salesforce-salary-survey/</a>
