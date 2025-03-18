-- create a database....
CREATE DATABASE Library;

-- use the database...
USE Library;

-- Tables & Relationships
-- create authors table....
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,          
    name VARCHAR(255) NOT NULL,         
    email VARCHAR(255) UNIQUE NOT NULL   
);

-- -- create a table of books
CREATE TABLE Books (
    book_id INT PRIMARY KEY,                 
    title VARCHAR(255),                
    author_id INT,                           
    category VARCHAR(100),                 
    isbn VARCHAR(25),                       
    published_date DATE,                  
    price DECIMAL(10, 2),                  
    available_copies INT,                   
    FOREIGN KEY (author_id) REFERENCES Authors (author_id) 
);

-- create a table of Members...
CREATE TABLE Members (
    member_id INT PRIMARY KEY,            
    name VARCHAR(255) NOT NULL,            
    email VARCHAR(255) UNIQUE NOT NULL,    
    phone_number VARCHAR(15),              
    membership_date DATE NOT NULL          
);

-- create a table of transactions..
CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    fine_amount DECIMAL(10, 2) DEFAULT 0.00,
    FOREIGN KEY (member_id) REFERENCES Members (member_id),
    FOREIGN KEY (book_id) REFERENCES Books (book_id)
);

-- Insert records into the Authors table
INSERT INTO Authors (author_id, name, email)
VALUES
(1, 'John Doe', 'johndoe@example.com'),
(2, 'Jane Smith', 'janesmith@example.com'),
(3, 'Emily Davis', 'emilydavis@example.com'),
(4, 'Sun Tzu', 'suntzu@example.com'),
(5, 'Mark Johnson', 'markjohnson@example.com'),
(6, 'Chris Lee', 'chrislee@example.com'),
(7, 'Sarah Williams', 'sarahwilliams@example.com'),
(8, 'David Brown', 'davidbrown@example.com'),
(9, 'Michael Harris', 'michaelharris@example.com'),
(10, 'Laura Green', 'lauragreen@example.com'),
(11, 'Robert Brown', 'robertbrown@example.com'),
(12, 'Alice Cooper', 'alicecooper@example.com'),
(13, 'Homer Simpson', 'homersimpson@example.com'),
(14, 'Neil deGrasse Tyson', 'neiltyson@example.com'),
(15, 'Sheryl Sandberg', 'sherylsandberg@example.com'),
(16, 'Tim Berners-Lee', 'timbernerslee@example.com'),
(17, 'Thomas Edison', 'thomasedison@example.com'),
(18, 'Agatha Christie', 'agathachristie@example.com'),
(19, 'Satoshi Nakamoto', 'satoshinakamoto@example.com'),
(20, 'Dale Carnegie', 'dalecarnegie@example.com'),
(21, 'Donald Knuth', 'donaldknuth@example.com'),
(22, 'Carl Jung', 'carljung@example.com'),
(23, 'Andrew Ng', 'andrewng@example.com'),
(24, 'Elon Musk', 'elonmusk@example.com'),
(25, 'Leonardo da Vinci', 'leonardodavinci@example.com'),
(26, 'Bjarne Stroustrup', 'bjarnestroustrup@example.com'),
(27, 'Walter Isaacson', 'walterisaacson@example.com'),
(28, 'Gary Vaynerchuk', 'garyvaynerchuk@example.com'),
(29, 'Grant Cardone', 'grantcardone@example.com'),
(30, 'Jon Kabat-Zinn', 'jonkabatzinn@example.com');

-- Insert 30 dummy records into the Books table
-- Insert 30 dummy books
INSERT INTO Books (book_id, title, author_id, category, isbn, published_date, price, available_copies)
VALUES
(101, 'The Great Adventure', 1, 'Fiction', '978-1234567890', '2023-01-01', 10.99, 5),
(102, 'SQL for Beginners', 2, 'Education', '978-2345678901', '2022-06-15', 12.99, 3),
(103, 'JavaScript Fundamentals', 3, 'Technology', '978-3456789012', '2021-09-05', 15.50, 4),
(104, 'Lost in the Jungle', 4, 'Adventure', '978-4567890123', '2022-03-22', 9.99, 7),
(105, 'Space Exploration', 5, 'Science', '978-5678901234', '2020-11-10', 18.50, 6),
(106, 'The Power of Habit', 6, 'Self-help', '978-6789012345', '2021-02-14', 11.99, 8),
(107, 'The Art of War', 7, 'Philosophy', '978-7890123456', '2020-04-01', 13.99, 10),
(108, 'Machine Learning Basics', 8, 'Technology', '978-8901234567', '2021-06-10', 20.00, 4),
(109, 'Shakespeare’s Plays', 9, 'Literature', '978-9012345678', '2019-10-05', 7.99, 3),
(110, 'AI and the Future', 10, 'Technology', '978-0123456789', '2022-01-18', 22.50, 2),
(111, 'The Secret to Success', 11, 'Self-help', '978-1234567891', '2020-05-17', 14.99, 5),
(112, 'Introduction to Python', 12, 'Technology', '978-2345678902', '2021-08-21', 16.99, 6),
(113, 'History of Ancient Civilizations', 13, 'History', '978-3456789013', '2018-12-15', 12.00, 7),
(114, 'Success Habits', 14, 'Self-help', '978-4567890124', '2021-03-11', 9.99, 4),
(115, 'Mastering C++', 15, 'Technology', '978-5678901235', '2022-02-28', 25.00, 8),
(116, 'The Wonders of the Universe', 16, 'Science', '978-6789012346', '2020-07-10', 13.50, 6),
(117, 'Cooking 101', 17, 'Cookbook', '978-7890123457', '2021-11-12', 17.99, 3),
(118, 'Philosophy of the Mind', 18, 'Philosophy', '978-8901234568', '2019-04-02', 19.99, 4),
(119, 'Understanding Quantum Mechanics', 19, 'Science', '978-9012345679', '2022-09-09', 29.99, 5),
(120, 'Economics for Beginners', 20, 'Economics', '978-0123456790', '2020-10-23', 14.50, 6),
(121, 'Modern Architecture', 21, 'Art', '978-1234567892', '2021-12-05', 18.00, 4),
(122, 'Digital Marketing Mastery', 22, 'Business', '978-2345678903', '2022-07-18', 24.99, 5),
(123, 'The Book of Heroes', 23, 'Fantasy', '978-3456789014', '2021-01-30', 12.49, 9),
(124, 'Building Mobile Apps', 24, 'Technology', '978-4567890125', '2022-03-25', 19.99, 6),
(125, 'Mastering Negotiation', 25, 'Business', '978-5678901236', '2020-12-12', 21.50, 5),
(126, 'Social Media Marketing', 26, 'Business', '978-6789012347', '2021-05-20', 15.99, 3),
(127, 'Meditation for Beginners', 27, 'Self-help', '978-7890123458', '2019-07-14', 8.99, 4),
(128, 'Advanced Data Structures', 28, 'Technology', '978-8901234569', '2022-01-22', 30.00, 2),
(129, 'Art History', 29, 'Art', '978-9012345680', '2020-08-09', 17.49, 7),
(130, 'Basic Economics', 30, 'Economics', '978-0123456791', '2021-03-16', 13.50, 6);


-- Insert records into table of members..
INSERT INTO Members (member_id, name, email, phone_number, membership_date)
VALUES
(1, 'John Doe', 'john.doe@example.com', '123-456-7890', '2023-01-01'),
(2, 'Jane Smith', 'jane.smith@example.com', '123-456-7891', '2022-06-15'),
(3, 'Alice Johnson', 'alice.johnson@example.com', '123-456-7892', '2021-09-05'),
(4, 'Robert Brown', 'robert.brown@example.com', '123-456-7893', '2022-03-22'),
(5, 'Emily Davis', 'emily.davis@example.com', '123-456-7894', '2020-11-10'),
(6, 'Michael Wilson', 'michael.wilson@example.com', '123-456-7895', '2021-02-14'),
(7, 'Sarah Moore', 'sarah.moore@example.com', '123-456-7896', '2021-05-21'),
(8, 'James Taylor', 'james.taylor@example.com', '123-456-7897', '2020-07-15'),
(9, 'David Anderson', 'david.anderson@example.com', '123-456-7898', '2022-01-18'),
(10, 'Linda Thomas', 'linda.thomas@example.com', '123-456-7899', '2021-06-28'),
(11, 'Mark Jackson', 'mark.jackson@example.com', '123-456-7800', '2020-03-14'),
(12, 'Susan White', 'susan.white@example.com', '123-456-7801', '2021-12-05'),
(13, 'Daniel Harris', 'daniel.harris@example.com', '123-456-7802', '2021-08-21'),
(14, 'Laura Martin', 'laura.martin@example.com', '123-456-7803', '2020-09-25'),
(15, 'Kevin Lee', 'kevin.lee@example.com', '123-456-7804', '2021-03-11'),
(16, 'Olivia Walker', 'olivia.walker@example.com', '123-456-7805', '2020-02-14'),
(17, 'Daniel King', 'daniel.king@example.com', '123-456-7806', '2021-09-09'),
(18, 'Sophia Scott', 'sophia.scott@example.com', '123-456-7807', '2022-07-12'),
(19, 'James Harris', 'james.harris@example.com', '123-456-7808', '2022-11-05'),
(20, 'Elizabeth Clark', 'elizabeth.clark@example.com', '123-456-7809', '2021-12-10'),
(21, 'Christopher Lewis', 'christopher.lewis@example.com', '123-456-7810', '2020-08-30'),
(22, 'Jessica Young', 'jessica.young@example.com', '123-456-7811', '2021-04-16'),
(23, 'William Hall', 'william.hall@example.com', '123-456-7812', '2020-11-05'),
(24, 'Isabella Allen', 'isabella.allen@example.com', '123-456-7813', '2022-01-25'),
(25, 'David Nelson', 'david.nelson@example.com', '123-456-7814', '2021-07-30'),
(26, 'Matthew Carter', 'matthew.carter@example.com', '123-456-7815', '2022-04-10'),
(27, 'Emma Mitchell', 'emma.mitchell@example.com', '123-456-7816', '2020-06-25'),
(28, 'Joshua Perez', 'joshua.perez@example.com', '123-456-7817', '2021-03-18'),
(29, 'Avery Roberts', 'avery.roberts@example.com', '123-456-7818', '2022-09-05'),
(30, 'Sophia Lee', 'sophia.lee@example.com', '123-456-7819', '2021-10-21');

-- Insert records into tables of transactions...
INSERT INTO Transactions (member_id, book_id, borrow_date, return_date, fine_amount)
VALUES
(1,101, '2023-01-01', '2023-01-10', 0.00),
(2,102, '2022-06-15', '2022-06-25', 0.00),
(3,103, '2021-09-05', '2021-09-15', 5.00),
(4,104, '2022-03-22', '2022-03-30', 0.00),
(5,105, '2020-11-10', '2020-11-20', 2.50),
(6,106, '2021-02-14', '2021-02-21', 0.00),
(7,107, '2021-05-21', '2021-06-01', 0.00),
(8,108, '2020-07-15', '2020-07-25', 0.00),
(9,109, '2022-01-18', '2022-01-28', 3.00),
(10,110, '2021-06-28', '2021-07-10', 0.00),
(11,111, '2020-03-14', '2020-03-24', 1.50),
(12,112, '2021-12-05', '2021-12-15', 0.00),
(13,113, '2021-08-21', '2021-09-01', 0.00),
(14,114, '2020-09-25', '2020-10-05', 2.00),
(15,115, '2021-03-11', '2021-03-21', 0.00),
(16,116, '2020-02-14', '2020-02-24', 0.00),
(17,117, '2021-09-09', '2021-09-19', 0.00),
(18,118, '2022-07-12', '2022-07-20', 4.00),
(19,119, '2022-11-05', '2022-11-15', 0.00),
(20,120, '2021-12-10', '2021-12-20', 0.00),
(21,121, '2020-08-30', '2020-09-09', 2.50),
(22,122, '2021-04-16', '2021-04-26', 0.00),
(23,123, '2020-11-05', '2020-11-15', 1.00),
(24,124, '2022-01-25', '2022-02-05', 0.00),
(25,125, '2021-07-30', '2021-08-09', 1.50),
(26,126, '2022-04-10', '2022-04-20', 0.00),
(27,127, '2020-06-25', '2020-07-05', 3.00),
(28,128, '2021-03-18', '2021-03-28', 0.00),
(29,129, '2022-09-05', '2022-09-15', 0.00),
(30,130, '2021-10-21', '2021-10-31', 5.00);

-- Insert a new author
INSERT INTO Authors (author_id, name, email)
VALUES (31, 'Milan kathiriya sir', 'Milan.kathiriya@example.com');

-- Insert a new book
INSERT INTO Books (book_id, title, author_id, category, isbn, published_date, price, available_copies)
VALUES (131, '1984', 31, 'python', '978-0451524935', '1949-06-08', 20.99, 10);

-- Insert a new member
INSERT INTO Members (member_id, name, email, phone_number, membership_date)
VALUES (131, 'Dhruv joshi', 'dhruv.joshi@example.com', '123-456-7890', '2023-03-10');

-- When a book is borrowed, reduce the available copies
UPDATE Books
SET available_copies = available_copies - 1
WHERE book_id = 101;

-- When a book is returned, increase the available copies
UPDATE Books
SET available_copies = available_copies + 1
WHERE book_id = 101;

-- Delete members who haven't borrowed any books in the last year
DELETE FROM Members WHERE member_id = 101;

-- Retrieve all books with available copies
SELECT * FROM Books
WHERE available_copies > 0;

-- Get books published after the year 2015
SELECT * FROM Books
WHERE published_date > '2015-12-31';

-- Retrieve the top 5 most expensive books
SELECT * FROM Books
ORDER BY price DESC
LIMIT 5;

-- Find members who joined before 2022
SELECT * FROM Members
WHERE membership_date < '2022-01-01';

-- Get books where Category = 'Science' AND price < 25.
SELECT * FROM Books
WHERE category = 'Science' AND price < 25;

-- Find all books that are NOT available for borrowing.
SELECT * FROM Books
WHERE available_copies = 0;

-- List all members who joined after 2020 OR have borrowed more than 3 books.
SELECT m.*
FROM Members m
LEFT JOIN Transactions t ON m.member_id = t.member_id
GROUP BY m.member_id
HAVING m.membership_date > '2020-01-01' OR COUNT(t.transaction_id) > 3;

-- List all books sorted by title in alphabetical order:
SELECT * FROM Books
ORDER BY title ASC;

-- Display the number of books borrowed by each member:
SELECT m.member_id, m.name, COUNT(t.transaction_id) AS books_borrowed
FROM Members m
LEFT JOIN Transactions t ON m.member_id = t.member_id
GROUP BY m.member_id;

-- Group books by category and show the total count:
SELECT category, COUNT(*) AS total_books
FROM Books
GROUP BY category;

-- Find the total number of books in each category:
SELECT category, COUNT(*) AS total_books
FROM Books
GROUP BY category;

-- Calculate the average price of books in the library:
SELECT AVG(price) AS average_price
FROM Books;

-- Identify the most borrowed book:
SELECT b.title, COUNT(t.transaction_id) AS borrow_count
FROM Books b
JOIN Transactions t ON b.book_id = t.book_id
GROUP BY b.book_id
ORDER BY borrow_count DESC
LIMIT 1;

-- Calculate the total fines collected:
SELECT SUM(fine_amount) AS total_fines
FROM Transactions;

-- Ensure books are linked to authors
-- Query has been already written:

-- Establish relationships between members and their transactions
-- Query has been already created:

-- Retrieve a list of books along with their respective author names using INNER JOIN
SELECT b.title, a.name AS author_name
FROM Books b
INNER JOIN Authors a ON b.author_id = a.author_id;

-- Get details of members who have borrowed books using LEFT JOIN..
SELECT m.member_id, m.name, m.email
FROM Members m
LEFT JOIN Transactions t ON m.member_id = t.member_id
WHERE t.transaction_id IS NOT NULL;

-- Find books that haven't been borrowed using RIGHT JOIN..
SELECT b.title
FROM Books b
RIGHT JOIN Transactions t ON b.book_id = t.book_id
WHERE t.transaction_id IS NULL;

-- Show members who have never borrowed a book using FULL OUTER JOIN..
-- MySQL doesn't support FULL OUTER JOIN directly. We can use UNION..
SELECT m.member_id, m.name
FROM Members m
LEFT JOIN Transactions t ON m.member_id = t.member_id
WHERE t.transaction_id IS NULL
UNION
SELECT m.member_id, m.name
FROM Members m
RIGHT JOIN Transactions t ON m.member_id = t.member_id
WHERE t.transaction_id IS NULL;

-- Find books that were borrowed by members who registered after 2022..
SELECT b.title
FROM Books b
WHERE b.book_id IN (
    SELECT t.book_id
    FROM Transactions t
    JOIN Members m ON t.member_id = m.member_id
    WHERE m.membership_date > '2022-01-01'
);

-- Identify the most borrowed book using a subquery...
SELECT b.title
FROM Books b
WHERE b.book_id = (
    SELECT t.book_id
    FROM Transactions t
    GROUP BY t.book_id
    ORDER BY COUNT(t.transaction_id) DESC
    LIMIT 1
);

-- Get members who have never borrowed a book...
SELECT m.member_id, m.name
FROM Members m
WHERE m.member_id NOT IN (
    SELECT t.member_id
    FROM Transactions t
);

-- Extract the year from published_date to count books by publication year...
SELECT YEAR(published_date) AS publication_year, COUNT(*) AS total_books
FROM Books
GROUP BY publication_year;

-- Find the difference in days between borrow_date and return_date to calculate late return fines..
SELECT transaction_id, DATEDIFF(return_date, borrow_date) AS late_days
FROM Transactions
WHERE return_date > borrow_date;

-- Format borrow_date as DD-MM-YYYY..
SELECT transaction_id, DATE_FORMAT(borrow_date, '%d-%m-%Y') AS formatted_borrow_date
FROM Transactions;

-- Convert all book titles to uppercase..
SELECT UPPER(title) AS uppercase_title
FROM Books;

-- Trim whitespace from author names...
SELECT TRIM(name) AS trimmed_author_name
FROM Authors;

-- Replace missing email values with "Not Provided"...
SELECT member_id, name, IFNULL(email, 'Not Provided') AS email
FROM Members;

-- Rank books based on the number of times they have been borrowed..
SELECT b.title, 
       COUNT(t.transaction_id) AS borrow_count,
       RANK() OVER (ORDER BY COUNT(t.transaction_id) DESC) AS `rank`
FROM Books b
JOIN Transactions t ON b.book_id = t.book_id
GROUP BY b.book_id
ORDER BY borrow_count DESC;

-- Show the cumulative number of books borrowed per member...
SELECT m.member_id, m.name, 
       COUNT(t.transaction_id) AS books_borrowed,
       SUM(COUNT(t.transaction_id)) OVER (ORDER BY m.member_id) AS cumulative_books_borrowed
FROM Members m
JOIN Transactions t ON m.member_id = t.member_id
GROUP BY m.member_id, m.name
ORDER BY m.member_id;

-- Display the moving average of books borrowed in the last 3 months..
SELECT member_id, COUNT(t.transaction_id) AS books_borrowed,
       AVG(COUNT(t.transaction_id)) OVER (ORDER BY borrow_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM Transactions t
GROUP BY member_id, borrow_date;

-- Assign a Membership_Status column with values "Active" if the member has borrowed a book in the last 6 months, "Inactive" if no books have been borrowed in the last 6 months... 
SELECT m.member_id, m.name,
       CASE
           WHEN EXISTS (SELECT 1 FROM Transactions t WHERE t.member_id = m.member_id AND t.borrow_date > CURDATE() - INTERVAL 6 MONTH)
           THEN 'Active'
           ELSE 'Inactive'
       END AS Membership_Status
FROM Members m;

-- Categorize books: "New Arrival" for books published after 2020, "Classic" for books published before 2000, and "Regular" for others..
SELECT b.title,
       CASE
           WHEN b.published_date > '2020-01-01' THEN 'New Arrival'
           WHEN b.published_date < '2000-01-01' THEN 'Classic'
           ELSE 'Regular'
       END AS book_category
FROM Books b;







