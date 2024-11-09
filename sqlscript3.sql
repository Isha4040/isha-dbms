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

