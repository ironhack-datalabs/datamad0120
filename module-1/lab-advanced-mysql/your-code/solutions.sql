select 
    a.au_lname LAST_NAME,
    a.au_fname FIRST_NAME,
    sum(t.price * t.royalty/100 * ta.royaltyper/100 + t.advance * ta.royaltyper/100) as TOTAL
    from authors as a 
        inner join titleauthor as ta on ta.au_id = a.au_id 
        inner join titles as t on t.title_id = ta.title_id 
group by au_lname, au_fname
order by TOTAL desc
limit 3;

-------

CREATE TEMPORARY TABLE publications.each_book
select 
    a.au_lname LAST_NAME, 
    a.au_fname FIRST_NAME,
    t.title_id,
    ta.royaltyper,
    t.price * t.royalty/100 * ta.royaltyper/100 as 'EACHBOOK'
    from authors as a 
        inner join titleauthor as ta on ta.au_id = a.au_id 
        inner join titles as t on t.title_id = ta.title_id;

select 
    LAST_NAME, 
    FIRST_NAME, 
    sum(t.advance * e.royaltyper/100 + EACHBOOK) as 'TOTAL'
    from each_book as e 
        inner join titles as t on t.title_id = e.title_id
group by LAST_NAME, FIRST_NAME
order by TOTAL desc 
limit 3;

-------

create table most_profiting_authors as
(
select
    a.au_id author_id,
    sum(t.price * t.royalty/100 * ta.royaltyper/100 + t.advance * ta.royaltyper/100) as profits
    from authors as a 
        inner join titleauthor as ta on ta.au_id = a.au_id 
        inner join titles as t on t.title_id = ta.title_id 
group by author_id
order by profits desc 
);

