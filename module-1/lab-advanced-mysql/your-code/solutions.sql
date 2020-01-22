#Step1
/*
CREATE TEMPORARY TABLE Step1
SELECT 
	ti.title_id AS Title_ID,
    a.au_id AS Author_ID,
    ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    
FROM authors as a
	INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN sales AS sa ON sa.title_id = ta.title_id
    */
    /*
    #Step2
CREATE TEMPORARY TABLE Step2
SELECT
	title_id,
	author_id,
    sum(sales_royalty) AS sum_sales
FROM Step1
GROUP BY title_id, author_id
	*/
/*    
    #Step3
CREATE TEMPORARY TABLE Step3
SELECT
	author_id,
    sum_sales + ti.advance AS true_sales
FROM Step2
	LEFT JOIN titles AS ti ON Step2.title_id = ti.title_id
    ORDER BY True_sales DESC LIMIT 3
*/
/*
SELECT
	author_id,
    sum_sales + ti.advance AS true_sales
FROM (SELECT
	title_id,
	author_id,
    sum(sales_royalty) AS sum_sales
FROM (SELECT 
	ti.title_id AS Title_ID,
    a.au_id AS Author_ID,
    ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    
FROM authors as a
	INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN sales AS sa ON sa.title_id = ta.title_id) AS Step1
GROUP BY title_id, author_id) AS Step2
	LEFT JOIN titles AS ti ON Step2.title_id = ti.title_id
    ORDER BY True_sales DESC LIMIT 3
*/
/*
CREATE TABLE most_profiting_authors AS 
SELECT
	author_id,
    sum_sales + ti.advance AS true_sales
FROM (SELECT
	title_id,
	author_id,
    sum(sales_royalty) AS sum_sales
FROM (SELECT 
	ti.title_id AS Title_ID,
    a.au_id AS Author_ID,
    ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    
FROM authors as a
	INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN sales AS sa ON sa.title_id = ta.title_id) AS Step1
GROUP BY title_id, author_id) AS Step2
	LEFT JOIN titles AS ti ON Step2.title_id = ti.title_id
    ORDER BY True_sales DESC LIMIT 3
*/