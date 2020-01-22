SELECT a.au_id as AUTHOR_ID, 
a.au_lname as LAST_NAME, 
a.au_fname as FIRST_NAME, 
t.title as TITLE, 
p.pub_name as PUBLISHER
FROM authors as a
INNER JOIN titleauthor as ta
ON a.au_id = ta.au_id
INNER JOIN titles as t
ON ta.title_id = t.title_id
INNER JOIN publishers as p
ON t.pub_id = p.pub_id;


SELECT a.au_id as AUTHOR_ID, 
a.au_lname as LAST_NAME, 
a.au_fname as FIRST_NAME, 
p.pub_name as PUBLISHER, 
count(t.title) as COUNT_TITLE
	FROM authors as a
	INNER JOIN titleauthor as ta
	ON a.au_id = ta.au_id
	INNER JOIN titles as t
	ON ta.title_id = t.title_id
	INNER JOIN publishers as p
	ON t.pub_id = p.pub_id
    GROUP BY  p.pub_name, a.au_id,a.au_fname, a.au_lname;

SELECT a.au_id as AUTHOR_ID, 
a.au_lname as LAST_NAME, 
a.au_fname as FIRST_NAME,
SUM(s.qty) as TOTAL 
FROM authors as a
INNER JOIN titleauthor as ta
	ON a.au_id = ta.au_id
    INNER JOIN titles as t
	ON ta.title_id = t.title_id
	INNER JOIN sales as s
	ON t.title_id = s.title_id
GROUP BY  a.au_id,a.au_fname, a.au_lname
ORDER BY SUM(s.qty) DESC
LIMIT 3;

SELECT a.au_id as AUTHOR_ID, 
a.au_lname as LAST_NAME, 
a.au_fname as FIRST_NAME,
IFNULL(SUM(s.qty),0) as TOTAL 
FROM authors as a
LEFT JOIN titleauthor as ta
	ON a.au_id = ta.au_id
    LEFT JOIN titles as t
	ON ta.title_id = t.title_id
	LEFT JOIN sales as s
	ON t.title_id = s.title_id
GROUP BY  a.au_id,a.au_fname, a.au_lname
ORDER BY SUM(s.qty) DESC;