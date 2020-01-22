#Challenge-1
/*
SELECT 
	au.au_id AS AUTOR_ID, 
	au.au_lname AS LASTNAME, 
	au.au_fname AS FIRST_NAME, 
	ti.title AS TITLE,
    pu.pub_name AS PUBLISHERS
FROM authors AS au  
	INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN publishers AS pu ON pu.pub_id = ti.pub_id
 */  
#Challenge-2
 /*
    SELECT 
	au.au_id AS AUTOR_ID, 
	au.au_lname AS LASTNAME, 
	au.au_fname AS FIRST_NAME, 
	COUNT(ti.title) AS TITLE_COUNT,
    pu.pub_name AS PUBLISHERS
FROM authors AS au  
	INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN publishers AS pu ON pu.pub_id = ti.pub_id
GROUP BY au.au_id, au.au_lname, au.au_fname, pu.pub_name
*/
#Challenge-3
/*
SELECT
	au.au_id AS AUTOR_ID, 
	au.au_lname AS LASTNAME, 
	au.au_fname AS FIRST_NAME, 
    SUM(IFNULL(sa.qty, 0)) AS TOTAL
FROM authors AS au  
	LEFT JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    LEFT JOIN titles AS ti ON ti.title_id = ta.title_id
    LEFT JOIN publishers AS pu ON pu.pub_id = ti.pub_id
    LEFT JOIN sales AS sa ON sa.title_id = ta.title_id
GROUP BY au.au_id, au.au_lname, au.au_fname
ORDER BY TOTAL DESC LIMIT 0,3
*/
#Challenge-4
SELECT
	au.au_id AS AUTOR_ID, 
	au.au_lname AS LASTNAME, 
	au.au_fname AS FIRST_NAME, 
    SUM(IFNULL(sa.qty, 0)) AS TOTAL
FROM authors AS au  
	LEFT JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    LEFT JOIN titles AS ti ON ti.title_id = ta.title_id
    LEFT JOIN publishers AS pu ON pu.pub_id = ti.pub_id
    LEFT JOIN sales AS sa ON sa.title_id = ta.title_id
GROUP BY au.au_id, au.au_lname, au.au_fname
ORDER BY TOTAL DESC