create table product_master011 (Product_No varchar2(20), Description varchar2(20), Profit_Percent number(20), Unit_Measure varchar2(20), QtyOnHand number(20), ReorderLv1 number(20), Sell_price number(20), Cost_price number(20))  ;

insert into product_master011 values ('P00001', 'T-shirt', 5, 'Piece', 200, 50, 350, 250)  ;

insert into product_master011 values ('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350)  ;

insert into product_master011 values ('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450)  ;

insert into product_master011 values ('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500)  ;

insert into product_master011 values ('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550)  ;

insert into product_master011 values ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450)  ;

insert into product_master011 values ('P07965', 'Denim shirts', 4, 'Piece', 100, 40, 350, 250)  ;

insert into product_master011 values ('P07975', 'Lycra tops', 5, 'Piece', 70, 30, 300, 175)  ;

insert into product_master011 values ('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300)  ;

select * from product_master011;

