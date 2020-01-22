/*
SELECT 
	a.au_id AS AUTHOR_ID, 
	a.au_lname AS LAST_NAME,
	a.au_fname AS FIRST_NAME,
	ti.title AS TITLE,
	pub.pub_name AS PUBLISHER
FROM authors as a
	INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN publishers AS pub ON pub.pub_id = ti.pub_id
	*/
    /*
    SELECT 
	a.au_id AS AUTHOR_ID, 
	a.au_lname AS LAST_NAME,
	a.au_fname AS FIRST_NAME,
	COUNT(ti.title) AS TITLE_COUNT,
	pub.pub_name AS PUBLISHER
FROM authors as a
	INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN publishers AS pub ON pub.pub_id = ti.pub_id
    GROUP BY a.au_id, a.au_lname, a.au_fname, pub.pub_name
    */
    /*
SELECT 
	a.au_id AS AUTHOR_ID, 
	a.au_lname AS LAST_NAME,
	a.au_fname AS FIRST_NAME,
	SUM(IFNULL(sa.qty, 0)) AS PROFIT
FROM authors as a
	LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
    LEFT JOIN titles AS ti ON ti.title_id = ta.title_id
    LEFT JOIN publishers AS pub ON pub.pub_id = ti.pub_id
    LEFT JOIN sales AS sa ON sa.title_id = ta.title_id
    GROUP BY a.au_id, a.au_lname, a.au_fname
    ORDER BY PROFIT DESC LIMIT 3
    */
    
    
    
    
