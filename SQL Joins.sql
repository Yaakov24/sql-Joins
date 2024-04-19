/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT * FROM products INNER JOIN categories ON products.CategoryID = categories.categoryID WHERE categories.Name = "Computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT products.name, products.price, reviews.rating FROM products INNER JOIN reviews ON products.ProductID = reviews.ProductID WHERE reviews.rating = "5";
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
 SELECT employees.FirstName, employees.LastName, SUM(sales.Quantity) AS total FROM employees INNER JOIN sales ON employees.EmployeeID = sales.EmployeeID GROUP BY Employees.EmployeeID ORDER BY total DESC LIMIT 3;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT departments.Name AS department, categories.Name AS category FROM departments INNER JOIN categories on departments.DepartmentID = categories.DepartmentID WHERE categories.name = "Appliances" OR categories.name = "Games";
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT products.name, SUM(sales.Quantity) as items, SUM(sales.PricePerUnit) as total_Price FROM products INNER JOIN sales on products.ProductID = sales.ProductID GROUP BY products.ProductID;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT products.name, reviews.Reviewer, reviews.Rating, reviews.comment FROM products INNER JOIN reviews ON products.ProductID = reviews.ProductID WHERE reviews.Rating = "1";

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
