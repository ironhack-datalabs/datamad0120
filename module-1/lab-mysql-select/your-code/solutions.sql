SELECT
a.au_id as 'AUTHOR ID', 
a.au_lname as 'LAST NAME', 
a.au_fname as 'FIRST NAME', 
ti.title as 'TITLE', 
p.pub_name as 'PUBLISHER'
FROM titleauthor ta
	INNER JOIN titles ti ON ta.title_id = ti.title_id
	INNER JOIN authors  a ON ta.au_id = a.au_id
	INNER JOIN publishers  p ON ti.pub_id = p.pub_id;


SELECT 
a.au_id as 'AUTHOR ID',
a.au_lname as 'LAST NAME',
a.au_fname as 'FIRST NAME', 
p.pub_name as 'PUBLISHER',
count(ti.title) as 'TITLES_COUNT'
FROM titleauthor ta
	INNER JOIN titles ti ON ta.title_id = ti.title_id
	INNER JOIN authors  a ON ta.au_id = a.au_id
	INNER JOIN publishers  p ON ti.pub_id = p.pub_id
GROUP BY a.au_id, a.au_lname, a.au_fname, p.pub_name;


SELECT
a.au_id as 'AUTHOR ID', 
a.au_lname as 'LAST NAME', 
a.au_fname as 'FIRST NAME',
SUM(s.qty) as TOTAL
FROM authors a
	LEFT JOIN titleauthor ta ON ta.au_id = a.au_id
	LEFT JOIN titles ti ON ta.title_id = ti.title_id
	LEFT JOIN publishers  p ON ti.pub_id = p.pub_id
    LEFT JOIN sales s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname,a.au_fname
ORDER BY TOTAL desc LIMIT 3

SELECT
a.au_id as 'AUTHOR ID', 
a.au_lname as 'LAST NAME', 
a.au_fname as 'FIRST NAME',
SUM(s.qty) as TOTAL
FROM authors a
	LEFT JOIN titleauthor ta ON ta.au_id = a.au_id
	LEFT JOIN titles ti ON ta.title_id = ti.title_id
	LEFT JOIN publishers  p ON ti.pub_id = p.pub_id
    LEFT JOIN sales s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname,a.au_fname
ORDER BY TOTAL desc

SELECT
a.au_id as 'AUTHOR ID', 
a.au_lname as 'LAST NAME', 
a.au_fname as 'FIRST NAME',
SUM(IFNULL((s.qty),0)) as TOTAL
FROM authors a
	LEFT JOIN titleauthor ta ON ta.au_id = a.au_id
	LEFT JOIN titles ti ON ta.title_id = ti.title_id
	LEFT JOIN publishers  p ON ti.pub_id = p.pub_id
    	LEFT JOIN sales s ON ta.title_id = s.title_id
GROUP BY a.au_id, a.au_lname,a.au_fname
ORDER BY TOTAL desc











