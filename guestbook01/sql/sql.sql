desc guestbook;

-- insert
insert
	into guestbook
values(null, '백정엽',  '1234', '안녕하세요~', now());


-- select
select no, name, date_format(reg_date, '%Y/%m/%d %H:%i:%s')as reg_date, message
	from guestbook
order by reg_date desc;

-- delete
delete 
	from guestbook
where no = 4
	and password ='1234';