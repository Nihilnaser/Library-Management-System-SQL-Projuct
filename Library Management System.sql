CREATE DATABASE LIBRARY;
USE LIBRARY;
-- 1.TABLE BRANCH
CREATE TABLE Branch (Branch_no INT PRIMARY KEY,Manager_Id INT,
    Branch_address VARCHAR(50),Contact_no VARCHAR(15));
    -- values into table
    INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1, 101, 'Tirur.2', '920348019'),
(2, 102, 'Trissur jun 2', '7994559339'),
(3, 103, 'TRM jun 2', '796455909'),
(4, 104, 'kollam rod', '796455905'),
(5, 105, 'clkt ptr', '796455962');
select *from branch;


-- 2.TABLE EMPLOYEE 
CREATE TABLE Employee (Emp_Id INT PRIMARY KEY,Emp_name VARCHAR(50),
    Position VARCHAR(50),Salary DECIMAL(10, 2),Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no));

-- values into table 
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(201, 'John Doe', 'Librarian', 30000.00, 1),
(202, 'Jane Smith', 'Asst. Librarian', 25000.00, 2),
(203, 'Alice Johnson', 'Technician', 28000.00, 1),
(204, 'Robert Brown', 'Manager', 55000.00, 2),
(205, 'Samuel Adams', 'Assistant', 26000.00, 3),
(206, 'Lily Brown', 'Technician', 27000.00, 3),
(207, 'James Wilson', 'Manager', 55000.00, 4),
(208, 'Patricia Miller', 'Librarian', 32000.00, 4),
(209, 'George Clark', 'Assistant', 24000.00, 5),
(210, 'Megan Davis', 'Technician', 29000.00, 5),
(211, 'Sophia Johnson', 'Librarian', 34000.00, 1),
(212, 'Henry Moore', 'Manager', 58000.00, 2),
(213, 'Chris Evans', 'Assistant', 25000.00, 1),
(214, 'Olivia Taylor', 'Technician', 27000.00, 3),
(215, 'Ella Scott', 'Librarian', 33000.00, 5),
(216, 'Aiden Thomas', 'Manager', 57000.00, 4),
(217, 'Emma Martinez', 'Assistant', 26500.00, 5),
(218, 'Liam Anderson', 'Technician', 28000.00, 2),
(219, 'Lucas White', 'Manager', 59000.00, 3);

SELECT * FROM Employee;

-- 3 TABLE BOOKS 
CREATE TABLE Books (ISBN VARCHAR(20) PRIMARY KEY,Book_title VARCHAR(50),
    Category VARCHAR(20),Rental_Price DECIMAL(10, 2),Status ENUM('yes', 'no'),
    Author VARCHAR(20),Publisher VARCHAR(20));
    
    
    INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
('978-81-8465-000-1', 'Randamoozham', 'Fiction', 120.00, 'yes', 'M.T. Vasudevan', 'DC Books'),
('978-81-8465-000-2', 'Aadujeevitham', 'Fiction', 150.00, 'yes', 'Benyamin', 'Green Books'),
('978-81-8465-000-3', 'Chemmeen', 'Romance', 130.00, 'yes', 'Thakazhi', 'Current Books'),
('978-81-8465-000-4', 'Naalukettu', 'Fiction', 140.00, 'yes', 'M.T. Vasudevan', 'DC Books'),
('978-81-8465-000-5', 'Oru Desathinte', 'Drama', 110.00, 'yes', 'S.K. Pottekkatt', 'Mathrubhumi'),
('978-81-8465-000-6', 'Balyakalasakhi', 'Romance', 125.00, 'yes', 'Basheer', 'DC Books'),
('978-81-8465-000-7', 'Kayar', 'Historical', 170.00, 'yes', 'Thakazhi', 'Current Books'),
('978-81-8465-000-8', 'Indulekha', 'Historical', 135.00, 'yes', 'Chandu Menon', 'Mathrubhumi'),
('978-81-8465-000-9', 'Pathummayude', 'Biography', 145.00, 'yes', 'Basheer', 'DC Books'),
('978-81-8465-001-0', 'Khasakkinte', 'Philosophy', 155.00, 'yes', 'O.V. Vijayan', 'DC Books'),
('978-81-8465-001-1', 'Mayyazhippuzhay', 'Historical', 160.00, 'yes', 'M. Mukundan', 'Current Books'),
('978-81-8465-001-2', 'Odayil Ninnu', 'Drama', 140.00, 'yes', 'P. Kesavadev', 'Mathrubhumi'),
('978-81-8465-001-3', 'Madhavikkutty', 'Biography', 130.00, 'yes', 'Kamala Das', 'Green Books'),
('978-81-8465-001-4', 'Ara Nazhika', 'Drama', 145.00, 'yes', 'Parappuram', 'DC Books'),
('978-81-8465-001-5', 'Verukal', 'Fiction', 110.00, 'yes', 'Malayattoor', 'Mathrubhumi');


-- 4 TABLE Customer
CREATE TABLE Customer (Customer_Id INT PRIMARY KEY,Customer_name VARCHAR(20),
    Customer_address VARCHAR(50),Reg_date DATE);
    
    INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(301, 'Emily White', '789 Elm St', '2021-12-15'),
(302, 'Michael Green', '321 Maple Ave', '2023-01-10'),
(303, 'Sarah Black', '654 Pine Rd', '2022-07-23'),
(304, 'David Blue', '987 Cedar Ln', '2021-05-05'),
(305, 'Sophia Johnson', '321 Pine St', '2023-04-19'),
(306, 'John Brown', '123 Cedar Ave', '2022-08-20'),
(307, 'Lucy Grey', '456 Oak Blvd', '2023-03-11'),
(308, 'Mark Smith', '789 Birch St', '2022-09-25'),
(309, 'Lisa Clark', '101 Pine St', '2021-11-30'),
(310, 'Paul Adams', '202 Elm St', '2023-02-18'),
(311, 'Emma Davis', '303 Maple St', '2022-06-22'),
(312, 'Ryan Evans', '404 Oak Ave', '2021-10-15'),
(313, 'Megan Lee', '505 Cedar Rd', '2023-05-27'),
(314, 'Ethan Brown', '606 Birch Blvd', '2022-07-10'),
(315, 'Olivia Wilson', '707 Pine Ln', '2021-12-01');


-- 5 TABLE IssueStatus 
CREATE TABLE IssueStatus (Issue_Id INT PRIMARY KEY,Issued_cust INT,Issued_book_name VARCHAR(20),
    Issue_date DATE,Isbn_book VARCHAR(20),FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN));
    
    INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
(401, 301, 'Randamoozham', '2023-06-10', '978-81-8465-000-1'),
(402, 302, 'Aadujeevitham', '2023-06-15', '978-81-8465-000-2'),
(403, 303, 'Chemmeen', '2023-06-20', '978-81-8465-000-3'),
(404, 304, 'Naalukettu', '2023-06-25', '978-81-8465-000-4'),
(405, 305, 'Oru Desathinte', '2023-06-30', '978-81-8465-000-5'),
(406, 306, 'Balyakalasakhi', '2023-07-05', '978-81-8465-000-6'),
(407, 307, 'Kayar', '2023-07-10', '978-81-8465-000-7'),
(408, 308, 'Indulekha', '2023-07-15', '978-81-8465-000-8'),
(409, 309, 'Pathummayude', '2023-07-20', '978-81-8465-000-9'),
(410, 310, 'Khasakkinte', '2023-07-25', '978-81-8465-001-0'),
(411, 311, 'Mayyazhippuzhay', '2023-07-30', '978-81-8465-001-1'),
(412, 312, 'Odayil Ninnu', '2023-08-04', '978-81-8465-001-2'),
(413, 313, 'Madhavikkutty', '2023-08-09', '978-81-8465-001-3'),
(414, 314, 'Ara Nazhika', '2023-08-14', '978-81-8465-001-4'),
(415, 315, 'Verukal', '2023-08-19', '978-81-8465-001-5');

    
    -- 6 TABLE ReturnStatus 
    CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY,Return_cust INT,
    Return_book_name VARCHAR(20),Return_date DATE,Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN));
   
   INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(501, 301, 'Randamoozham', '2023-07-01', '978-81-8465-000-1'),
(502, 302, 'Aadujeevitham', '2023-07-05', '978-81-8465-000-2'),
(503, 303, 'Chemmeen', '2023-07-08', '978-81-8465-000-3'),
(504, 304, 'Naalukettu', '2023-07-12', '978-81-8465-000-4'),
(505, 305, 'Oru Desathinte', '2023-07-15', '978-81-8465-000-5'),
(506, 306, 'Balyakalasakhi', '2023-07-20', '978-81-8465-000-6'),
(507, 307, 'Kayar', '2023-07-25', '978-81-8465-000-7'),
(508, 308, 'Indulekha', '2023-07-28', '978-81-8465-000-8'),
(509, 309, 'Pathummayude', '2023-08-02', '978-81-8465-000-9'),
(510, 310, 'Khasakkinte', '2023-08-07', '978-81-8465-001-0'),
(511, 311, 'Mayyazhippuzhay', '2023-08-12', '978-81-8465-001-1'),
(512, 312, 'Odayil Ninnu', '2023-08-17', '978-81-8465-001-2'),
(513, 313, 'Madhavikkutty', '2023-08-21', '978-81-8465-001-3'),
(514, 314, 'Ara Nazhika', '2023-08-25', '978-81-8465-001-4'),
(515, 315, 'Verukal', '2023-08-29', '978-81-8465-001-5');

-- 1. Retrieve the book title, category, and rental price of all available books. 
SELECT Book_title, Category, Rental_Price FROM Books WHERE Status = 'yes';

-- 2. List the employee names and their respective salaries in descending order of salary. 
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT Book_title, 
       (SELECT Customer_name FROM Customer 
        WHERE Customer_Id = Issued_cust) AS Customer_name FROM Books 
        WHERE ISBN IN (SELECT Isbn_book FROM IssueStatus);

SELECT b.Book_title, c.Customer_name FROM Books b
JOIN IssueStatus i ON b.ISBN = i.Isbn_book
JOIN Customer c ON i.Issued_cust = c.Customer_Id;

-- 4. Display the total count of books in each category. 
SELECT Category, COUNT(*) AS Total_Books FROM Books
GROUP BY Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs. 50,000.
SELECT Emp_name, Position,salary FROM Employee WHERE Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT c.Customer_name FROM Customer c
LEFT JOIN IssueStatus i ON c.Customer_Id = i.Issued_cust
WHERE c.Reg_date < '2022-01-01'  AND i.Issued_cust IS NULL;

-- 7. Display the branch numbers and the total count of employees in each branch.
SELECT Branch_no, COUNT(*) AS Total_Employees FROM Employee
GROUP BY Branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023.
SELECT  Customer_name FROM Customer WHERE Customer_Id IN 
(	SELECT Issued_cust FROM IssueStatus
    WHERE Issue_date BETWEEN '2023-06-01' AND '2023-06-30');
    
-- 9. Retrieve book_title from book table containing history.
SELECT Book_title FROM Books WHERE Category = 'Historical';

-- 10. Retrieve the branch numbers along with the count of employees for branches having more than 3 employees.
SELECT Branch_no, COUNT(*) AS Employee_Count FROM Employee
GROUP BY Branch_no HAVING COUNT(*) > 3;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses.
SELECT e.Emp_name, b.Branch_address FROM Employee e
JOIN Branch b ON e.Branch_no = b.Branch_no WHERE e.Position = 'Manager';

-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
SELECT  Customer_name FROM Customer WHERE Customer_Id IN 
(SELECT Issued_cust FROM IssueStatus
    WHERE Isbn_book IN (SELECT ISBN FROM Books WHERE Rental_Price > 25));


    













