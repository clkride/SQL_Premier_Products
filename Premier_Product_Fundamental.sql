-- Fundamental

-- C.1. List the customer number, name, and zip code of each customer represented by sales rep 20 
-- or sales rep 65.
select customer_num, customer_name, zip from customer where rep_num = '20' or rep_num = '65';

--C.2. Use the IN operator to list the part number and part description of each part in warehouse 1
--or 3.
select part_num, description from part where warehouse in ('1','3');


--C.3. List all details about all parts. Order the output by part number within item class. (That is,
--order the output by item class and then by part number.)
select * from part order by class, part_num;

--C.4. List the part number, part description, and on-hand value of each part whose number of units
--on hand is less than the average number of units on hand for all parts. (Hint: Use a subquery.)
select part_num, description, on_hand from part where
on_hand < (select avg(on_hand) as avg_count from part);


--C.5. List the sum of the balances of all customers for each sales rep, but restrict the output to
--those sales reps for which the sum is less than $10,000. Order the results by sales rep number.
select sum(balance) as total_balance from customer
group by rep_num having sum(balance) <10000
order by rep_num;


--C.6. List the part number of any part with an unknown description.
select part_num from part where description = 'unknown';
