--List the order numbers for orders placed by customer number 408 on 10/21/2010.
select order_num from orders where customer_num = '408' and order_date = '2010-10-21';

--How many customers have a balance that does not exceed their credit limit?
select count(*) from customer where balance <= credit_limit;

--What is the part number, description, and price of the most expensive part in the database?
select part_num, description, price from  part order by price desc limit 1;

-- For each order placed on October 23, 2010, list the order number, customer number, and customer name.
select orders.order_num, orders.customer_num, customer.customer_name 
from orders inner join customer 
on orders.customer_num = customer.customer_num 
where orders.order_date = '2010-10-23';

-- For each order placed on October 23, 2010, list the order number, part number, part
--description, and item class for each part ordered.
select part.part_num, part.description, part.class, order_num
from part inner join order_line 
on  part.part_num = order_line.part_num
where order_line.order_num in  
(select order_num from orders where order_date = '2010-10-23');
