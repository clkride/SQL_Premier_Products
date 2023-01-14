--D.1. For each order placed on October 21, 2010, list the order number along with the number,
--name, and city of the customer that placed the order.
select orders.order_num, customer.customer_num, customer_name, city 
from customer inner join orders 
on customer.customer_num = orders.customer_num
where order_date = '2010-10-21';

--D.2. Use the IN operator to find the number and name of each customer that placed an order on
--October 23, 2010.
select customer_num, customer_name from customer where 
customer_num in (select customer_num from orders where order_date = '2010-10-23');


--D.3. Repeat Exercise 2, but this time use the EXISTS operator in your answer.
SELECT customer_num, customer_name
FROM customer
WHERE EXISTS
(SELECT customer_num from orders where order_date = '2010-10-23' 
 and orders.customer_num = customer.customer_num);

--D.4. Find the customer number and name of each customer that did not place an order on October
--21, 2010.
select customer_num, customer_name from customer where customer_num in 
(select customer_num from orders where order_date != '2010-10-21');

--D.5. Use a subquery to find the rep number, last name, and first name of each sales rep who
--represents at least one customer with a credit limit of $7,500 or more. List each sales rep only
--once in the results.
select rep_num, last_name, first_name from rep 
where rep_num in (select distinct(rep_num) from customer where credit_limit >= 7500);

--D.6. Repeat Exercise 5, but this time do not use a subquery.
select distinct(rep.rep_num), last_name, first_name from rep inner join customer 
on rep.rep_num = customer.rep_num 
where customer.credit_limit >= 7500;

--D.7. List the part number, part description, and item class for each pair of parts that are in the
--same warehouse. (For example, one such pair would be part BV06 and part KV29, because both
--parts are located in warehouse 2.)
select a.part_num,a.description,a.class, b.part_num,b.description,b.class 
from part a,part b where a.warehouse= b.warehouse;

--D.8. List the order number and order date for each order placed by the customer named Brookings
--Direct.
select order_num, order_date from orders where customer_num in 
(select customer_num from customer where customer_name = 'Brookings Direct');

--D.9. List the order number and order date for each order that contains one or more order lines for
--(an) item(s) in the AP class.
select distinct orders.order_num, order_date from orders inner join order_line on
orders.order_num = order_line.order_num where order_line.part_num in 
(select part_num from part where class = 'AP');

--D.10. List the order number and order date for each order that either was placed by Brookings
--Direct or that contains one or more order line(s) for a Gas Range.
-- can be done using union 
select order_num, order_date from orders where customer_num in 
(select customer_num from customer where customer_name = 'Brookings Direct') 
or order_num in (select order_num from order_line where part_num in 
(select part_num from part where description = 'Gas Range'));

--D.11. List the order number and order date for each order that was placed by Ferguson’s and that
--contains an order line for a Gas Range.
-- can be done using intersect
select order_num, order_date from orders where customer_num in 
(select customer_num from customer where customer_name LIKE 'Ferguson%') 
and order_num in (select order_num from order_line where part_num in 
(select part_num from part where description = 'Gas Range'));


--D.12. List the order number and order date for each order that was placed by Johnson’s
--Department Store but that does not contain an order line for a Microwave Oven.
select order_num, order_date from orders where customer_num in 
(select customer_num from customer where customer_name LIKE 'Johnson%') 
and order_num in (select order_num from order_line where part_num in 
(select part_num from part where description != 'Microwave Oven'));



--D.13. For each part, list the part number, description, units on hand, order number, and number
--of units ordered. All parts should be included in the results. For those parts that are currently not
--on order, the order number and number of units ordered should be left blank (None/NULL/NA).
--Order the results by part number.
-- both full join and left outer join can be used here. correct choice would be to use left outer join.
select part.part_num, description, on_hand, order_num, num_ordered from 
order_line full join part on 
order_line.part_num = part.part_num 
order by part_num;

--D.14. List the order number and order date for each order in which a discount was provided.
--Assume that the quoted prices in the order_line table reflect the actual per-unit selling prices, and
--the prices in the part table reflect the typical per-unit selling prices.
select order_num, order_date from orders where order_num in 
(select orders.order_num from order_line inner join part 
on order_line.part_num = part.part_num where
order_line.quoted_price < part.price);

--D.15. List the rep number and first name for each rep associated with customers who placed
--orders before October 22, 2021 for items in the AP class.
select rep_num, first_name from rep where rep_num in (
select rep_num from customer where customer_num in (
select customer_num from orders where order_date < '2021-10-22' and order_num in 
	(select order_num from order_line where part_num in (select part_num from part where class = 'AP'))
))
;

