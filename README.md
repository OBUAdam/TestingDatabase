# TestingDatabase
**Database with test data**

Purposes:
* Show how to use a database project
* Set up scenarios for testing the Data Comparison app: https://github.com/OBUAdam/DataComparison
    * Think of each table as a unit test to verify that the results are correct for each scenario.

Steps:
* **Create** `Database1` and `Database2` on the same server.
* **Publish** the database project to `Database1` and to `Database2`.
    * *To publish a database project:*
    * Right click the database project in Visual Studio, and select Schema Compare.
    * Click the Select Target drop-down list, and select the "Select Target..." option.
    * Select a database from the "Choose a database" drop-down list.
        * *To add a database to the list:*
        * Click the "New Connection" button.
        * Enter the server name and the database name.
    * Click the Compare button and wait for the comparison to finish.
    * Click the Update button to update the selected database.
* **Execute** the `SetUpDatabase1` and `SetUpDatabase2` scripts.
