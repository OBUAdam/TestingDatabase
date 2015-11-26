# TestingDatabase
Database with test data

The current purpose of this database project is to set up scenarios for testing the Data Comparison app.

Steps:
* Publish the database project to two databases on the same server, called Database1 and Database2.
    * Right click the database project in Visual Studio, and select Schema Compare.
    * Click the Select Target drop-down list, and choose a database.
    * To create a new connection, enter the server name and the database name.
    * Click the Compare button and wait for the comparison to finish.
    * Click the Update button to update the selected database.
* Execute the SetUpDatabase1 and SetUpDatabase2 scripts.
