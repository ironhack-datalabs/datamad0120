--Challenge 1 - Most Profiting Authors
--Step 1: Calculate the royalties of each sales for each author

SELECT a.au_id AS AUTHOR_ID, t.title_id AS TITLE_ID, ifnull((t.price * s.qty * (t.royalty / 100) * (ta.royaltyper / 100)), 0) AS ROYALTY
FROM authors AS a 
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
LEFT JOIN titles AS t ON ta.title_id = t.title_id
LEFT JOIN sales AS s ON s.title_id = t.title_id
ORDER BY AUTHOR_ID;

--Step 2: Aggregate the total royalties for each title for each author

SELECT a.au_id AS AUTHOR_ID, t.title_id AS TITLE_ID, ifnull(SUM((t.price * s.qty * (t.royalty / 100) * (ta.royaltyper / 100))), 0) AS AGGREGATED_ROYALTIES
FROM authors AS a 
LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
LEFT JOIN titles AS t ON ta.title_id = t.title_id
LEFT JOIN sales AS s ON s.title_id = t.title_id
GROUP BY AUTHOR_ID, TITLE_ID
ORDER BY AUTHOR_ID;

--Step 3: Calculate the total profits of each author

SELECT atp.AUTHOR_ID, sum(atp.PROFIT) AS TOTAL_PROFIT
FROM (SELECT a.au_id AS AUTHOR_ID, t.title_id AS TITLE_ID, sum(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) + t.advance * ta.royaltyper/100 AS PROFIT
  FROM authors AS a 
  LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
  LEFT JOIN titles AS t ON ta.title_id = t.title_id
  LEFT JOIN sales AS s ON s.title_id = t.title_id
  GROUP BY AUTHOR_ID, t.title_id, t.advance, ta.royaltyper
  ORDER BY AUTHOR_ID) AS atp
GROUP BY AUTHOR_ID
ORDER BY TOTAL_PROFIT DESC
LIMIT 3;

-- Challenge 2 - Alternative Solution


-- 1.- Derived tables: Mi solución es con Derived tables no he conseguido sacarlo de otra manera.


-- 2.- Creating MySQL temporary tables 


CREATE TEMPORARY TABLE new_table(
SELECT a.au_id AS AUTHOR_ID, t.title_id AS TITLE_ID, sum(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) + t.advance * ta.royaltyper/100 AS PROFIT
  FROM authors AS a 
  LEFT JOIN titleauthor AS ta ON a.au_id = ta.au_id
  LEFT JOIN titles AS t ON ta.title_id = t.title_id
  LEFT JOIN sales AS s ON s.title_id = t.title_id
  GROUP BY AUTHOR_ID, t.title_id, t.advance, ta.royaltyper)



SELECT n.AUTHOR_ID, sum(n.PROFIT) AS TOTAL_PROFIT
FROM new_table as n
GROUP BY AUTHOR_ID
ORDER BY TOTAL_PROFIT DESC
LIMIT 3


-- Challenge 3

CREATE TABLE most_profiting_authors AS
  SELECT n.AUTHOR_ID, IFNULL(SUM(n.PROFIT), 0) AS TOTAL_PROFIT
  FROM new_table as n
  GROUP BY AUTHOR_ID
  ORDER BY TOTAL_PROFIT DESC

