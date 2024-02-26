-- GRPA 4
select
  members.roll_no,
  members.member_no
from
  members
  join book_issue on members.member_no = book_issue.member_no
where
  book_issue.doi >= '2021-08-02'
  and book_issue.doi <= '2021-08-07';

-- GRPA 5
select
  book_catalogue.title,
  count(*) as num_copies
from
  book_catalogue
  join book_copies on book_catalogue.ISBN_no = book_copies.ISBN_no
where
  book_catalogue.title like '%Programming%'
group by
  book_catalogue.title;