# SQL_Premier_Products
Fundamental and Advanced SQL queries for questions on Premier Products Data set. The questions  are mentioned as comments in the sql file followed by the queries.

## Table of Contents
- [About Premier Products Data Set](#about-premier-products-data-set)
- [Steps to Import Database File](#steps-to-import-database-file)
- [ER Diagram](#er-diagram)
- [Author](#author)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## About Premier Products Data Set
The database consists of following tables - 
* customer
* order_line
* orders
* part
* rep

### Table Descriptions
* customer
    * Primary Key: customer_num
    * Table provides details about a customer. Each row contains address details of a unique customer identified by a customer_num. Each customer is served by a service rep. A service rep could be assigned to multiple customers in a region.
* order_line
    * Candidate Key: order_num
    * Candidate Key: part_num
    * Composite Primary Key: (order_num, part_num)
    * Table provides details about an order. The table may contain multiple rows for each order. Each order is identified by an order_num and each order could consists of multiple parts. The order_num and part_num together forms a primary key for this table.
* orders
    * Primary Key: order_num
    * Table provides details about an order. The table contains one row for each order. Each order is identified by an order_num. 
* part
    * Primary Key: part_num
    * Table provides details about a part. The table contains one row for each part and a part is uniquely identified by a part_num. Each row consists of part description, warehouse inventory, price, and category. 
* rep
    * Primary Key: rep_num
    * Table provides details about a sales representative. The table contains one row for each rep and a rep is uniquely identified by a rep_num. Each row contains address details, region served by the rep, and commission charged.
    
## Steps to Import Database File
1. Create a new database within pgadmin server and give it a name.
2. Right-click on the new database then select 'Restore'.
3. Import Premier Products Database file.
4. Select 'Restore' to start restoring the database.

## ER Diagram
![alt text](https://github.com/clkride/SQL_Premier_Products/blob/main/ERD.png?raw=true)

## Author

## License

## Acknowledgments

