CREATE TABLE CUSTOMER ( 
    CustID INT PRIMARY KEY, 
    Last_Name VARCHAR(50), 
    First_Name VARCHAR(50) 
);

CREATE TABLE ORDERS ( 
    Order_ID INT PRIMARY KEY, 
    Order_Date DATE, 
    Customer_SID INT, 
    Amount DECIMAL(10, 2), 
    CONSTRAINT fk_customer FOREIGN KEY (Customer_SID) REFERENCES CUSTOMER(CustID), 
    CHECK (Amount > 20000) 
);

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES 
(1, 'Singh', 'Nav');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES 
(2, 'singh', 'Naveen');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES 
(3, 'Singh', 'David');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES 
(4, 'Singh', 'Rahul');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES 
(5, 'Singh', 'Manish');

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES
(101, '2024-01-10', 1, 25000.00);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES
(102, '2024-02-15', 2, 22000.00);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES
(103, '2024-03-20', 3, 31000.00);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES
(104, '2024-04-25', 4, 15000.00);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES
(105, '2024-05-30', 5, 27000.00);

SELECT c.CustID, c.First_Name, c.Last_Name, o.Amount
FROM CUSTOMER c
JOIN ORDERS o ON c.CustID = o.Customer_SID;

SELECT * 
FROM CUSTOMER 
WHERE Last_Name LIKE '%s' OR First_Name LIKE '%s';

SELECT * 
FROM ORDERS 
WHERE Amount BETWEEN 21000 AND 30000;

SELECT Order_ID, Amount + 500 AS "new amount"
FROM ORDERS;

SELECT Order_ID, Amount 
FROM ORDERS;

SELECT SUM(Amount) AS Total_Amount
FROM ORDERS 
WHERE Amount > 15000;

GRANT SELECT, INSERT, UPDATE, DELETE ON CUSTOMER TO user_name;

REVOKE SELECT, INSERT, UPDATE, DELETE ON CUSTOMER FROM user_name;

mysqldump -u username -p database_name > backup.sql
BACKUP DATABASE database_name 
TO DISK = 'C:\path_to_backup\database_name.bak';


mysql -u username -p database_name < backup.sql
RESTORE DATABASE database_name
FROM DISK = 'C:\path_to_backup\database_name.bak'
WITH REPLACE;


