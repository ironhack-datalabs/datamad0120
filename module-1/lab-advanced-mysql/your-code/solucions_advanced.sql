/*
------> PASO 1 
CREATE TEMPORARY TABLE publications.step1

SELECT titleauthor.au_id, titleauthor.title_id, titleauthor.royaltyper, 
titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty
	FROM titleauthor
    
    INNER JOIN publications.titles
    ON titleauthor.title_id = titles.title_id
    INNER JOIN publications.sales
    ON sales.title_id = titleauthor.title_id


-----> PASO 2

CREATE TEMPORARY TABLE publications.step2
SELECT au_id, title_id, sum(sales_royalty) as sum_royalty
FROM step1
GROUP BY au_id, title_id;


-----> PASO 3
	SELECT au_id, sum(titles.advance + sum_royalty) as profit
		FROM step2
			INNER JOIN publications.titles 
            ON step2.title_id = titles.title_id
			GROUP BY au_id;
            
            
            
----CHALLENGE 2-----

SELECT au_id, sum(titles.advance + sum_royalty) as profit
		FROM (
			SELECT au_id, title_id, sum(sales_royalty) as sum_royalty
			FROM (
					SELECT titleauthor.au_id, titleauthor.title_id, titleauthor.royaltyper, 
					titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty
					FROM titleauthor
					INNER JOIN publications.titles
					ON titleauthor.title_id = titles.title_id
					INNER JOIN publications.sales
					ON sales.title_id = titleauthor.title_id
					) as paso1
			GROUP BY au_id, title_id) as paso2
	INNER JOIN publications.titles 
	ON paso2.title_id = titles.title_id
	GROUP BY au_id;


*/