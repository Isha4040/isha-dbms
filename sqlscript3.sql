REM   Script: Session 07
REM   lab Assignment

CREATE TABLE CUSTOMER ( 
    CustID NUMBER PRIMARY KEY, 
    Last_Name VARCHAR2(50), 
    First_Name VARCHAR2(50) 
);

CREATE TABLE ORDERS ( 
    Order_ID NUMBER PRIMARY KEY, 
    Order_Date DATE, 
    Customer_SID NUMBER, 
    Amount NUMBER CHECK (Amount > 20000), 
    FOREIGN KEY (Customer_SID) REFERENCES CUSTOMER(CustID) 
);

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (1, 'Smith', 'John');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (2, 'Johnson', 'Emily');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (3, 'Williams', 'Michael');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (4, 'Jones', 'Sarah');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (5, 'Brown', 'David');

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (101, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 25000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (102, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2, 30000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (103, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 3, 22000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (105, TO_DATE('2023-05-12', 'YYYY-MM-DD'), 5, 21000);

SELECT C.*, O.Amount  
FROM CUSTOMER C  
JOIN ORDERS O ON C.CustID = O.Customer_SID;

SELECT * FROM CUSTOMER WHERE Last_Name LIKE '%s';

SELECT * FROM ORDERS WHERE Amount BETWEEN 21000 AND 30000;

SELECT Order_ID, Order_Date, Customer_SID, (Amount + 500) AS "new amount"  
FROM ORDERS;

SELECT Order_ID, Amount FROM ORDERS;

SELECT SUM(Amount) AS Total_Amount FROM ORDERS WHERE Amount > 15000;

 This is a general command; the actual command may vary based on the database system.
-- For Oracle, you might use RMAN or Data Pump.
-- Example using Data Pump:
EXPDP username/password DIRECTORY=backup_dir DUMPFILE=backup.dmp LOGFILE=backup.log FULL=y;
12. Write a query to restore a database
sql

Verify

Open In Editor
Edit
Copy code
-- This is a general command; the actual command may vary based on the database system.
-- For Oracle, you might use RMAN or Data Pump.
-- Example using Data Pump:
IMPDP username/password DIRECTORY=backup_dir DUMPFILE=backup.dmp LOGFILE=restore.log FULL=y;
Case Study: Combining Data from Multiple Tables
Method 1: Joining to the Status table ```sql
SELECT E.Event_id, E.Duration, S.Name AS Status_Name FROM Event E INNER JOIN Status S ON E.Status_code = S.Status_code;


Verify

Open In Editor
Edit
Copy code

#### Method 2: Utilizing UNION to Combine Reason Table Rows

```sql
SELECT Reason_code, Name FROM Ready_Reason
UNION
SELECT Reason_code, Name FROM Delay_Reason;
Method 3: Using LEFT JOIN to Include All Events with Status and Reasons
sql

Verify

Open In Editor
Edit
Copy code
SELECT E.Event_id, E.Duration, S.Name AS Status_Name, RR.Name AS Ready_Reason_Name, DR.Name AS Delay_Reason_Name 
FROM Event E 
LEFT JOIN Status S ON E.Status_code = S.Status_code 
LEFT JOIN Ready_Reason RR ON E.Reason_code = RR.Reason_code 
LEFT JOIN Delay_Reason DR ON E.Reason_code = DR.Reason_code;
These SQL statements will create the necessary tables, insert the data, and perform the required queries as per your request. Make sure to execute each part in a SQL environment that supports these commands.




