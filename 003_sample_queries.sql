--1] cretae a new book record : '978-1-60129-456-2','To Kill a Mockingbird','Classic',6.00,'yes','Harper Lee','J.B Lippincott & Co'

insert into book (isbn,book_title,category,rental_price,status,author,publisher)
values ('978-1-60129-456-2','To Kill a Mockingbird','Classic',6.00,'yes','Harper Lee','J.B Lippincott & Co')

--2] Update an existing member's address

update members
set  member_address ='169 Oak St'
where  member_id='C101'

--3] Delete a record from the issued status table 
-- Objective: Delete the record with issued_id = 'IS121' from the issued_status table
select count(*) from issued_status  --total 35 records

delete from issued_status 
where issued_id = 'IS121'

-- 4] Retrive all books issued by specific employee
-- Objective : select all books issued by the employee with emp_id='E101'

select * from issued_status  where  issued_emp_id = 'E101'

--7] Retive all books from classic category

select * from book
		where category='Classic'

--9] List members who registred in the last 180 days

	-- insert into members(member_id,member_name,member_address,reg_date)
	-- values
	-- ('S101','walter white','69 main st','2025-06-12'),
	-- ('S103','Jr white','34 center st','2025-07-31')


	select * from members
	where reg_date >= current_date-interval '180 days'