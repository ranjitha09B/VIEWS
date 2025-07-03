use empl;

select * from customer;
select * from orders;

-- using customer and order table , creating a view
CREATE VIEW customer_orders_view AS
SELECT c.customer_name AS customer_name, 
       c.phone, 
       c.country, 
       o.product_name, 
       o.order_date
FROM customer c
JOIN orders o ON c.custome_id = o.custome_id;

-- to retieve data from view
select * from customer_orders_view;

-- views for abstraction and security
CREATE VIEW CUSTOMER_ORDERS_SEC AS
SELECT C.CUSTOMER_NAME,
	   C.CUSTOME_ID,
       O.PRODUCT_NAME
FROM CUSTOMER C
JOIN ORDERS O ON C.CUSTOME_ID=O.CUSTOME_ID;

-- CALLING VIEW
SELECT * FROM CUSTOMER_ORDERS_SEC;