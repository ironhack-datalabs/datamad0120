#Step-1
/*
CREATE TEMPORARY TABLE step1
SELECT
ti.title_id AS title_id,
au.au_id AS autor_id,
ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
FROM authors AS au  
	INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN sales AS sa ON sa.title_id = ta.title_id
*/
#Step-2
/*
CREATE TEMPORARY TABLE step2
SELECT
title_id,
autor_id,
sum(sales_royalty) AS sum_sales
FROM step1
GROUP BY title_id, autor_id
*/
/*
#Step-3
SELECT
autor_id,
sum_sales + ti.advance AS true_sales
FROM step2
LEFT JOIN titles AS ti ON step2.title_id = ti.title_id
ORDER BY true_sales DESC LIMIT 3
*/
/*
#Challenge-2
SELECT
autor_id,
sum_sales + ti.advance AS true_sales
FROM (
SELECT
title_id,
autor_id,
sum(sales_royalty) AS sum_sales
FROM (SELECT
ti.title_id AS title_id,
au.au_id AS autor_id,
ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
FROM authors AS au  
	INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN sales AS sa ON sa.title_id = ta.title_id ) AS step1
GROUP BY title_id, autor_id) as step2
LEFT JOIN titles AS ti ON step2.title_id = ti.title_id
ORDER BY true_sales DESC LIMIT 3
*/

#Challenge-3
CREATE TABLE `most_profiting_authors` AS
SELECT
autor_id,
sum_sales + ti.advance AS true_sales
FROM (
SELECT
title_id,
autor_id,
sum(sales_royalty) AS sum_sales
FROM (SELECT
ti.title_id AS title_id,
au.au_id AS autor_id,
ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
FROM authors AS au  
	INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id 
    INNER JOIN titles AS ti ON ti.title_id = ta.title_id
    INNER JOIN sales AS sa ON sa.title_id = ta.title_id ) AS step1
GROUP BY title_id, autor_id) as step2
LEFT JOIN titles AS ti ON step2.title_id = ti.title_id
ORDER BY true_sales DESC LIMIT 3
