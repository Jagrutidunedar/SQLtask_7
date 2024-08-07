--create 4 queations on your data like and slove

select* from products
select * from orders

--1) find the list of ordername with thier productid
	
select o.ordername,o.orderid,p.productid
from products p
join orders o on p.productid = o.orderid

--2)find the product with highest price

select productid,price
from products
order by price asc
limit 10

--3) how to find total price of orders is greater than 2000

select ordername,productid,total
from orders
where total >2000 limit 15

