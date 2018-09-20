<h1 align="center">Case Study - "Mind Tipper"</h1> <br>
<p align="center">
<img title="GitPoint" src="https://imgur.com/m8HCs0K.png" width="250">
</p>

# 
<img align="right" src="BeneficialPlumpJackal-size_restricted.gif" width="500" height="350" />

### Table of Contents
- [Summary](#summary)
- [Planning](#planning)
- [Installation](#installation)
- [Model View Controller](#model-view-controller)
    - [Model](#model)
    - [View](#view)
    - [Controller](#controller)
- [Unfinished / Problems](#unfinished)
###### Repository Notes
Remade a Case Study repository in attempt to keep this project seperate from Java Training (exercises).
___
<br><br><br>
<!------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="summary"> Summary</h1>
An dynamic web application to help decision making that doesn’t rely on a random generator. A decision title is split into two columns called choices, each choice has a supporting detail set that weigh against the opposing choice’s detail set. <br><br>
<img align="right"src="https://imgur.com/4P30ZvW.png"height="320"> <br><br><br><br>
You can make a selection of which detail wins over the other. Once all selections are complete, the number of selections made for each choice are tallied up and calculated as a the winning decision. <br><br>
<img align="right" src="https://imgur.com/OLtgI65.png"height="400">
		
<br><br>
Users can share their decisions with others, retake or edit existing completed decisions as a starting template to start a new decision of their own. Expected user demographics are not limited to consumers but extends to businesses connecting with their customers e.g "What do you like most about our product X watch vs our competitor's Y watch?".
<br><br><br><br>
As more unedited completed decisions are retaken by other users, more data is gathered on the value of a detail chosen by many. With this data we can analyze which details hold more value over others.
<br><br><br><br><br><br><br><br><br><br>

<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="planning">Planning</h1>


1. The case study started with [Planning](https://github.com/resv/MINDTIPPER/tree/master/PLANNING) with many revisions, up to [revision #5](https://github.com/resv/MINDTIPPER/tree/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205).

| [Summary](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/CASE_STUDY_SUMMARY.pdf) | [Req Analysis](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/REQ_ANALYSIS_USERCASE.pdf) | [User Case](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/REQ_ANALYSIS_USERCASE.pdf) | [WireFrame](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/wireframePDF.pdf) | [Entity Relation Diagram](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/ERD_MODIFIED%20REV%205.pdf) | [Mock Database View](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/MOCK%20UP%20OF%20ICANTPICK%20DATABASE%20REV%205.pdf) |
|---|---|---|---|---|---|
| <img align="center" src="https://imgur.com/f58EEvA.png" width="150" height="200"> | <img align="center" src="https://imgur.com/SLUG94e.png" width="150" height="200"> | <img align="center" src="https://imgur.com/DxKWj8c.png" width="150" height="200"> | <img align="center" src="https://imgur.com/Bz29r4w.png" width="150" height="200"> | <img align="center" src="https://imgur.com/egKUVn1.png" width="150" height="200"> | <img align="center" src="https://imgur.com/b8KDNbe.png" width="150" height="200"> |

<br>
<img align="right" src="https://imgur.com/LspzRDJ.png" width="600" height="350">
<img align="right" src="https://imgur.com/1P7FTMh.png" width="350" height="200">
<img align="right" src="https://imgur.com/9kL2A5j.png" width="600" height="350">
<br>
We testing the database by entering mock data using [Mockaroo](https://mockaroo.com).
<br><br>
Not all data may make complete sense but it was vital to have, mock data allowed to develop and test queries.

<br><br><br><br><br><br>
With constant modifications and testing being done for my database, it was crucial to drop and recreate my datatables quickly, so I created a “[One-Shot](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205/DDL%20ONE%20SHOT%20INSERTS.txt)” DDL insert file. This handle creation of my tables, inserted mock data, and generated all my private and foreign keys. 
There is also [individual files](https://github.com/resv/MINDTIPPER/tree/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205) for each table and keys, you can insert them in numerical order.

<br><br><br><br>

It was unecessary to use JIRA for a one man project, so I instead used [Trello](https://trello.com/b/cFsNYBow/mindtipper) which help keep track of my progress of the entire development. 
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<!---------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="installation">Installation</h1>


Although a domain name has been secured (MindTipper.com), the application is not ready for official launch. Step by Step instructions will be provided to run this application locally on your machine for further development or testing purposes

<img align="right" src="https://imgur.com/6SgZv7U.png" width="300" height="600">

### Prerequisites
- **[Eclipse IDE](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/photon/R/eclipse-inst-win64.exe)** ( Photon Preferred )
- **[Oracle Driver](https://www.oracle.com/technetwork/database/features/jdbc/jdbc-ucp-122-3110062.html)** ( ojdbc8-12.2.0.1.jar provided in [lib](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/lib) folder )
- Misc Jar files ( provided in [lib](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/lib) folder )
  - Spring
  - Hibernate
  - Javax ( JSP, JSTL, SERVLET, PERSISTENCE )
  - Spring m2 Plugin
- **[Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)** SDK / JRE
- **[SQL Developer](https://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html)** ( Version 18 )
- **[Oracle Database](https://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html)** ( Version 18c , also 12c compatible )
- **[Apache Tomcat](https://tomcat.apache.org/download-90.cgi)** v9



1. Open up SQL Developer, you will create tables and insert mock data.

2. Create a new connection, and remember your connection properties as you will insert this data into the project later.

3. Open up the work sheet for the database and insert the SQL DDL, I have provided a “[One Shot](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205/DDL%20ONE%20SHOT%20INSERTS.txt)” DDL for you to inject. This will create all tables and records, set primary and foreign keys. I’ve also provided [individual SQL DDL files](https://github.com/resv/MINDTIPPER/tree/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205) that you may insert one at a time in numerical order.
			
4. Clone this repository, once download is complete you may open up this project in your Eclipse IDE.

5. You need to modify the “spring-mvc-crud-demo-servlet.xml” file, replace User, Pass, jdbcURL, driver to match your connection in your DBMS.               
                
<img align="center" src="https://imgur.com/vFv5IoH.png" width="900" height="150">
                
6. Right click the “MT” project in your project explorer -> run as ->run on server, Set Tomcat to v9 and hit finish.

7. The web application should take a few seconds to load and then run.
I highly advise that you copy and paste the local url “http://localhost:8080/MT/” from the eclipse web explorer and open it on your local browser for the full front end user experience.

<img align="center" src="https://imgur.com/hI50UqX.png" width="900" height="80">
<br><br><br><br><br><br><br><br><br><br>



<!--------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="mvc">MODEL VIEW CONTROLLER</h1>

Initially I attempted to create this project as Maven converted project

The first attempted was using POJO JDBC and faced issues with passing and accessing data from and to the JSP.

All models, DAO, and interfaces were created already and frustrating to leave behind.
Insert dao pic of old pj
The second attempt we came across the same issue using JDBC template method.

The third and current attempt is using Hibernate which we were able to finally read from the database and send to the JSP.


<br><br><br><br><br><br><br><br><br><br>
<!----------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="model">MVC - MODEL</h1>
Four tables exist in our database therefore we have Entities we have created.
Primary keys,  toString() , getters & setters were set respectively;

	Insert ENTITY PIC

I created our DAO (interface)

	Insert DAO pic

The DAOImpl will handle our SessionFactory, query the database, then save the result into an List array.

	Insert DAOimpln pic

A service layer was created for multiple purposes:
Handle our business logic,
Security layer to prevent access to DAO and SQL injection
Future integration


<br><br><br><br><br><br><br><br><br><br>
<!---------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="view">MVC - VIEW</h1>

<img align="right" src="https://imgur.com/gMqPYkN.png" width="600" height="400">

#### API Sources
- **CSS**
  - [W3school](https://www.w3schools.com/)
  - [Css-tricks](https://css-tricks.com/)
  - [Getbootstrap](https://getbootstrap.com/)
  - [Mdboostrap](https://mdbootstrap.com/)
  - [Startbootstrap](https://startbootstrap.com/)
  - [Datatables](https://datatables.net/)
- **JS**
  - [Jquery](https://jquery.com/)
  - [Wow.js](https://wowjs.uk/) (*animations*)
- **FONTS & ICONS**
    - [Google Fonts](https://fonts.google.com/)
    - [Font Awesome](https://fontawesome.com/)
    - [Simple Line Icons](http://simplelineicons.com/)
- **Images**
  - [Pixay Bay](https://pixabay.com/) (*Royalty Free*)
- **Validation**
     - [HTML.com](https://html.com/)
     - [Developer.Mozilla.org](https://developer.mozilla.org/en-US/)

1. Some API sources used were for learning purposes only, any API libraries that were used are located in the [resources](https://github.com/resv/MINDTIPPER/tree/master/WebContent/resources) folder, labeled respectively. 

2. We have removed boilerplate code by creating a [static JSP folder](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/view/static) to hold header footer and nav bars JSP files that were included in each JSP file.

3. The css & js folder contains the personal external stylings done for the JSP pages but all other external css sources have been credited to the respective authors/companies on each of their files.

4. Each JSP page implements bootstrap for styling and is responsive for mobile or smaller resolutions.
   - Nav bar and footer were custom made and responsive.
   - Home page was inspired by [Startbootstrap](https://startbootstrap.com/) but highly modified.
   - Internal and external CSS was used as the requirement for this case study.
   - JSTL tag library was used to reference external links.

5. “Terms of use” & “Privacy Policy” actually has factual information regarding this project at its current state and for future features not yet implemented. You can generate specified documentation at [Termly](https://termly.io/). I could not afford the membership so I had to manual create my own HTML and CSS for this page as embedding was the only way to use these terms for non paid members and that was not an option. Credit was given to the company in the jsp page.
<br>
##### Animation
I implemented a very powerful tool called [WOW.JS](https://wowjs.uk/). for simple animations. Customized timers can be found in [animate.css](https://github.com/resv/MINDTIPPER/blob/master/WebContent/resources/css/animate.css).


<br><br><br><br><br><br><br><br><br><br>
<!-------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="controller">MVC - CONTROLLER</h1>
                                    The controller layer handles mapping to the corresponding JSP views. For site navigational puposes, I have created simple view controllers.
                                    
				insert pic of list of view controllers
                
		At the moment we only have two controllers that have any real functionality which is registering the user(creates a new record in the database). The other is search controller to display results for other decisions in the database. This search controller requires a joined entity to complete the desired functionality which I could not resolve in time.
        
        
It also handles adding model attributes to the JSP page such as inserting the queried data to populate the JSP table. As the picture is shown, everything in caps lock has not been populated due to joined entities are not present and the query is only for one Entity.
		Insert controller of search data
Insert jsp page of search


<br><br><br><br><br><br><br><br><br><br>
<!------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="unfinished">UNFINISHED / PROBLEMS</h1>

Problems:
- I’ve restarted my project a few times. Because I made my views early in the project not a lot of time was wasted for each new project attempt as the views were easily transferable.
- My first attempt was using POJO JDBC, we ran into issues for setup as I could not find any solid path to setup the environment.
- The same issue occurred using JDBC template.
- My latest attempt was using Hibernate which I was finally able to receive concrete a “read” from my database to my jsp. 
-At this point I have to continue to figure out how to correctly map entities with other entities. 



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>