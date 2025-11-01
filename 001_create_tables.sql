create table branch (
		branch_id		varchar(20) primary key,
		manager_id		varchar(20) ,
		branch_address	varchar(20) ,
		contact_no int
		);

select * from branch
select count (*) from branch

create table employees
		(emp_id	 varchar(25) primary key,
		emp_name	varchar(25),
		position	varchar(25),
		salary	  int ,
		branch_id   varchar(25)      --- FM
		)

select * from employees
select count(*) from employees



create table book
		(isbn	varchar (20)  primary key,
		book_title	varchar(60),
		category	 varchar(20),
		rental_price	float,
		status	  varchar(15),
		author	  varchar(30),
		publisher   varchar(35) 
		)

select * from book
select count(*) from book

create table members
		(member_id	varchar(10) primary key,
		member_name	  varchar(20),
		member_address	varchar(20),
		reg_date   date
)

select * from members
select count(*) from members



create table issued_status
		(issued_id	 varchar (20)  primary key,
		issued_member_id	varchar (20),   --- FM
		issued_book_name	varchar(60),
		issued_date	      date,
		issued_book_isbn	 varchar(20),      --- FM
		issued_emp_id		varchar(10)       --- FM
)


create table  return_status
		(return_id	  varchar(15)  primary key,
		issued_id		varchar(15),
		return_book_name		varchar(12),
		return_date	   		date,
		return_book_isbn		varchar(12)
)
