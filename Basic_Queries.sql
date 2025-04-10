-- BASIC QUERIES

--1) Retrieve all books in the "Fiction" genre
SELECT * FROM Books
WHERE Genre = 'Fiction';

--2)  Find books published after the year 1950
SELECT * FROM Books
WHERE Published_year>1950;

--3)  List all customers from the Canada
SELECT * FROM Customers
WHERE country = 'Canada';

--4) Show orders placed in November 2023
SELECT * FROM orders
WHERE Order_date BETWEEN '2023-11-01' AND '2023-11-30';

--5) Retrieve the total stock of books available
SELECT SUM(STOCK) AS Total_Stock
FROM BOOKS;

--6) Find the details of the most expensive book
SELECT * FROM BOOKS
ORDER BY Price DESC 
LIMIT 1;

--7) Show all customers who ordered more than 1 quantity of a book
SELECT * FROM ORDERS
WHERE Quantity > 1;

--8)  Retrive all orders where the total amount exceeds $20
SELECT * FROM ORDERS
WHERE total_amount > 20;

--9) List all genres available in the books table
SELECT DISTINCT genre FROM Books;

--10) Find the book with the lowest stock
SELECT * FROM BOOKS
ORDER BY Stock 
LIMIT 1;

--11) Calculate the total revenue generated from all orders
SELECT SUM(total_amount) AS Total_Revenue
FROM ORDERS;
