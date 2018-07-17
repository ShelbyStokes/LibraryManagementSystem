CREATE DATABASE db_libraryManagementSystem

USE db_libraryManagementSystem


/* Create Tables*/

	CREATE TABLE tbl_book (
		book_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
		book_title VARCHAR(50) NOT NULL,
		book_publishername VARCHAR (50) NOT NULL
	);

	CREATE TABLE tbl_book_Authors (
		book_idAuth VARCHAR (50) PRIMARY KEY NOT NULL,
		book_AuthorName VARCHAR (30) NOT NULL
	)

	CREATE TABLE tbl_Publisher (
		Pub_Name VARCHAR (50) NOT NULL,
		Pub_Address VARCHAR (30) NOT NULL,
		Pub_Phone VARCHAR (50) NOT NULL,
	)

		CREATE TABLE tbl_Library_Branch (
		branch_Id INT PRIMARY KEY NOT NULL IDENTITY (7000,1),
		branch_name VARCHAR (50) NOT NULL,
		branch_Address VARCHAR (50) NOT NULL,
	)


	CREATE TABLE tbl_Book_Copies (
		book_id VARCHAR (50) NOT NULL ,
		branchId VARCHAR (50) NOT NULL,
		no_of_Copies INT NOT NULL,
	)



	CREATE TABLE tbl_Borrower (
		card_number INT PRIMARY KEY NOT NULL IDENTITY (8000,1),
		B_Name VARCHAR (50) NOT NULL,
		B_Address VARCHAR (50) NOT NULL,
		B_phone VARCHAR (50) NOT NULL,
	)

	CREATE TABLE tbl_Book_Loans (
		book_id VARCHAR (50) NOT NULL,
		branchId VARCHAR (50)  NOT NULL,
		card_number VARCHAR (50) NOT NULL,
		date_out date,
		date_due date,
	)




/* insert Values*/

	INSERT INTO tbl_book
		(book_title, book_publishername)
		VALUES 
		('The Lost Tribe', 'CreateSpace Independent Publishing Platform'),
		('It', 'Viking Press'),
		('The Shining', 'Doubleday'),
		('The Stand', 'Doubleday'),
		('Misery', 'Viking Press'),
		('Carrie', 'Doubleday'),
		('The Adventures of Tom Sawyer', 'American Publishing Company'),
		('Adventures of Huckleberry Finn', 'American Publishing Company'),
		('The Innocents Abroad', ' American Publishing Company'),
		('Harry Potter and the Sorcerer''s Stone', 'Scholastic'),
		('A Brief History of time', 'Bantam Books'),
		('The Grand Design', 'Bantam Books'),
		('The Theory of Everything', 'Bantam Books'),
		('The Universe in a Nutshell', 'Bantam Books'),
		('Life, the universe and everything', 'Harmony Books'),
		('The Hitch-Hiker''s Guide to the Galaxy', 'Harmony Books'),
		('The Restaurant at the end of the Universe', 'Harmony Books'),
		('So Long and Thanks for All the Fish', 'Harmony Books'),
		('The Fifth Season', 'Orbit Books'),
		('The Obelisk Gate', 'Orbit Books')
	;


	INSERT INTO tbl_book_Authors
		(book_idAuth, book_AuthorName)
		VALUES 
		(100, 'Mark Lee'),
		(101, 'Stephen King'),
		(102, 'Stephen King'),
		(103, 'Stephen King'),
		(104, 'Stephen King'),
		(105, 'Stephen King'),
		(106, 'Mark Twain'),
		(107, 'Mark Twain'),
		(108, 'Mark Twain'),
		(109, 'J. K. Rowling'),
		(110, 'Stephen Hawking'),
		(111, 'Stephen Hawking'),
		(112, 'Stephen Hawking'),
		(113, 'Stephen Hawking'),
		(114, 'Douglas Adams'),
		(115, 'Douglas Adams'),
		(116, 'Douglas Adams'),
		(117, 'Douglas Adams'),
		(118, 'N. K. Jemisin'),
		(119, 'N. K. Jemisin')
	;

	
	INSERT INTO tbl_Publisher
		(Pub_Name, Pub_Address, Pub_Phone)
		VALUES 
		('CreateSpace Independent Publishing Platform', 'P.O. Box 326, 6815 Aliquam St.', '1-972-899-9776'),
		('Viking Press', '1536 Quam. St.', '1-595-709-6176'),
		('Doubleday', 'Ap #835-8651 Tempus Street', '1-832-941-0092'),
		('American Publishing Company', '716-6091 Sit Street', '1-158-915-0772'),
		('Scholastic', 'Ap #381-4460 Eget Rd.', '1-735-806-1888'),
		('Bantam Books', '6651 Nisl. Rd.', '1-480-502-2536'),
		('Harmony Books', 'P.O. Box 783, 2649 A St.', '1-423-518-3871'),
		('Orbit Books', 'Ap #610-4611 Sed, St.', '1-679-699-3576')
	;


	INSERT INTO tbl_Library_Branch
		(branch_name, branch_Address)
		VALUES 
		('Sharpstown', '457-7710 Urna, Avenue'),
		('Central', '3336 Lacus. Road'),
		('Clock Tower', '400-7740 Proin Rd.'),
		('Plum County', '103-9483 Lorem Av.')
		;

	INSERT INTO tbl_Book_Copies
		(book_id, branchId, no_of_Copies)
		VALUES 
		(100, 7001, 5),
		(101, 7001, 8),
		(102, 7001, 4),
		(103, 7001, 4),
		(104, 7001, 3),
		(105, 7001, 2),
		(106, 7001, 11),
		(107, 7001, 6),
		(108, 7001, 7),
		(109, 7001, 5),
		(110, 7001, 9),
		(111, 7001, 7),
		(112, 7002, 2),
		(113, 7002, 3),
		(114, 7002, 11),
		(115, 7002, 6),
		(116, 7002, 5),
		(117, 7002, 8),
		(118, 7002, 7),
		(119, 7002, 10),
		(100, 7002, 5),
		(101, 7002, 8),
		(102, 7003, 5),
		(103, 7003, 8),
		(104, 7003, 4),
		(105, 7003, 4),
		(106, 7003, 3),
		(107, 7003, 2),
		(108, 7003, 7),
		(109, 7003, 6),
		(110, 7003, 7),
		(111, 7003, 5),
		(112, 7000, 9),
		(113, 7000, 7),
		(114, 7000, 5),
		(115, 7000, 8),
		(116, 7000, 4),
		(117, 7000, 4),
		(118, 7000, 3),
		(119, 7000, 2),
		(100, 7000, 7),
		(101, 7000, 6)
	;

	INSERT INTO tbl_Borrower
		(B_Name, B_Address, B_Phone)
		VALUES 
		('Lionel Wagner', 'P.O. Box 952, 7882 Orci, Ave', '1-136-738-1539'),
		('Isabella Burton', 'P.O. Box 998, 6068 Aptent Rd.', '1-827-507-0998'),
		('Finn Mccall', '1598 Facilisis Av.', '1-939-525-1351'),
		('Brett Alexander', '925-2380 Sed, Street', '1-717-279-9499'),
		('Wayne Yang', 'Ap #999-9948 Non Avenue', '1-104-427-0083'),
		('Kyle Mcpherson', '1257 Arcu. Road', '1-405-353-5068'),
		('Len Castillo', '833-2370 Feugiat. Road', '1-256-371-9200'),
		('Helen Rocha', 'Ap #104-4641 Eu St.', '1-575-466-4291'),
		('Naomi Boyer', '955-8879 Pellentesque Road', '1-289-781-3193'),
		('Michael Clemons', '5091 Enim. Rd.', '1-769-211-0245')
	;

	INSERT INTO tbl_Book_Loans
		(book_id, branchID, card_number,date_out, date_due)
		VALUES 
		(100,	7000,	8000,'2017-03-09','2019-05-26'),(
101,	7000,	8000,	'2017-03-20',	'2018-08-14'),(
102,	7001,	8000, NULL , NULL	),(
103,	7001,	8000,	'2017-08-11',	'2018-07-17'),(
104,	7000,	8000,	'2017-08-11',	'2018-07-17'),(
105,	7000,	8000,	'2018-08-14',	'2018-07-17'),(
106,	7000,	8000,	'2018-01-30',	'2019-01-17'),(
107,	7000,	8000,	'2017-01-04',	'2017-06-19'),(
108,	7000,	8000,	'2017-08-11',	'2019-03-25'),(
109,	7001,	8001,	'2018-08-14',	'2019-02-25'),(
110,	7001,	8001,	NULL,	NULL),(
111,	7001,	8001,	'2017-01-04',	'2017-06-19'),(
112,	7001,	8001,	'2018-11-08',	'2019-06-06'),(
113,	7001,	8001,	'2017-06-04',	'2019-06-10'),(
114,	7001,	8001,	'2017-05-22',	'2019-05-31'),(
115,	7001,	8001,	'2017-03-23',	'2019-06-24'),(
116,	7001,	8001,	'2017-10-22',	'2019-03-24'),(
117,	7002,	8002,	'2017-01-29',	'2018-04-05'),(
118,	7002,	8002,	'2017-02-04',	'2018-03-17'),(
119,	7003,	8003,	'2017-10-16',	'2019-05-21'),(
100,	7003,	8003,	'2018-07-19',	'2019-01-04'),(
101,	7003,	8003,	'2018-08-17',	'2018-12-06'),(
102,	7002,	8004,	'2017-05-11',	'2019-02-28'),(
103,	7002,	8004,	'2017-04-18',	'2018-04-14'),(
104,	7002,	8004,	'2019-06-12',	'2019-06-25'),(
105,	7000,	8005,	'2017-09-07',	'2017-11-06'),(
106,	7000,	8005,	'2017-01-18',	'2018-01-07'),(
107,	7000,	8005,	'2018-07-12',	'2019-01-11'),(
108,	7001,	8006,	'2017-10-21',	'2019-03-03'),(
109,	7001,	8006,	'2017-06-21',	'2017-07-09'),(
110,	7001,	8006,	'2018-02-09',	'2018-03-20'),(
111,	7001,	8006,	'2017-05-19',	'2018-01-31'),(
112,	7002,	8007,	'2017-11-26',	'2018-09-29'),(
113,	7002,	8007,	'2017-11-10',	'2019-04-29'),(
114,	7002,	8007,	'2017-01-01',	'2018-02-19'),(
115,	7002,	8007,	'2018-12-12',	'2019-03-06'),(
116,	7003,	8008,	'2018-09-09',	'2019-06-28'),(
117,	7003,	8008,	'2019-01-21',	'2019-05-18'),(
118,	7003,	8008,	'2017-01-07',	'2017-05-13'),(
119,	7003,	8008,	'2018-12-12',	'2019-03-06'),(
100,	7003,	8008,	'2018-09-09',	'2019-06-28'),(
101,	7003,	8008,	'2017-05-13',	'2019-01-21'),(
102,	7003,	8008,	'2017-01-07',	'2019-02-17'),(
103,	7000,	8000,	'2018-06-02',	'2018-09-01'),(
104,	7000,	8000,	'2017-08-26',	'2018-04-11'),(
105,	7000,	8000,	'2017-01-07',	'2019-02-17'),(
106,	7000,	8000,	'2018-06-02',	'2018-09-01'),(
107,	7000,	8000,	'2017-08-26',	'2018-04-11'),(
108,	7000,	8000,	'2019-05-18',	'2019-06-28'),(
109,	7000,	8000,	'2017-05-13',	'2019-01-21')
;

/* - All selcect funciton for referencing tables. */
	SELECT * FROM tbl_Book		 
	SELECT * FROM tbl_book_Authors
	SELECT * FROM tbl_publisher
	SELECT * FROM tbl_Library_Branch	
	SELECT * FROM tbl_Book_Copies
	SELECT * FROM tbl_Borrower	
	SELECT * FROM tbl_Book_Loans	


--Stored Procedures--



/* Proc 1*/
--Number of copies of the "The Lost Tribe" owned by the "Sharpstown" Branch--

CREATE PROCEDURE dbo.uspFindTheLostTribeSharpstown
AS
SELECT tbl_book_copies.no_of_copies 
	FROM  tbl_Book_Copies
	INNER JOIN tbl_Library_Branch ON tbl_Library_Branch.branch_id = tbl_Book_Copies.branchId
	INNER JOIN tbl_Book ON tbl_Book.book_id = tbl_Book_Copies.book_id
	WHERE book_title = 'The Lost Tribe' AND branch_name = 'Sharpstown'
GO
EXEC dbo.uspFindTheLostTribeSharpstown

/*DROP PROC dbo.uspFindTheLostTribeSharpstown*/


/* Proc 2*/
--Number of copies of the "The Lost Tribe" owned by each library branch?--
CREATE PROCEDURE dbo.uspTheLostTribeByBranch
AS
SELECT tbl_Library_Branch.branch_name,tbl_book_copies.no_of_copies 
	FROM  tbl_Book_Copies
	INNER JOIN tbl_Library_Branch ON tbl_Library_Branch.branch_id = tbl_Book_Copies.branchId
	INNER JOIN tbl_Book ON tbl_Book.book_id = tbl_Book_Copies.book_id
	WHERE book_title = 'The Lost Tribe'
GO
EXEC dbo.uspTheLostTribeByBranch
/* DROP PROC dbo.uspTheLostTribeByBranch */


/* Proc 3*/
--Names of borrowers who do not have any books checked out.--
CREATE PROCEDURE dbo.uspBarrowersNoBooksOut
AS
SELECT tbl_Borrower.B_Name
	FROM tbl_Borrower
	LEFT JOIN tbl_Book_Loans ON tbl_Book_loans.card_number = tbl_borrower.card_number
	WHERE tbl_Book_Loans.book_id IS NULL   
GO
 
EXEC dbo.uspBarrowersNoBooksOut                   
/* DROP PROC dbo.uspBarrowersNoBooksOut */


/* Proc 4 */
--Books loaned out from the "Sharpstown" branch and with DueDate of today. Lists title, borrower's name, and borrower's address..--

CREATE PROCEDURE dbo.uspSharpstownDueToday
AS
SELECT tbl_book.book_title, tbl_Borrower.B_name, tbl_Borrower.B_address
	FROM tbl_Book_Loans
	INNER JOIN tbl_Book	ON tbl_Book_Loans.book_id = tbl_Book.book_id
	INNER JOIN tbl_Library_Branch ON tbl_Book_Loans.branchid = tbl_Library_Branch.branch_id
	INNER JOIN tbl_Borrower	ON tbl_Book_Loans.card_number = tbl_Borrower.card_number
	WHERE branch_name = 'Sharpstown' AND date_due = Convert(date, getdate()) 
	;
GO
	


EXEC dbo.uspSharpstownDueToday                 
/* DROP PROC dbo.uspBarrowersNoBooksOut */


/* Proc 5 */
--Calls branch name and the total number of books loaned out from that branch.--
CREATE PROCEDURE dbo.uspBranchOutstanding
AS
SELECT tbl_Library_Branch.branch_name AS BranchName, COUNT(tbl_Book_Loans.date_out) AS NumberOfBooksOut
	FROM tbl_Book_Loans
	INNER JOIN tbl_Library_Branch ON tbl_Book_Loans.branchId = tbl_Library_Branch.branch_Id
	GROUP BY tbl_Library_Branch.branch_name;
GO
EXEC dbo.uspBranchOutstanding                 
/* DROP PROC dbo.uspBranchOutstanding */



/* Proc 6 */
--Retrieves names, addresses, and number of books checked out for all borrowers who have more than five books checked out.--
CREATE PROCEDURE dbo.uspBooksOutByBorrower
AS
SELECT tbl_Borrower.B_Name,tbl_Borrower.B_Address, tbl_Borrower.B_phone, COUNT (tbl_Book_Loans.date_out) AS 'numberOfBooksOut'
	FROM tbl_Book_Loans
	INNER JOIN tbl_Borrower ON tbl_Book_Loans.card_number = tbl_Borrower.card_number

	GROUP BY B_Name, B_Address, B_phone
	HAVING COUNT (tbl_Book_Loans.date_out) > 5
	;
GO
EXEC dbo.uspBooksOutByBorrower                 
/* DROP PROC dbo.uspBooksOutByBorrower */

 
/* Proc 7 */
--Returns the  title and the number of copies for books authored by "Stephen King" for the "Central" library branch.--
CREATE PROCEDURE dbo.uspCentralStephenKing
AS
SELECT tbl_book.book_title, tbl_Book_Copies.no_of_Copies
	FROM tbl_book
	INNER JOIN tbl_book_Authors	ON tbl_Book.book_id = tbl_book_Authors.book_idAuth
	INNER JOIN tbl_Book_Copies ON tbl_Book_Copies.book_id = tbl_book.book_id
	INNER JOIN tbl_Library_Branch	ON tbl_Book_Copies.branchId = tbl_Library_Branch.branch_Id
	WHERE tbl_Library_Branch.branch_name = 'Central' AND tbl_book_Authors.book_AuthorName = 'Stephen King' 
	;
GO
EXEC dbo.uspCentralStephenKing                 
/* DROP PROC dbo.uspCentralStephenKing */