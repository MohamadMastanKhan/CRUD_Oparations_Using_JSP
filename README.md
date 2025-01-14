JSP CRUD Operations Project

This project is a web-based application developed using JavaServer Pages (JSP) that implements basic CRUD (Create, Read, Update, Delete) operations. It demonstrates how to manage data efficiently in a web application by interacting with a relational database.

🔑 Features

Create: Add new records to the database.

Read: View all existing records.

Update: Edit and update existing records.

Delete: Remove records from the database.

🛠️ Technologies Used

Frontend: JSP, HTML, CSS

Backend: Java Servlets, JDBC

Database: MySQL (configured via db.properties)

Server: Apache Tomcat

📁 Project Structure

JSP_CRUD_Oparations/
├── src/
│   └── main/
│       ├── java/               # Java Servlets and backend logic
│       └── webapp/            # JSP and HTML pages
│           ├── create.jsp
│           ├── retrive.jsp
│           ├── update.jsp
│           ├── delete.jsp
│           ├── index.html
│           └── WEB-INF/
│               ├── db.properties
│               └── web.xml
├── .classpath
├── .project
└── .settings/

🚀 Getting Started

Clone the Repository:

git clone <repository-url>

Set Up Database:

Configure MySQL database.

Update WEB-INF/db.properties with database credentials.

Deploy the Project:

Use Apache Tomcat to deploy the project.

Run the Application:

Access via http://localhost:8080/JSP_CRUD_Oparations/

📌 Purpose

This project serves as a learning tool for understanding how JSP integrates with Java and databases to build dynamic web applications.

Author: Mohamad Mastan Khan
