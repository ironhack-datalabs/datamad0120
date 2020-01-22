/*
select authors.au_id as "AuthorID", au_lname as "LastName", au_fname as "FirstName", titles.title as "Title", publishers.pub_name as "Publishers"
from authors
right join titleauthor on authors.au_id=titleauthor.au_id
right join titles on titleauthor.title_id=titles.title_id
right join publishers on titles.pub_id=publishers.pub_id;
*/

/*
select authors.au_id as AuthorID, au_lname as LastName, au_fname as FirstName, publishers.pub_name as Publishers, count(*) as "Title_Count"
from authors
right join titleauthor on authors.au_id=titleauthor.au_id
right join titles on titleauthor.title_id=titles.title_id
right join publishers on titles.pub_id=publishers.pub_id
GROUP BY Publishers,AuthorID;
*/

/*
select authors.au_id as AuthorID, au_lname as LastName, au_fname as FirstName, sum(sales.qty) as Total
from authors
right join titleauthor on authors.au_id=titleauthor.au_id
right join sales on titleauthor.title_id=sales.title_id

GROUP BY AuthorID
ORDER BY LastName ASC
LIMIT 3;
*/

/*
select authors.au_id as AuthorID, au_lname as LastName, au_fname as FirstName, IFNULL(sum(sales.qty),0)as Total
from authors
left join titleauthor on authors.au_id=titleauthor.au_id
left join sales on sales.title_id=titleauthor.title_id


GROUP BY AuthorID
ORDER BY LastName DESC;
*/
