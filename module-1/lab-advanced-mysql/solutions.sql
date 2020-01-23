SELECT
titles.title_id as "Title ID",
authors.au_id as "Author ID",
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as "Royalty"
FROM authors
INNER JOIN titleauthor on authors.au_id = titleauthor.au_id
INNER JOIN titles on titleauthor.title_id = titles.title_id
INNER JOIN sales on titles.title_id = sales.title_id;

SELECT
a.title_id as "Title ID",
a.au_id as "Author ID",
sums(a.royalty)
FROM (SELECT
titles.title_id,
authors.au_id,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as "royalty"
FROM authors
INNER JOIN titleauthor on authors.au_id = titleauthor.au_id
INNER JOIN titles on titleauthor.title_id = titles.title_id
INNER JOIN sales on titles.title_id = sales.title_id) as a
GROUP BY a.title_id, a.au_id

# No entiendo por que este SELECT se me pone en rojo si cuando hice las pruebas me salía bien.
SELECT
a.au_id as "Author ID",
sum(a.royalty) + (titles.advance)
FROM 
(SELECT
titles.title_id,
authors.au_id,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as "royalty"
FROM authors
INNER JOIN titleauthor on authors.au_id = titleauthor.au_id
INNER JOIN titles on titleauthor.title_id = titles.title_id
INNER JOIN sales on titles.title_id = sales.title_id) as a
INNER JOIN titles on a.title_id = titles.title_id
GROUP BY a.au_id, titles.advance
ORDER BY sum(a.royalty) + (titles.advance) desc limit 3

CREATE TEMPORARY TABLE a SELECT
titles.title_id,
authors.au_id,
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as "royalty"
FROM authors
INNER JOIN titleauthor on authors.au_id = titleauthor.au_id
INNER JOIN titles on titleauthor.title_id = titles.title_id
INNER JOIN sales on titles.title_id = sales.title_id;
SELECT
a.au_id as "Author ID",
sum(a.royalty) + (titles.advance)
FROM 
a
INNER JOIN titles on a.title_id = titles.title_id
GROUP BY a.au_id, titles.advance
ORDER BY sum(a.royalty) + (titles.advance) desc limit 3


	
