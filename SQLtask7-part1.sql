--1) create a report of all state sales ,quantity,discount,profit with following aggrigation
-- sum,min,max,avg,count
 

select * from sales
select * from customer

select c.segment,sum(s.sales) as sum_sales,avg(s.sales) as avg_sales,count(s.sales) as sales_count,
sum(s.quantity) as sum_quantity,min(s.profit) as min_profit,max(s.quantity) as max_quantity
from sales as s
inner join customer as c
on s.customer_id = c.customer_id
group by c.segment,s.discount

--2) get data of all state and city avgerage customer age

select * from customer
select city,state,avg(age) as "avg_age"
 from customer group by city,state

--3) get data of 2017 to 2018 with product name and sales as per quantity
-- product name,sales,quantity,order_date(2017-2018)

select * from product
select * from sales

select p.product_name,s.order_date as order_date,sum(s.sales)/sum(s.quantity) as sales_quantity from sales as s
inner join product as p
on s.product_id = p.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
group by p.product_name,s.order_date limit 20


