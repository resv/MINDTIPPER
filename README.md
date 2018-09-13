# Deleted and made a brand new Case Study repo in attempt to keep this project seperate from Java Training (exercises).

Platform PerScholas Bronx, New York
2018-08-PL-JD02

Case Study: MindTipper.com
<hr>
An dynamic web application to help decision making. A decision title is split into two columns called choices, each choice has a supporting detail set that weigh against each other e.g Choice A vs choice B. A minimum of one detail set to infinite are possible. Users can share their decisions with others, and other users can retake or edit exisiting completed decisions to start a new decision. Expected user demographics are not limited to consumers but extends to businesses connecting with their customers e.g "What do you like most about our product X watch vs our competitor's Y watch?".

Where can I try MindTipper.com?
<hr>
You can visit the site @ https://wwww.MindTipper.com or https://www.ICANTPICK.com. Create an account and press the new decision buttong at the top of the navigation bar.

Please be advised the there is also an option for a tutorial which is highly advised prior to making your own first new decision.
**Tutorial will most likely not be completed in time of presentation day, this line will be updated once the tutorial is operational.

Project Break Down
<hr>
Software:
  -Eclipse Photon JEE June 2018
    -Java 8 SDK / JRE
    -Spring m2 Plugin
    -Maven v4.0.0
      -Maven compiler v3.7.0 
      -source 1.8
      -Spring 5.0.6
      -Hibernate v5.4.1
    -Junit
  -Apache Tomcat v9
  -SQL Developer v18
    -Oracle 12c DataBase
    
 Technologies:
  -JSP, CSS, Jquery, JavaScript, Spring MVC, Java, JDBC, Hibernate. 
  
  Software Developement Life Cycle
    Planning: located in planning folder.
      Consists of: 
        1. Case Study Summary
        2. Requirement Analysis
        3. Entity Relationship Diagram
        4. Wire frames
        5. SQL DDL Creations
        
        **Many revisions were made, You can see the latest revision by opening the "REVISIONS" folder. Revision #6 consists of a lot of modifications that have not been documented but reflected on the actual web page itself.
        
        Trello was used to monitor Work Flow / Sprints, You can check that out here: https://trello.com/b/cFsNYBow/mindtipper
        
        Developement started with setting up Eclipse, dynamic web application. We started by converting our project to maven, adding the spring plugin, injecting dependencies to our pom file, setting up our servlet dispatcher xml.
        
        Countless Schemas were created in SQL Developer, eventually moved to AWS database services.
        
        Created DAO models(read), interfaces, JDBC connections, Queries and tested with use of the AWS database.
        
        Installed VScode for faster JSP creation. All my HTML pages were done in VScode to allow of a more instantaneous update to changes done on HTML. Once satisfied, the HTML was ported into my Eclipse as a JSP file. Modifications were done to the HTML be compatible with Spring and JSP files.
        
        Spring Controllers were created and mapped to each JSP view.
        
        Modifications done to the JSP files and more controllers to able to read from the database and apply it to the view.
        
        Created the rest of the DAOs (write) to apply to our views.
        
        Junit testing was done for our DAOs
        
        
   UNFINISHED / PROBLEMS
    -Although I had an extensive background in front end, a lot of new material was learned over the past week to apply to my project,
      I'd like take a day to break down my project and create a dedicated page to credit all the helpful sources I've used to apply to    my project.
      -
    
   External Sources Used:
   Many of the front end developement sources I've used in learning and in implementation with my project and will continue to grow as I try to recall more sources learned/used.
      
   WireFrame:
    balsamiq.com
    
    SQL Mock data
    Mockaroo.com
   
    SQL ERD Diagram
    Lucid Charts.com
   
    SQL table Wire Frame:
    Google Sheets
      
   CSS:
    www.w3schools.com
    css-tricks.com
    Bootstrap
    MD Bootstrap
    Getbootstrap
    Startbootstrap
    Datatables.net
   JS:
    Jquery Library
    Wow.js
    
   FONTS:
    Google Fonts
   ICONS:
    Fontawesome
    Simplelineicons
    
    Images:
      pixaybay.com
    
    Validation:
      Geeks.org
      Html.com
      Developer.mozilla.org
      
      Policy and terms:
      termly.io
      
      Spring MVC / JSP
      Baeldung
   

        
        
        
