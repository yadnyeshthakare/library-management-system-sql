alter table issued_status
drop constraint fk_books;

alter table books
    alter column isbn type varchar(20),
    alter column rental_price type numeric(6,2);

alter table books 
    rename column book_name to book_title;
		
alter table books
    rename column book_author to author; 

alter table members
    alter column member_id type varchar(15);

alter table issued_status
    drop constraint fk_members;

alter table return_status
    alter column return_id type varchar(15);

alter table return_status
    alter column issued_id type varchar (15);

alter table return_status
    drop constraint fk_issued_status;

select * from return_status;

alter table return_status
    drop column return_book_name;

alter table return_status
    drop column return_book_isbn;

alter table issued_status
    alter column issued_id type varchar (15);

alter table issued_status
    alter column issued_member_id type varchar (15);

alter table issued_status
    alter column issued_book_isbn type varchar (25);

alter table issued_status
    alter column issued_emp_id  type varchar (15);

alter table issued_status
    drop constraint fk_employees;

alter table issued_status
    alter column issued_book_name  type varchar (60);

select * from issued_status;

alter table employees 
    alter column emp_id    type varchar (15);

alter table employees
    alter column branch_id type varchar (15);

alter table employees
    drop constraint fk_branch;

alter table branch 
    alter column branch_id type varchar (15);

alter table branch 
    alter column manager_id	type varchar (15);

alter table branch 
    alter column contact_no type varchar (15);



select * from books
select * from issued_status
select * from return_status
select * from employees
select * from members
select * from branch


