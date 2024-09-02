use library;
create table Branch ( Branch_no varchar(20) Primary key ,
Manager_id varchar(10) ,
Branch_Address varchar(20),
Contact_no varchar(15) ); 
Create table Employee (Emp_Id varchar(20) Primary Key ,
Emp_name varchar(20) ,
Position varchar(20) ,
Salary varchar (20) ,
Branch_no varchar(20),
Foreign Key (Branch_no) references Branch (Branch_no) );
Create table Books ( ISBN varchar(10) Primary Key,
Book_title varchar(20),
Category varchar(20) ,
Rental_Price varchar(20),
Status varchar(10),
Author varchar(20),
Publisher varchar(20) );
Select * from Books;
Create table Customer (Customer_id varchar(10) Primary key,
Customer_name varchar(25),
Customer_address varchar(30),
Reg_date varchar(15) );
Create table Issuestatus ( Issue_id varchar(10) Primary key,
Issued_cust varchar(20),
foreign key ( Issued_cust) references Customer (Customer_id),
Issued_Book_name varchar(40),
Issued_date varchar(10),
Isbn_book varchar(10),
Foreign Key(Isbn_book ) references Books(ISBN));
Create table Returnstatus ( Return_id varchar(10) Primary Key,
Return_cust varchar(10),
Return_book_name varchar(10),
Return_date varchar(10),
Isbn_book2 varchar(10),
Foreign key(Isbn_book2) references Books(ISBN));
insert into Books values(001,'Guns&Roses','Fiction',30,'A','Kevin','ABC');
insert into Books values(002,'Sapiens','Non Fiction',70,'A','Yuval','ABD');
insert into Books values(003,'True detective','Fiction',30,'A','Sam','BRD');
insert into Books values(004,'White tiger','Fiction',30,'A','Aravind','BRD');
insert into Books values(005,'5 Point someone','Fiction',30,'A','chetan','BCD');
insert into Books values(006,'2 states','Fiction',50,'A','chetan','BRD');
insert into Books values(007,'2020 Revolution','Fiction',30,'A','chetan','BRD');
insert into Books values(009,'Us','Fiction',80,'A','David','BRD');
insert into Books values(010,'Tin Tin','Fiction',30,'A','Max','BRD')
insert into Branch values(001,10,'Paris',123456);
insert into Branch values(002,11,'Berlin',122456);
insert into Branch values(003,12,'Mumbai',122756);
insert into Branch values(004,11,'Delhi',122487);
insert into Branch values(005,15,'bangalore',123487);
insert into Employee values(004,'Harry','Manager',200000,001);
insert into Employee values(008,'ryan','Manager',240000,002);
insert into Employee values(009,'Jim','Assistant Manager',100000,003);
insert into Employee values(010,'Jack','Assistant Manager',120000,004);
insert into customer values(001,'Kevin','bangalore','12th July');
insert into customer values(002,'Paul','Goa','11th Nov');
insert into customer values(003,'Rijo','Pune','12th Jan');
insert into Issuestatus values(001,'002','2 states','11th June','007');
insert into Issuestatus values(002,'003','2020 revolution','11-06-2024','007');
select Book_title,Category,Rental_price from Books;
select COUNT(Category) AS Book_Count from Books;
Select Emp_name,Salary from Employee Order by Salary DESC;

select Emp_name,Position from Employee Where salary > 50000;
Select Branch_no,Count(*) As TotalEmp from Employee Group by Branch_no;


select Emp_name,Branch_Address FROM Employee LEFT JOIN Branch 
On Employee.Branch_no= Branch.Branch_no; 