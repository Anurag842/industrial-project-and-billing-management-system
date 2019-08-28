[//]: # (Image References)

# Industrial Project and Billing Management System
![image1](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(1).jpg)

## Project Description

### 1. Problem Description: 
The client uses MS Excel in order to maintain their Project list, developer list, allocation list and the calculations for generating billing invoice. 
However it is not possible for them to share the data in the form of Excel file in multi user environment. Also, there are lot of duplicate works, and chances of mistake.

Other than that, client realized below concerns in the current process:
*	When the Project billing price or allocation are changed they need to update each and every excel file. 
* There are no options to find and print previous saved invoice. 
* Most importantly, there is no security. Anybody can access any report and sensitive data. 
* There were no reports to find out the total bill of a single project volume or summary report. 

Therefore, the client wants a web based application to overcome the entire problem which they are facing currently, and making complete atomization of manual billing system.

### 2. Objective
In order to solve client’s concerns, we need to create a web application which will allow authorized users do below activities:
* Configure and maintain projects and their cost information.
*	Allocate a developer into a project and enter his/her attendance data for a specific month & year.
*	Calculate billing on individual & project basis.
*	Generate billing report/invoice for a specific month & year and for a project or individual developer.

### 3. Users of the System
*	Admin
*	Data entry operator

### 4. Functional Requirements
>	Static Data

  -	List of Projects  e.g. MRD, X, Y
  -	List of Developers
  -	List of Developer roles e.g. Project Managers, Associate Project Manager, Tech Lead, Sr. Developers and Developers.
    
>	Admin users

  -	Can configure per hour billing in $ for different developer roles and location (e.g. Onsite & Offshore) for different Projects.
  -	Can assign a developer to a project for a specific role and location. 
  -	Can view the report on
  -	Total billing price for a project for a specific month & year
  -	Total billing price of a developer for a specific month & year

>	Data entry operator

  -	Can select a project and enter attendance of each developer for a specific month & year.
  -	Attendance can be half day, full day or leave

### 5. Non Functional Requirements
*	Secure access of confidential data.
*	24 X 7 availability
*	Browser support for IE and Google Chrome
*	Reports exportable in .XLS

### 6. Tools and Technologies to be used
*	Use any IDE to develop the project. It may be MyEclipse / Eclipse.
*	Use Maven for dependency management.
*	Java (version 1.7 and above).
* Spring MVC
* Oracle SQL for the database.
* Apache Tomcat for the server.

## Project Screenshots

#### Screenshot 1 - HomePage
![image2](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(2).jpg)

#### Screenshot 2 - About
![image3](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(3).jpg)

#### Screenshot 3 - Contact
![image4](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(4).jpg)

#### Screenshot 4 - Login
![image5](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(5).jpg)

#### Screenshot 5 - Administrator | Homepage
![image6](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(6).jpg)

#### Screenshot 6 - Administrator | Project Configuration
![image7](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(7).jpg)

#### Screenshot 7 - Administrator | Developer Allocation
![image8](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(8).jpg)

#### Screenshot 8 - Administrator | Developer Billing
![image9](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(9).jpg)

#### Screenshot 9 - Administrator | Project Billing
![image10](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(10).jpg)

#### Screenshot 9 - Data Entry Operator | Homepage
![image11](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(11).jpg)

#### Screenshot 9 - Data Entry Operator | Attendance
![image12](https://github.com/sourcecode369/Billing-Management-System/blob/master/assests/image%20(12).jpg)

## Dependencies and Software

    1. Download and Install JDK

    2. Download and Install Eclipse

    3. Download and Install Apache Tomcat Server

    4. Download, Install and Setup Oracle SQL Developer

    5. Setup up Maven

    6. Install the Spring, Hibernate and Other Dependencies from pom.xml

    7. Right Click on Project > Run as > Run on server
