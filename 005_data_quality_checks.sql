-- Null checks
select count(*) filter (where isbn is null) as null_isbn,
       count(*) filter (where book_title is null) as null_title,
       count(*) filter (where rental_price is null) as null_price
from book;

-- Duplicate check
select isbn, count(*)
from book
group by isbn
having count(*) > 1;

-- Check missing foreign key references
select issued_id
from issued_status
where issued_book_isbn not in (select isbn from book);
