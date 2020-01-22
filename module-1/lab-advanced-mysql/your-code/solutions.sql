CHALLENGE 1

STEP 1

SELECT
ta.au_id,
ti.title_id,
ti.price * s.qty * ti.royalty / 100 * ta.royaltyper / 100 as sales_royalty
FROM titleauthor ta
	INNER JOIN titles ti  ON ta.title_id = ti.title_id
	INNER JOIN sales s ON ti.title_id = s.title_id

STEP 2

CREATE TEMPORARY TABLE step_2
SELECT 
author_id,
title_id,
SUM(sales_royalty) as agg_royalty
FROM() as step_1
GROUP BY author_id, title_id

STEP 3

CREATE TEMPORARY TABLE step_3
SELECT 
author_id,
agg_royalty + titles.advance as total
FROM() as step_2
LEFT JOIN titles ON step_2.title_id = titles.title_id
ORDER BY total desc LIMIT 3

CHALLENGE 2

STEP 1

SELECT
ta.au_id,
ti.title_id,
ti.price * s.qty * ti.royalty / 100 * ta.royaltyper / 100 as sales_royalty
FROM titleauthor ta
	INNER JOIN titles ti  ON ta.title_id = ti.title_id
	INNER JOIN sales s ON ti.title_id = s.title_id

STEP 2


SELECT 
author_id,
title_id,
SUM(sales_royalty) as agg_royalty
FROM(
SELECT
ta.au_id,
ti.title_id,
ti.price * s.qty * ti.royalty / 100 * ta.royaltyper / 100 as sales_royalty
FROM titleauthor ta
	INNER JOIN titles ti  ON ta.title_id = ti.title_id
	INNER JOIN sales s ON ti.title_id = s.title_id) 
as step_1
GROUP BY author_id, title_id

STEP 3
SELECT 
author_id,
agg_royalty + titles.advance as total
FROM(SELECT 
author_id,
title_id,
SUM(sales_royalty) as agg_royalty
FROM(SELECT
ta.au_id,
ti.title_id,
ti.price * s.qty * ti.royalty / 100 * ta.royaltyper / 100 as sales_royalty
FROM titleauthor ta
	INNER JOIN titles ti  ON ta.title_id = ti.title_id
	INNER JOIN sales s ON ti.title_id = s.title_id) 
as step_1
GROUP BY author_id, title_id)
as step_2
LEFT JOIN titles ON step_2.title_id = titles.title_id
ORDER BY total desc LIMIT 3




Challenge 3 

CREATE TABLE most_profiting_authors as
SELECT 
author_id,
agg_royalty + titles.advance as total
FROM step_2
LEFT JOIN titles ON step_2.title_id = titles.title_id
ORDER BY total

