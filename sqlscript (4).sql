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

