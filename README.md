Before we get started, note that Salesforce as a company has several offerings (all SaaS in the cloud):

  * <a target="_blank" href="http://www.Salesforce.com/">Salesforce.com</a>
    CRM (Customer Relationship Management) is categorized as a SaaS (Software as a Service)
    offering a complete package much like what Google Apps (Gmail), Zoho, and Quickbooks Online provides
    in a "multi-tenant" environment which serves many customers (tenants) on the same hardware.
    Salesforce also includes project management. 

  * <strong>ExactTarget</strong> Fuel Marketing Cloud emails to target specific prospects.
  
  * <a target="_blank" href="http://www.financialforce.com/">FinancialForce.com</a>
    is also a SaaS providing software for managing financial information.

  * <a target="_blank" href="http://www.Force.com/"> Force.com</a> 
    runs underneath SaaS, and is categorized as a PaaS (Platform as a Service) service
    which generalizes the coding in CRM for use in other user domains

  * <a target="_blank" href="http://www.Heroku.com/">Heroku.com</a>
    provides free hosting for low-volume apps written in open-source programming.

  * <a target="_blank" href="http://www.database.com/">Database.com</a>

1) See https://www.youtube.com/watch?v=jrKA3cJmoms "Multi Tenant Magic" ([45] 17 Nov 2014)
   in the Salesforce Developers YouTube channel https://www.youtube.com/channel/UCKORm8sxh3cheBpqs0akkhg 

2) Read the whitepaper in http://developer.Force.com

Technologically:

  * The <strong>declarative</strong> aspects of the platform with CRUD style security permissions model.
    Learn this first.
  
  * The <strong>Apex</strong> (Java-like) object-oriented programming language
    managing classes and triggers defined in a database.
    This includes Apex Email services and Call-Outs and Apex (SOAP & REST API) web services

  * The <strong>Visualforce</strong> web development language managing HTML+CSS+JS pages and components,
    which uses HTML tags like PHP, ASP.NET, and ColdFusion.

  * See them in the Schema Browser

  * SOA (Service Oriented Architecture)

  * Chattr instant-message

  * Eclipse IDE

## <a name="LaborDemand"> Labor Demand</a>
Strong and growing.
  * Growth rate 35% year-over-year

Salesforce and Force.com are more attractive to mid-market customers than SAP and Oracle.
So you're not as much forced to work for large consulting firms living out of hotels. 

I think Salesforce is hands-down the easiest and fastest way to create apps.

  * Free development environment (no 7 day trials)
  * Integrations
  *  Free, full-featured copy of the Salesforce1 Platform
  * Develop apps with clicks or code
  * Fine-grained access control 
  * highly scalable
  * API-first to integrate anything with everything
  * Use popular UI frameworks like Bootstrap, JQuery and more 

## <a name="Social"> Social</a>
 
 * Dreamforce convention speeches are published in YouTube.

 * LinkedIn

 * Meetups

 * Stackoverflow

 * Twitter

 * Consultanting Partners

 * Github repos

## <a name="SkillCerts"> Skill Certification</a>
There are two technical jobs:
  * Administrator
  * Developer (which includes database administrators)
  * Certified Technical Architect

https://developer.salesforce.com/trailhead provides FREE:

| Trail | Hours | Points |
| ----- | :---: | -----: |
| Admin Intro. | 9 | 10,200 |
| Admin Intermediate | 5.9 | 8,200 |
| Developer Beginner | 15 | 19,400 |
| Developer Intermediate | 10 | 8,100 |
| Developer Trail - Mobile SDK | 6.8 | 3,000 |

Projects:

 * Build a Conference App (3 hours, 550 points)
 * Quick Start: Lightning Components (0.5 hours, 150 points) to build internal apps
 * Quick Connect: Lightning Connect (0.3 hours, 100 points)

<a target="_blank" href="https://developer.salesforce.com/forums?communityId=09aF00000004HMGIA2#!/feedtype=RECENT&dc=Trailhead&criteria=ALLQUESTIONS"> Trailhead forum</a>


## <a name="ChangeMgmt"> Change Management</a>
Salesforce was launched in 2000, with SOAP API (web service) was added 2004.

Three releases are planned per year, named by season such as "Winter 2015",
applied gradually to the 50 production instances of 8,000 customers each (at half-full).

Aditionally, beta releases of Minimally Marketable Features (MMF) go out.
So certification holders must take tests.
 
## <a name="PluralsightTutorials"> Pluralsight Tutorials</a>
As of this writing, video tutorials at Pluralsight are rather dated:

Force.com Platform - The Big Picture
http://www.pluralsight.com/courses/forcedotcom-bigpicture
for Beginners 
by Don Robins 1h 24m 29 Jan 2013
is 

Force.com Design Patterns - Part 1 
http://www.pluralsight.com/courses/forcedotcom-design-patterns-pt1
by Adam Purkiss Intermediate 3h 2m 26 Nov 2012

Force.com Design Patterns - Part 2 
http://www.pluralsight.com/courses/forcedotcom-design-patterns-pt1
by Adam Purkiss Intermediate 1h 45m 01 May 2013

Force.com for .NET Developers 
http://www.pluralsight.com/courses/forcedotcom-dotnet-developers
by Dan Appleman Intermediate 1h 37m 25 Feb 2013

Introduction To Visualforce 
http://www.pluralsight.com/courses/visualforce-introduction
by Matt Lacey
Intermediate
2h 32m
31 Jul 2013

## <a name="SalesforceTutorials"> Salesforce Tutorials</a>


## <a name="PluralsightTutorials"> MetaData</a>
An <strong>Org</strong> (short for organization) is a 
<strong>container</strong> for metadata that drives the dynamic engine (kernel).

## <a name="ArchStack"> Force.com Architectural Stack</a>
Layers:

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

## <a name="PlatformArch"> Platform Architecture</a>
SOAP API is mainly for metadata (not business data).

The REST API returning JSON or XML uses "hypermedia" design.

The "BULK" REST API for large datasets (of 50 million rows)
of XML and CSV (rather than JSON) format.

The Streaming API is a publish/subscribe push model to notify changes to object data.
It uses Bayeux Protocol and CometD libraries
used mainly in social networking apps.

Developer's Workbench

## <a name="UI"> Salesforce UI</a>
The Salesforce console can seem overwhelming at first.



AppExchange

The database has almost invisible indexing, with no JOIN functionality in the
Salesforce Object Query Language (SOQL) which returns variable data types in multi-dimensional arrays.

## <a name="DBArch"> Data Architecture</a>
<a target="_blank" href="https://www.youtube.com/watch?v=jrKA3cJmoms&t=18m23s">
<img width="396" alt="salesforce_data_schema" src="https://cloud.githubusercontent.com/assets/300046/8587497/05c1a464-25ba-11e5-85af-a85d888e9b07.png" /></a>


It doesn't have ORM (but seems to be there).

OrgID hashed to one of 32 keys used to distribute.
Smart Primary Keys and Polymorphic Foreign Keys.
Creative de-normalization and pivoting.
