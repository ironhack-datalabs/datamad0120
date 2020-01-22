
/*
CREATE TEMPORARY TABLE Step_1
SELECT ta.title_id, ta.au_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
FROM titleauthor as ta, titles as t, sales as s;

CREATE TEMPORARY TABLE Step_2
SELECT s1.title_id, s1.au_id, SUM(s1.sales_royalty) as sum_sales_royalty
FROM Step_1 as s1
GROUP BY s1.title_id, s1.au_id;

SELECT s2.title_id, s2.au_id, s2.sum_sales_royalty + t.advance AS total
FROM Step_2 as s2
LEFT JOIN titles as t
ON s2.title_id = t.title_id
ORDER BY total DESC
LIMIT 3


DE LA OTRA FORMA: 


SELECT s2.title_id, s2.au_id, s2.sum_sales_royalty + t.advance AS total
FROM
(SELECT s1.title_id, s1.au_id, SUM(s1.sales_royalty) as sum_sales_royalty
FROM 
(SELECT ta.title_id, ta.au_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
FROM titleauthor as ta, titles as t, sales as s) as s1
GROUP BY s1.title_id, s1.au_id) as s2
LEFT JOIN titles as t
ON s2.title_id = t.title_id
ORDER BY total DESC
LIMIT 3

CREATE TABLE `most_profiting_authors` AS
SELECT s2.au_id, s2.sum_sales_royalty + t.advance AS profit
FROM
(SELECT s1.title_id, s1.au_id, SUM(s1.sales_royalty) as sum_sales_royalty
FROM 
(SELECT ta.title_id, ta.au_id, t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
FROM titleauthor as ta, titles as t, sales as s) as s1
GROUP BY s1.title_id, s1.au_id) as s2
LEFT JOIN titles as t
ON s2.title_id = t.title_id
ORDER BY profit DESC
LIMIT 3
*/
