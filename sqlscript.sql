REM   Script: CLIENT MASTER
REM   DBMS

create table client_master011(ClientNO varchar2(20), Name varchar2(20), City varchar2(20), Pincode number(20), State varchar2(20), Bal_due varchar2(20))  ;

insert into client_master011 values('C00001', 'Ivan Bayross', 'Mumbai', 400054, 'Maharashtra', 15000)   ;

insert into client_master011 values('C00002', 'Mamta Muzumdar', 'Madras', 780001, 'Tamil Nadu', 0)   ;

insert into client_master011 values('C00003', 'Chhaya Bankar', 'Mumbai', 400057, 'Maharashtra', 5000)   ;

insert into client_master011 values('C00004', 'Ashwini Joshi', 'Bangalore', 560001, 'Karnataka', 0)   ;

insert into client_master011 values('C00005', 'Hansel Colaco', 'Mumbai', 400060, 'Maharashtra', 2000)  ;

insert into client_master011 values('C00006', 'Deepak Sharma', 'Mangalore', 560050, 'karnataka', 0)  ;

select * from client_master011;

