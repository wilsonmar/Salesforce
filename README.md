Before we get started, note that Salesforce as a company has several offerings (all SaaS in the cloud):

  * Salesforce.com CRM (Customer Relationship Management) is categorized as a SaaS (Software as a Service)
    offering a complete package much like what Google Apps (Gmail), Zoho, and Quickbooks Online provides.
  * FinancialForce.com is also a SaaS providing software for managing financial information.

  * Force.com runs underneath SaaS, and is categorized as a PaaS (Platform as a Service) service
    which generalizes the coding in CRM for use in other user domains

  * Heroku.com provides free hosting for low-volume apps written in open-source programming.

1) See https://www.youtube.com/watch?v=jrKA3cJmoms "Multi Tenant Magic" ([45] 17 Nov 2014)
   in the Salesforce Developers YouTube channel https://www.youtube.com/channel/UCKORm8sxh3cheBpqs0akkhg 

2) Read the whitepaper in http://developer.Force.com

Technologically:

  * The <strong>Apex</strong> object-oriented programming language managing classes and triggers defined in a database.
    This includes Apex Email services and Call-Outs and Apex (SOAP & REST API) web services
  * The <strong>Visualforce</strong> tag-based web development language managing HTML+CSS+JS pages and components.
  * See them in the Schema Browser

  * SOA (Service Oriented Architecture)
  * Chattr instant-message

## <a name="LaborDemand"> Labor Demand</a>
Strong and growing.
  * Growth rate 35% year-over-year

I think Salesforce is hands-down the easiest and fastest way to create apps.

  * Free development environment (no 7 day trials)
  * Integrations
  *  Free, full-featured copy of the Salesforce1 Platform
  * Develop apps with clicks or code
  * Fine-grained access control 
  * highly scalable
  * API-first to integrate anything with everything
  * Use popular UI frameworks like Bootstrap, JQuery and more 
  
## <a name="SkillCerts"> Skill Certification</a>
There are two technical jobs:
  * Administrator
  * Developer (which includes database administrators)

https://developer.salesforce.com/trailhead provides
 * Admin Intro. Trail (9 hours)
 * Admin Intermediate Trail
 * Developer Beginner Trail 

## <a name="ChangeMgmt"> Change Management</a>
Salesforce was launched in 2000, with SOAP API (web service) was added 2004.

Three releases are planned per year, with beta releases of Minimally Marketable Features (MMF).
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
An <strong>Org</strong> is a container for metadata that drives the dynamic engine (kernel).

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


