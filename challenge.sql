select FirstName,LastName,Email from Customers order by LastName;
create table tty(
"custId" int,
"party_size" int );

SELECT * from Dishes ORDER by price ASC;

select * from dishes where Type in ("Beverage","Dessert");

SELECT * from Dishes where Type!="Beverage";

INSERT INTO Customers(FirstName,LastName,Email,Address,City,State,Phone,Birthday)
VALUES("suhas","chan","ssmail","hebba","benga","kar",90,1998-09-06);



UPDATE Customers
set Address="kl"
where FirstName="suhas";



DELETE from Customers where FirstName="suhas";



Insert into tty(custId,party_size)
VALUES((SELECT CustomerID from Customers where Email="jdawks1@red30design.com") ,67);




select FirstName,LastName,ReservationID, Reservations.CustomerID,Date from Customers
INNER JOIN Reservations
on Customers.CustomerID=Reservations.CustomerID
where LastName in ("Stephenson","Stevenson","Stevenson")
order by Date desc;


INSERT INTO Customers(FirstName,LastName,Email,Address,City,State,Phone,Birthday)
VALUES("suhas","chan","ssmail","hebba","benga","kar",90,1998/09/06);



INSERT into Reservations(CustomerID,Date,PartySize)
VALUES("104","67",90);


select count(orders.OrderID) as OrderCount,Customers.FirstName,Customers.LastName from orders
JOIN Customers
on Customers.CustomerID=Orders.CustomerID
GROUP by Orders.CustomerID
order by OrderCount desc
limit 5;


SELECT
(select count(Title) from Books where Title="Dracula")
-

(select count(Loans.BookID) from Loans inner join books on books.BookID=Loans.BookID where Books.Title="Dracula" and Loans.ReturnedDate is NULL )
 as availablenum;
 
 insert into books(Title,Author,Published,Barcode)
 values("dra","jk","123344","12345678");
 



insert into Loans(BookID,LoanID,LoanDate,DueDate)
VALUES((SELECT BookID from books WHERE Barcode="234567234562345"),(SELECT PatronID from Patrons where Email="@vvjnmbbn.com"),"234","768");



select Loans.DueDate,Books.Title,Patrons.Email,Patrons.FirstName from books 
inner join Loans on Books.BookID=Loans.BookID
inner join Patrons on Loans.PatronID=Patrons.PatronID
where Loans.DueDate="2020-07-13" and Loans.ReturnedDate is NULL;




update loans set ReturnedDate="2020-07-23"
where BookID=(SELECT BookID from books where Barcode="234567456") and ReturnedDate is NULL;




SELECT count(Loans.LoanID),Patrons.Email,Patrons.FirstName from Loans
inner join Patrons
on Loans.PatronID=Patrons.PatronID
GROUP by Patrons.PatronID
order by count(loans.LoanID)
limit 10;



select distinct Books.title, books.BookID,Books.Published from Books
inner join loans on Loans.BookID=Books.BookID
where Books.Published>1889 and Books.Published<1900
and Loans.ReturnedDate is not NULL
order by Books.Title;


SELECT Published,count(distinct(Title)) from Books
group by Published
order by count(distinct(Title)) desc;



select count(loans.BookID),books.Title from books 
inner join Loans on Loans.BookID=Books.BookID
GROUP by books.Title
order by  count(loans.BookID) desc
limit 5;






