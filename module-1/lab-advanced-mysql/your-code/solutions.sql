select 
    a.au_lname LAST_NAME, 
    a.au_fname FIRST_NAME,
    sum(distinct(t.price * t.royalty/100 * ta.royaltyper/100) + t.advance * ta.royaltyper/100) as TOTAL
    from authors as a 
        inner join titleauthor as ta on ta.au_id = a.au_id 
        inner join titles as t on t.title_id = ta.title_id 
        inner join sales as s on s.title_id = t.title_id
group by au_lname, au_fname
order by TOTAL desc
limit 3;

