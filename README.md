<h1 align="center">Case Study - "Mind Tipper"</h1> <br>
<p align="center">
<img alt="GitPoint" title="GitPoint" src="https://imgur.com/m8HCs0K.png" width="250">
</p>

___
### Table of Contents
- [Summary](#summary)
- [Planning](#planning)
- [Installation](#nstallation)
- [Model View Controller](#model-view-controller)
    - [Model](#model)
    - [View](#view)
    - [Controller](#controller)
- [Unfinished / Problems](#unfinished)
<br>

###### Repository Notes
Deleted and made a brand new Case Study repository in attempt to keep this project seperate from Java Training (exercises).

<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="summary"> Summary</h1>
An dynamic web application to help decision making that **doesn’t rely on a random generator**. A decision title is split into two columns called choices, each choice has a supporting detail set that weigh against the opposing choice’s detail set. <br><br>
<img align="right"src="https://imgur.com/4P30ZvW.png"height="320"> <br><br>
You can make a selection of which detail wins over the other. Once all selections are complete, the number of selections made for each choice are tallied up and calculated as a the winning decision. <br><br>
<img align="right" src="https://imgur.com/OLtgI65.png"height="400">
		
<br><br><br><br><br><br><br><br>
<br><br>
Users can share their decisions with others, retake or edit existing completed decisions as a starting template to start a new decision of their own. Expected user demographics are not limited to consumers but extends to businesses connecting with their customers e.g "What do you like most about our product X watch vs our competitor's Y watch?".

As more unedited completed decisions are retaken by other users, more data is gathered on the value of a detail chosen by many. With this data we can analyze which details hold more value over others.


<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="planning"> Planning </h1>
The case study started with a summary of the application, describing what its purpose would be. 
Insert summary picture here
Next came requirement analysis that would detail the necessary components the project must have, and soon after the user case which would describe what the user wants to do.
		Insert user case picture and requirement analysis picture

With the requirement analysis, I would be able to develop a wireframe to be able to visualize all the requirements as a potential product. I used balsamiq.com to develop this wireframe.(LINK WIREFRAME)
		Insert wireframe here.

Entity relationship diagram was helpful to plan out the database and make their connections across other entities. This also allowed me to plan out the data types, primary and foreign keys for the database. I’ve used Lucid Charts.com to develop this diagram. (LINK ERD)
		Insert ERD diagram here.

We testing the database by entering mock data using MOCKaroo.com. (LINK TO SCHEMA) Not all data may make complete sense but it was vital to have. Mock data allowed myself to develop and test queries, and test that JDBC was able to read and write with no conflictions later in development. (LINK DDL FOLDER HERE)
Insert mockaroo schemas

With constant database testing and modifications, it was crucial to save my DDL, so I created a “One-Shot” DDL insert file. This handle creation of my tables, inserted mock data, and generated all my private and foreign keys. (LINK DDL)
		Insert ONESHOT DDL pic here

Honorable mention to google sheets to help me picture what my database query would look like and to help make any changes needed to the actual database. (LINK TO GOOGLE SHEETS)

		Insert google sheets

A one man project really didn’t need the use of JIRA, so instead I used Trello which help keep track of my progress of the entire development. (LINK TRELLO HERE)
		Insert trello pick here

Many revisions of the planning process has been made, currently up to revision 5. The first revision folder starts here. (LINK REVISION FODLER)
<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="installation">Installation</h1>


Although a domain name has been secured (MindTipper.com), the application is not ready for official launch. Step by Step instructions will be provided to run this application locally on your machine for further development or testing purposes

#### Prerequisites
- **[Eclipse IDE](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/photon/R/eclipse-inst-win64.exe)** (Photon Preferred)
- **Oracle Driver** (ojdbc8-12.2.0.1.jar provided in [lib](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/lib) folder)
- Misc Jar files
  - Spring
  - Hibernate
  - Javax (JSP, JSTL, SERVLET, PERSISTENCE)
  - Spring m2 Plugin
- **[Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)** SDK / JRE
- **[SQL Developer](https://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html)** (Version 18)
- **[Oracle Database](https://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html)** (Version 18c, also 12c compatible)
- **[Apache Tomcat](https://tomcat.apache.org/download-90.cgi)** v9



Open up your DBMS software, we will create tables and insert mock data.
Create a new connection, and remember your connection properties as we will insert this data into our project later.
Open up the work sheet for the database and insert the SQL DDL, I have provided a “One Shot Insert” DDL for you to inject. This will create all tables and records, set primary and foreign keys. I’ve also provided individual SQL DDL files that you may insert one at a time in respective file number labeled order.
SQL DDL is located at “\MT\WebContent\resources\SQL DDL”
			Insert picture of SQL DDL FOLDER
Clone this repository, once download is complete you may open up this project in your Eclipse IDE.
			Insert picture of clone button.
You need to modify the “TestDBServlet.java” file, replace User, Pass, jdbcURL, driver to match your connection in your DBMS.
				Insert picture of testdb servlet file.
Right click the “MT” project in your project explorer -> run as ->run on server.
				Insert picture of run right click
Set Tomcat to v9 and hit finish.
				Insert picture of tom cat configuration

The web application should take a few seconds to load and then run.
I highly advise that you copy and paste the local url “http://localhost:8080/MT/” from the eclipse web explorer and open it on your local browser for the full front end user experience.
				Insert picture of local browser with url and part of mindtipper pic



<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="mvc">MODEL VIEW CONTROLLER</h1>

Initially I attempted to create this project as Maven converted project

The first attempted was using POJO JDBC and faced issues with passing and accessing data from and to the JSP.

All models, DAO, and interfaces were created already and frustrating to leave behind.
Insert dao pic of old pj
The second attempt we came across the same issue using JDBC template method.

The third and current attempt is using Hibernate which we were able to finally read from the database and send to the JSP.



<!----------------------------------------------------------------------------------------------------------------------------------->
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



<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="view">MVC - VIEW</h1>

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

Some API sources used were for learning purposes only, any API libraries that were used are located in the  “\MT\WebContent\resources\” folder, labeled respectively. 

The css & js folder contains the personal modified external stylings done for the JSP pages. All external sources have been credited to the respective authors/companies on each of their files.

Each JSP page implements bootstrap API for styling.
Each page scales for mobile use or smaller resolutions.
Navigation bar and footer were custom made (scales).
With the exception of the homepage, no template was copied, each page was heavily modified to get the current results.
Home page was inspired by https://startbootstrap.com/ but highly modified.
Internal and external CSS was used as the requirement for this case study.

HTML and design were first created using a text editor, VScode. This allowed faster front end testing. Once the HTML was satisfactory, I’ve moved it over to a JSP file in eclipse for the final touches it needed to work with the supported JSTL tag library.

“Terms of use” & “Privacy Policy” have factual information regarding this project at its current state and for future features not yet implemented. You can generate specified documentation at https://termly.io/. I could not afford the membership so I had to manual create my own HTML and CSS for this page as embedding was the only way to use these terms for non paid members and that was not an option.

Their protection layer  made nearly impossible to extract the documentation in plain text. I was able to use what I learned from Platform PerScholas HTML debugging and managed to get this information. Once extraction was complete, a long process of descrambling had to be done. Credit was given to the company in the jsp page.

Animation
I implemented a very powerful tool called WOW.JS. for simple animations. Customized timers can be found in animate.css(LINK)

JSP 
 There are currently 12 JSP pages located in the view(LINK) folder.
We have removed boilerplate code by creating a folder(LINK) to hold static header footer and nav bars JSP files that were included in each JSP file.



<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="controller">MVC - CONTROLLER</h1>
                                    The controller layer handles mapping to the corresponding JSP views. For site navigational puposes, I have created simple view controllers.
                                    
				insert pic of list of view controllers
                
		At the moment we only have two controllers that have any real functionality which is registering the user(creates a new record in the database). The other is search controller to display results for other decisions in the database. This search controller requires a joined entity to complete the desired functionality which I could not resolve in time.
        
        
It also handles adding model attributes to the JSP page such as inserting the queried data to populate the JSP table. As the picture is shown, everything in caps lock has not been populated due to joined entities are not present and the query is only for one Entity.
		Insert controller of search data
Insert jsp page of search



<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="unfinished">UNFINISHED / PROBLEMS</h1>

Problems:
- I’ve restarted my project a few times. Because I made my views early in the project not a lot of time was wasted for each new project attempt as the views were easily transferable.
- My first attempt was using POJO JDBC, we ran into issues for setup as I could not find any solid path to setup the environment.
- The same issue occurred using JDBC template.
- My latest attempt was using Hibernate which I was finally able to receive concrete a “read” from my database to my jsp. 
-At this point I have to continue to figure out how to correctly map entities with other entities. 

	
      






