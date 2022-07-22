<h1 align="center">Case Study - "Mind Tipper"</h1> <br>
<p align="center">
<img title="GitPoint" src="https://imgur.com/m8HCs0K.png" width="250">
</p>

# 
<img align="right" src="https://github.com/resv/MINDTIPPER/blob/master/PLANNING/readme%20files/1home.gif" width="600" height="360" />

### Table of Contents
- [Preview](#preview)
- [Summary](#summary)
- [Planning](#planning)
- [Installation](#installation)
- [Model View Controller](#model-view-controller)
    - [Model](#model)
    - [View](#view)
    - [Controller](#controller)
- [Unfinished / Problems](#unfinished)
- [Summation](#summation)
###### Repository Notes
Remade a Case Study repository in attempt to keep this project seperate from Java Training (exercises).
___

<!------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="preview">Preview</h1>

<img src="https://github.com/resv/MINDTIPPER/blob/master/PLANNING/readme%20files/2search.gif" width="900" height="560" />

<img align="right" src="https://github.com/resv/MINDTIPPER/blob/master/PLANNING/readme%20files/4decision.gif" width="400" height="260" />
<img src="https://github.com/resv/MINDTIPPER/blob/master/PLANNING/readme%20files/3register.gif" width="400" height="260" /> <br>

<img align="right" src="https://github.com/resv/MINDTIPPER/blob/master/PLANNING/readme%20files/6footer.gif" width="400" height="260" /><img src="https://github.com/resv/MINDTIPPER/blob/master/PLANNING/readme%20files/5scaling.gif" width="400" height="260" />

<br>
<br>

<!------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="summary"> Summary</h1>
An dynamic web application to help decision making that doesn't rely on a random generator. A decision title is split into two columns called choices, each choice has a supporting detail set that weigh against the opposing choice's detail set. <br><br>
<img align="right"src="https://imgur.com/4P30ZvW.png"height="320"> <br><br><br><br>
You can make a selection of which detail wins over the other. Once all selections are complete, the number of selections made for each choice are tallied up and calculated as the winning decision. <br><br>
<img align="right" src="https://imgur.com/OLtgI65.png"height="400">
		
<br>
<br>
Users can share their decisions with others, retake or edit existing completed decisions as a starting template to start a new decision of their own. Expected user demographics are not limited to consumers but extends to businesses connecting with their customers e.g "What do you like most about our product X watch vs our competitor's Y watch?".
<br>
<br>
<br>
<br>
As more unedited completed decisions are retaken by other users, more data is gathered on the value of a detail chosen by many. With this data we can analyze which details hold more value over others.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!----------------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="planning">Planning</h1>

The case study started with [Planning](https://github.com/resv/MINDTIPPER/tree/master/PLANNING), many revisions were made and I am currently on [revision #5](https://github.com/resv/MINDTIPPER/tree/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205).

| [Summary](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/CASE_STUDY_SUMMARY.pdf) | [Req Analysis](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/REQ_ANALYSIS_USERCASE.pdf) | [User Case](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/REQ_ANALYSIS_USERCASE.pdf) | [WireFrame](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/WireFrame%20-%20CaseStudySummary%20-%20ReqAnalysis/wireframePDF.pdf) | [Entity Relation Diagram](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/ERD_MODIFIED%20REV%205.pdf) | [Mock Database View](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/MOCK%20UP%20OF%20ICANTPICK%20DATABASE%20REV%205.pdf) |
|---|---|---|---|---|---|
| <img align="center" src="https://imgur.com/f58EEvA.png" width="150" height="200"> | <img align="center" src="https://imgur.com/SLUG94e.png" width="150" height="200"> | <img align="center" src="https://imgur.com/DxKWj8c.png" width="150" height="200"> | <img align="center" src="https://imgur.com/Bz29r4w.png" width="150" height="200"> | <img align="center" src="https://imgur.com/egKUVn1.png" width="150" height="200"> | <img align="center" src="https://imgur.com/b8KDNbe.png" width="150" height="200"> |

<br>
<img align="right" src="https://imgur.com/LspzRDJ.png" width="600" height="350">
<img align="right" src="https://imgur.com/1P7FTMh.png" width="350" height="200">
<img align="right" src="https://imgur.com/9kL2A5j.png" width="600" height="350">
<br>
<br>
<br>

I started testing the database by entering **mock data** using [Mockaroo](https://mockaroo.com).
<br>

Not all data may make complete sense but it was vital to have, **mock data allowed to develop and test queries**.

<br>
<br>
<br>
<br>
<br>

With constant modifications and testing being done for my database, it was crucial to **drop and recreate my data tables quickly**, so I created a a "[One-Shot](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205/DDL%20ONE%20SHOT%20INSERTS.txt)" DDL insert file. This handled the **creation** of my **tables**, inserts for **mock data**, and generated all my **private** and **foreign keys**. 
There are also [individual files](https://github.com/resv/MINDTIPPER/tree/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205) for each table and keys, you can insert them in numerical order in the event of issues.

<br>
<br>
<br>
<br>

It was **unnecessary to use JIRA** for a one person project, so I instead used **[Trello](https://trello.com/b/cFsNYBow/mindtipper)** which help **[keep track of my progress](https://trello.com/b/cFsNYBow/mindtipper)** during development. 

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!---------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="installation">Installation</h1>

Although a domain name has been secured (MindTipper.com), the **application is not ready for official launch**. Step by Step instructions has been provided to run this application locally on your machine for further development or testing purposes.

<img align="right" src="https://imgur.com/6SgZv7U.png" width="300" height="600">

### Prerequisites
- **[Eclipse IDE](https://www.eclipse.org/downloads/download.php?file=/oomph/epp/photon/R/eclipse-inst-win64.exe)** ( Photon Preferred )
- **[Oracle Driver](https://www.oracle.com/technetwork/database/features/jdbc/jdbc-ucp-122-3110062.html)** ( ojdbc8-12.2.0.1.jar provided in **[lib](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/lib)** folder )
- Misc Jar files ( provided in **[lib](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/lib)** folder )
  - Spring
  - Hibernate
  - Javax ( JSP, JSTL, SERVLET, PERSISTENCE )
  - Spring m2 Plugin
- **[Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)** SDK / JRE
- **[SQL Developer](https://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html)** ( Version 18 )
- **[Oracle Database](https://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html)** ( Version 18c , also 12c compatible )
- **[Apache Tomcat](https://tomcat.apache.org/download-90.cgi)** ( Version 9 )

1. Open up SQL Developer, preparing to create tables and insert mock data.

2. Create a new connection, and remember your connection properties as you will insert this data into the project later.

3. Open up the work sheet for the database and insert the SQL DDL, I have provided a "[One Shot](https://github.com/resv/MINDTIPPER/blob/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205/DDL%20ONE%20SHOT%20INSERTS.txt)" DDL file for you to run. This will create all tables and records, set primary and foreign keys. Iâ€™ve also provided [individual SQL DDL files](https://github.com/resv/MINDTIPPER/tree/master/PLANNING/REVISION%202/REVISION%203/REVISION%204/REVISION%205/DDL%20SQL%20INSERTS%20REV%205) that you may insert one at a time in numerical order in the event of issues.
			
4. Clone this repository, once download is complete, you may open up this project in your Eclipse IDE.

5. You need to modify the "[spring-mvc-crud-demo-servlet.xml](https://github.com/resv/MINDTIPPER/blob/master/WebContent/WEB-INF/spring-mvc-crud-demo-servlet.xml)" file, replace "User", "Pass", "jdbcURL", driver to match your connection in your DBMS. *(currently assigned to my AWS database)*               
                
<img align="center" src="https://imgur.com/vFv5IoH.png" width="900" height="150">
                
6. Right click the "MT" project in your project explorer -> run as ->run on server, Set Tomcat to version 9 and hit finish.

7. The web application should take a few seconds to load and run.
I highly advise that you copy and paste the url "**[http://localhost:8080/MT/](http://localhost:8080/MT/)**" from your eclipse web explorer and open it on your local browser for the full front end user experience.

<img align="center" src="https://imgur.com/hI50UqX.png" width="900" height="80">

<br>

<!--------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="mvc">MODEL VIEW CONTROLLER</h1>

###### PAST ATTEMPTS
There were **[three different attempts](https://github.com/resv/MINDTIPPER/tree/master/Prior%20project%20attempts)** starting this project.

1. Initially I attempted to create this project as **Maven converted project** using **JDBC** but faced numerous **environment issues** that could not be resolved.
	- A **standard JDBC** pattern of Models, DAOs, DAOIs were created.
	- Each DAO was manually tested in a "[MainTestRunner](https://github.com/resv/MINDTIPPER/blob/master/Prior%20project%20attempts/Attempt1/ICANTPICK/src/ICANTPICK/MainEntryPoint/testRUNNER2.java)".
	- You can view the entire project attempt **[here](https://github.com/resv/MINDTIPPER/tree/master/Prior%20project%20attempts/Attempt1/ICANTPICK)**.

|[(OLD) UserInfo Model](https://github.com/resv/MINDTIPPER/blob/master/Prior%20project%20attempts/Attempt1/ICANTPICK/src/ICANTPICK/Models/UserInfo.java)|[(OLD) UserInfoDAO](https://github.com/resv/MINDTIPPER/blob/master/Prior%20project%20attempts/Attempt1/ICANTPICK/src/ICANTPICK/DAO/UserInfoDAO.java)| [(OLD) UserInfoDAOI](https://github.com/resv/MINDTIPPER/blob/master/Prior%20project%20attempts/Attempt1/ICANTPICK/src/ICANTPICK/Interfaces/UserInfoDAOi.java)|[(OLD) Test Runner](https://github.com/resv/MINDTIPPER/blob/master/Prior%20project%20attempts/Attempt1/ICANTPICK/src/ICANTPICK/MainEntryPoint/testRUNNER2.java)  |
|---| ------------- |:-------------:| -----:|
|<img align="center" src="https://imgur.com/1pSlKC2.png" width="150" height="200">|<img align="center" src="https://imgur.com/37xB5OS.png" width="150" height="200">| <img align="center" src="https://imgur.com/MVE9Ad7.png" width="150" height="200">|<img align="center" src="https://imgur.com/Fq27uTC.png" width="150" height="200">|

<br>

2. The **second attempt** we came across the **same issues** using **JDBC template method**, you can view the entire project attempt [here](https://github.com/resv/MINDTIPPER/tree/master/Prior%20project%20attempts/Attempt%202/MINDTIPPER).

3. The **third and current attempt** is using **Hibernate** which we were able to finally **read and write** data from the database to the JSP.

<br>
<br>
<br>
<br>
<br>

<!----------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="model">MVC - MODEL</h1>

In our [MT.entity](https://github.com/resv/MINDTIPPER/tree/master/src/MT/entity) package, four entities/models exist, these directly correlate to my AWS Oracle database tables.


1. A standard pattern of mapping primary keys, columns, toString(), getters & setters.

|[Entity Package](https://github.com/resv/MINDTIPPER/tree/master/src/MT/entity)|[UserInfo Entity](https://github.com/resv/MINDTIPPER/blob/master/src/MT/entity/UserInfo.java)|[DecisionInfo Entity](https://github.com/resv/MINDTIPPER/blob/master/src/MT/entity/DecisionInfo.java)|[Title Entity](https://github.com/resv/MINDTIPPER/blob/master/src/MT/entity/Title.java)|[Choice Entity](https://github.com/resv/MINDTIPPER/blob/master/src/MT/entity/Choice.java)|
|---|---|---|---|---|
|<img src="https://imgur.com/T9eFOjH.png" width="150" height="200">|<img src="https://imgur.com/zgOu7iC.png" width="150" height="200">|<img src="https://imgur.com/xfDDK8M.png" width="150" height="200">|<img src="https://imgur.com/I6zoJKy.png" width="150" height="200">|<img src="https://imgur.com/lliPErT.png" width="150" height="200">|    

<br>

2. Specifically, the **DAOImpl will initialize the SessionFactory** which will **automatically open** and **close** our **connections**, query the database, then save the result into an List array. Image shown below:
<img src="https://imgur.com/g9LV1IL.png" width="800" height="600">
	
3. Our DAOs and DAOImpls contains the necessary methods for its purpose. I also have a [service package](https://github.com/resv/MINDTIPPER/tree/master/src/MT/service), a layer for future expansion and flexibility. **The service layer would allow us to add additional business logic later**. Another use for the service layer would be to separate the DAO and DAOImpl from the user for an additional layer of **protection against any attacks**.

|[Controller](https://github.com/resv/MINDTIPPER/blob/master/src/MT/controller/HomeController.java)|[UserInfo Entity](https://github.com/resv/MINDTIPPER/blob/master/src/MT/entity/UserInfo.java)|[UserInfoDAO](https://github.com/resv/MINDTIPPER/blob/master/src/MT/dao/UserInfoDAO.java)|[UserInfoDAOImpl](https://github.com/resv/MINDTIPPER/blob/master/src/MT/dao/UserInfoDAOImpl.java)|[UserInfoService](https://github.com/resv/MINDTIPPER/blob/master/src/MT/service/UserInfoService.java)|[UserInfoServiceImpl](https://github.com/resv/MINDTIPPER/blob/master/src/MT/service/UserInfoServiceImpl.java)|
|---|---|---|---|---|---|
|<img src="https://imgur.com/PSho8Cx.png" width="150" height="200">|<img src="https://imgur.com/KcWjQrs.png" width="150" height="200">|<img src="https://imgur.com/sAqvEUT.png" width="150" height="200">|<img src="https://imgur.com/FFWXAEb.png" width="150" height="200">|<img src="https://imgur.com/d4O6s57.png" width="150" height="200">|<img src="https://imgur.com/mgA3VpD.png" width="150" height="200">|

<br>
<br>
<br>
<br>
<br>

<!---------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="view">MVC - VIEW</h1>

<img align="right" src="https://imgur.com/gMqPYkN.png" width="600" height="400">

#### [API Sources](https://github.com/resv/MINDTIPPER/tree/master/WebContent/resources/API)
- **CSS**
  - [W3school](https://www.w3schools.com/)
  - [Css-tricks](https://css-tricks.com/)
  - [Getbootstrap](https://getbootstrap.com/)
  - [Mdboostrap](https://mdbootstrap.com/)
  - [Startbootstrap](https://startbootstrap.com/)
  - [Datatables](https://datatables.net/)
  - [Scaler](https://www.scaler.com/topics/css/)
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

1. Some API sources used were for **learning purposes** only, any API libraries that were used are located in the [resources](https://github.com/resv/MINDTIPPER/tree/master/WebContent/resources) folder, labeled respectively. 

2. We have **removed boilerplate code** by creating a [static JSP folder](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/view/static) to hold header, footer, and navbar JSP files that each view utilizes.

<img src="https://imgur.com/F8MdTJz.png" width="900" height="50">


3. The [CSS & JS](https://github.com/resv/MINDTIPPER/tree/master/WebContent/resources) folder contains the **personal external styling** done for the JSP pages but all **other external CSS sources** have been **credited** to the respective authors/companies on each of their files.

4. [All views](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/view) **implements bootstrap for styling** and is **responsive** for mobile or smaller resolutions.
   - [Nav bar](https://github.com/resv/MINDTIPPER/blob/master/WebContent/WEB-INF/view/static/navbar.jsp) and [footer](https://github.com/resv/MINDTIPPER/blob/master/WebContent/WEB-INF/view/static/footer.jsp) were **custom made and responsive**.
   - [Home](https://github.com/resv/MINDTIPPER/blob/master/WebContent/WEB-INF/view/home.jsp) page was **inspired by [Startbootstrap](https://startbootstrap.com/)** but highly modified.
   - **Internal and external CSS** was used as the **requirement** for this case study.
   - **JSTL tag** library was used to reference external links.

5. "[Terms of use](https://github.com/resv/MINDTIPPER/blob/master/WebContent/WEB-INF/view/terms.jsp)" & "[Privacy Policy](https://github.com/resv/MINDTIPPER/blob/master/WebContent/WEB-INF/view/privacy.jsp)" has **factual information** regarding this project at its current state and for future features not yet implemented. You can generate specified documentation at [Termly](https://termly.io/). I could not afford the membership so I had to manual create my own HTML and CSS for this page as embedding was the only way to use these terms for non paid members and that was not an option. *Credit was given to the company in the JSP page*.

<br>

<img align="right" src="https://imgur.com/OLYDxd2.png" width="650" height="200">

##### Animation
I implemented a very powerful tool called [WOW.JS](https://wowjs.uk/) for **simple animations**. Customized timers can be found in [animate.css](https://github.com/resv/MINDTIPPER/blob/master/WebContent/resources/css/animate.css).

<br>
<br>
<br>
<br>
<br>

<!-------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="controller">MVC - CONTROLLER</h1>
<img align="right" src="https://imgur.com/jnTbInt.png" width="300" height="350">
<br>

1. The [controller](https://github.com/resv/MINDTIPPER/blob/master/src/MT/controller/HomeController.java) layer handles mapping to the corresponding [JSP views](https://github.com/resv/MINDTIPPER/tree/master/WebContent/WEB-INF/view) and for **navigational usability**, I have created simple view controllers.

<br>

2. At the moment I only have two controllers that have any real functionality which is **registering the user** (creates a new user in the database). The other is **search decisions** controller to display results for other decisions in the database. *This search controller requires a joined entity to complete the desired functionality which I could not resolve in time*.

*Image shown below represents data queried from "DecisionInfo". **Text wrapped in parenthesis** are data place holders that would populate correctly if the "Title" entity was joined with "DecisionInfo".

<img src="https://imgur.com/WyxdjwA.png" width="900" height="500">

<br>
<br>
<br>
<br>
<br>

<!------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="unfinished">UNFINISHED / PROBLEMS</h1>

**Environment Problems**:
- I've **restarted my project** a few times. Because I made my views early in the project **not a lot of time was wasted** for each new project attempt as the views were easily transferable.
	- My first attempt was using POJO JDBC, we ran into issues for setup as I could not find any solid path to setup the environment.
	- The same issue occurred using JDBC template.
	- My latest attempt was using Hibernate which I was finally able to receive data from my database to my JSP. 

<img align="right" src="https://imgur.com/ghZokjA.png" width="350" height="200">

**Unfinished: joined Entity Problems**
- I could not properly **join entities** together in hibernate. e.g. **OneToMany** and **ManyToOne**. 
- Create **Logging in** function and should **return user** to their **personal** account page with their **data**.
- **Search results** should **populate** complete **data from all tables** not just one.
- Create **Template decisions** function and it should **populate** complete **data from all tables** not just one.
- Create **Submitting a new decision** function should **write data** to **all tables** in the DB.
- **Junit Testing NOT DONE.**

**Bugs**
- **New decisions form has input text bugs**
- **Contact form** for support has validation but does **not send emails**.
<br>
<br>
<br>
<br>
<br>

<!------------------------------------------------------------------------------------------------------------------------->
<h1 align="center" id="summation">Summation</h1>
The current progress made of this project was all done in a 10 day time span, I will continue to study and build this application further for an official release.


I'd like to thank [Platform PerScholas](https://www.platformbyps.org/) for the opportunity to learn Java Development.
- Special thanks to :
  - [Marcial Cordon](https://www.linkedin.com/in/marcial-cordon/): SQL and Core Java.
  - [Michael Gabriel](https://www.linkedin.com/in/michael-gabriel-964491123/): JDBC, JSP, SCRIPLET, and JPA.

Interested in changing careers or expanding your industry knowledge? Platform PerScholas offers free training, [contact me](https://www.linkedin.com/in/adamkim456/) and ask about my 12 week experience at Platform PerScholas.

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


