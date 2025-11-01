alter table issued_status
add constraint fk_members
foreign key (issued_member_id)
references members(member_id);

alter table issued_status
add constraint fk_book
foreign key  (issued_book_isbn)
references book(isbn);

alter table issued_status
add constraint fk_employees
foreign key (issued_emp_id)
references  employees(emp_id)
 
alter table  return_status
add constraint fk_issued_status
foreign key (issued_id)
references  issued_status(issued_id)

alter table  employees
add constraint fk_branch
foreign key (branch_id)
references  branch(branch_id)

alter table branch 
alter column contact_no type varchar(15)