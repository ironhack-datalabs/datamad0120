-- 1
select 
    a.au_id AUTHOR_ID,
    a.au_lname LAST_NAME, 
    a.au_fname FIRST_NAME, 
    t.title TITLE, 
    p.pub_name PUBLISHER 
    from authors as a 
        inner join titleauthor as ta on a.au_id = ta.au_id 
        inner join titles as t on ta.title_id = t.title_id 
        inner join publishers as p on p.pub_id = t.pub_id;

-- 2
select 
    a.au_id AUTHOR_ID, 
    a.au_lname LAST_NAME, 
    a.au_fname FIRST_NAME, 
    p.pub_name PUBLISHER, 
    count(*) as TITLE_COUNT 
    from authors as a 
        inner join titleauthor as ta on a.au_id = ta.au_id 
        inner join titles as t on ta.title_id = t.title_id 
        inner join publishers as p on p.pub_id = t.pub_id 
group by AUTHOR_ID, PUBLISHER 
order by FIRST_NAME;

-- 3
select 
    a.au_lname LAST_NAME, 
    a.au_fname FIRST_NAME, 
    sum(s.qty) as SALES_BOOKS
    from authors as a 
        inner join titleauthor as ta on a.au_id = ta.au_id 
        inner join titles as t on ta.title_id = t.title_id 
        inner join sales as s on t.title_id = s.title_id
group by LAST_NAME, FIRST_NAME
order by SALES_BOOKS desc
limit 3;

--4
select 
    a.au_lname LAST_NAME, 
    a.au_fname FIRST_NAME, 
    ifnull(sum(s.qty), 0) as SALES_BOOKS
    from authors as a 
        left join titleauthor as ta on a.au_id = ta.au_id 
        left join titles as t on ta.title_id = t.title_id 
        left join sales as s on t.title_id = s.title_id
group by LAST_NAME, FIRST_NAME
order by SALES_BOOKS desc;
