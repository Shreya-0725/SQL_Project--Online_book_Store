--ADVANCE QUERIES


--1) Retrieve the total number of books sold for each genre
SELECT b.Genre, SUM(o.Quantity) AS Toal_books_sold
FROM Orders o
JOIN Books b ON o.book_id = b.book_id
GROUP BY b.Genre


--2) Find the average price of books in the "Fantasy" genre
SELECT AVG(Price) AS Avg_price_books 
FROM BOOKS
WHERE Genre = 'Fantasy';


--3) List customers who have placed at least 2 orders
SELECT o.customer_id, c.name, COUNT(o.Order_id) AS Order_Count
FROM Orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(Order_id) >= 2;


--4) Find the most frequently ordered book
SELECT Book_id, COUNT(order_id) AS Order_Count
FROM Orders
GROUP BY Book_id
ORDER BY Order_Count DESC LIMIT 1;


--5) Show the top 3 most expensive books of "Fantasy" genre
SELECT * FROM Books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC LIMIT 3;


--6) Retrieve the total quantity of books sold by each author
SELECT b.author, SUM(o.Quantity) AS Total_Books_Sold
FROM ORDERS o
JOIN Books b ON o.Book_id = b.Book_id
GROUP BY b.author;


--7) List the cities where customers who spent over $30 are located
SELECT DISTINCT c.city, total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.total_amount > 30;


--8) Find the customer who spent the most on orders
SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_Spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent DESC LIMIT 1;



