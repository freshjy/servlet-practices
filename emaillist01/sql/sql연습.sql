desc emaillist;

-- insert
insert into emaillist values(null, '둘', '리', 'kickscar@gmail.com');

-- select
select no, first_name, last_name, email
 from emaillist
 order by no desc;

delete from emaillist where first_name='백';