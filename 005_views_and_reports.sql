--5] List Members Who Have Issued More Than One Book
-- Objective: Use GROUP BY to find members who have issued more than one book.

select  issued_emp_id, count(*) 
from issued_status 
group by 1  having count(issued_id) >1

--6] cretae summary tables :used CTAS to generate new tables based on query results-each book & total book_issued_cnt


create table book_count	 as 
	
select  bo.isbn,
		bo.book_title,
		count(isst.issued_id)
from book as bo
join  issued_status  as isst
on  isst.issued_book_isbn=bo.isbn
group by 1,2;


-- select * from 
-- 	book 
-- 	join 
-- 	issued_status 
-- 	on issued_book_isbn=isbn


select * from 
	employees
	join
	issued_status
	on  issued_emp_id	= emp_id


select * from book_count

--8] find total rental income by category in book dataset


select  bo.category,
		sum(bo.rental_price) as Total_product_sells_amount,
		count(*)  as Total_count
	
from book as bo
join issued_status  as isst
on  isst.issued_book_isbn=bo.isbn
group by 1;

--10] List employees with their branch manager's name and their branch details

select * from employees
select * from branch


select 	em.*,
		b.manager_id,
		em2.emp_name  as manager

from employees as em

join branch as b
on b.branch_id=em.branch_id

join employees as em2
on b.manager_id= em2.emp_id


--11] Create a Table of Books with Rental Price Above a 7.


create table expensive_books as 
select * from book    where rental_price > 7

select * from expensive_books


--12] Retrieve the list of book not yet returned

select *from issued_status
select * from return_status

select distinct issued_book_name from  
	
	issued_status as iss
	left join 
	return_status as ret
	on  iss.issued_id= ret.issued_id
	where  ret.return_id is null

	
