--Challenge 1 - Who Have Published What At Where?

SELECT a.au_id AS AUTHOR_ID, a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", t.title AS TITLE, p.pub_name AS PUBLISHER
FROM authors AS a 
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
LEFT JOIN titles AS t ON ta.title_id = t.title_id
LEFT JOIN publishers AS p ON p.pub_id = t.pub_id
ORDER BY AUTHOR_ID;



--Challenge 2 - Who Have Published How Many At Where?

SELECT a.au_id AS AUTHOR_ID, a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", p.pub_name AS PUBLISHER, COUNT(pub_name) as "TITLE COUNT"
FROM authors AS a 
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
LEFT JOIN titles AS t ON ta.title_id = t.title_id
LEFT JOIN publishers AS p ON p.pub_id = t.pub_id
GROUP BY AUTHOR_ID, PUBLISHER
ORDER BY AUTHOR_ID DESC;

--Challenge 3 - Best Selling Authors

SELECT a.au_id AS AUTHOR_ID, a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", SUM(s.qty) AS TOTAL
FROM authors AS a 
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
LEFT JOIN titles AS t ON ta.title_id = t.title_id
LEFT JOIN sales AS s ON s.title_id = t.title_id
GROUP BY AUTHOR_ID
ORDER BY TOTAL DESC
LIMIT 3;


-- Challenge 4 - Best Selling Authors Ranking

SELECT a.au_id AS AUTHOR_ID, a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", IFNULL(SUM(s.qty), 0) AS TOTAL
FROM authors AS a 
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
LEFT JOIN titles AS t ON ta.title_id = t.title_id
LEFT JOIN sales AS s ON s.title_id = t.title_id
GROUP BY AUTHOR_ID
ORDER BY TOTAL DESC;




