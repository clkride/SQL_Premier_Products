![GitHub contributors](https://img.shields.io/github/contributors/clkride/SQL_Premier_Products?style=flat-square)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/clkride/SQL_Premier_Products?style=flat-square)
![GitHub watchers](https://img.shields.io/github/watchers/clkride/SQL_Premier_Products?style=flat-square)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/clkride/SQL_Premier_Products?style=flat-square)
![GitHub](https://img.shields.io/github/license/clkride/SQL_Premier_Products?style=flat-square)
<a href="https://linkedin.com/in/abbas-singapurwala">
<img src="https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin&labelColor=blue">
</a>

# SQL_Premier_Products
Fundamental and Advanced SQL queries for questions on Premier Products Data set. The questions  are mentioned as comments in the sql file followed by the queries.

## Table of Contents
- [About Premier Products Data Set](#about-premier-products-data-set)
- [Steps to Import Database File](#steps-to-import-database-file)
- [ER Diagram](#er-diagram)
- [Project Description](#project-description)
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

## Project Description
1. [Premier_Product_Basic.sql](https://github.com/clkride/SQL_Premier_Products/blob/main/Premier_Product_Basic.sql)
2. [Premier_Product_Fundamental.sql](https://github.com/clkride/SQL_Premier_Products/blob/main/Premier_Product_Fundamental.sql)
3. [Premier_Product_Advanced.sql](https://github.com/clkride/SQL_Premier_Products/blob/main/Premier_Product_Advanced.sql)

## Author
 @[Abbas S.](https://github.com/clkride)
 
## License
The MIT License (MIT)

Copyright (c) 2023 Abbas Singapurwala

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Acknowledgments

* [Choose an Open Source License](https://choosealicense.com)
* [Img Shields](https://shields.io)
* [GitHub Pages](https://pages.github.com)
