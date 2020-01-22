select 
    a.au_lname LAST_NAME,
    a.au_fname FIRST_NAME,
    (t.price * t.royalty / 100) as EARN_BOOK 
    from authors as a
        inner join titleauthor as ta on a.au_id = ta.au_id 
        inner join titles as t on ta.title_id = t.title_id
group by LAST_NAME, FIRST_NAME;


select
    a.au_id AUTHOR_ID,
	a.au_lname LAST_NAME,
    a.au_fname FIRST_NAME,
    sum(t.price * t.royalty/100 * ta.royaltyper/100 * sa.qty + t.advance * ta.royaltyper/100) as EARN_BOOK
    from titles as t
        left join titleauthor as ta on t.title_id = ta.title_id
        left join sales as sa on ta.title_id = sa.title_id
        left join authors as a on a.au_id = ta.au_id
group by AUTHOR_ID, t.advance, ta.royaltyper
order by EARN_BOOK desc
limit 3;

