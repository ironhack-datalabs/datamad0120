/*
----------------------------------------------CHALLENGE 1------------------------------------------------

STEP 1:

CREATE TEMPORARY TABLE publications.STEP1
	SELECT titleauthor.au_id AS AUTHOR_ID, 
		titleauthor.title_id AS TITLE_ID, 
		titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS SALES_ROYALTY
		
		FROM titleauthor
		
		INNER JOIN publications.titles
		ON titleauthor.title_id = titles.title_id
			 
		INNER JOIN publications.sales
		ON titleauthor.title_id = sales.title_id   

STEP 2:

CREATE TEMPORARY TABLE publications.STEP2	
    SELECT AUTHOR_ID,
		TITLE_ID,
        SUM(SALES_ROYALTY) AS TOTAL_ROYALTIES
        
		FROM STEP1
        
        GROUP BY AUTHOR_ID, TITLE_ID;

STEP 3:

CREATE TEMPORARY TABLE publications.STEP3  
    SELECT AUTHOR_ID,
        SUM(titles.advance + TOTAL_ROYALTIES) AS TOTAL_PROFIT
        
		FROM STEP2
        
        INNER JOIN publications.titles
        ON STEP2.TITLE_ID = titles.title_id
        
        GROUP BY AUTHOR_ID

----------------------------------------------CHALLENGE 2------------------------------------------------

SELECT AUTHOR_ID,
	IFNULL(SUM(titles.advance + TOTAL_ROYALTIES),0) AS TOTAL_PROFIT
        
	FROM (
        SELECT AUTHOR_ID,
		TITLE_ID,
        SUM(SALES_ROYALTY) AS TOTAL_ROYALTIES
        
		FROM (	
			SELECT titleauthor.au_id AS AUTHOR_ID, 
			titleauthor.title_id AS TITLE_ID, 
			titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS SALES_ROYALTY
			
			FROM titleauthor
			
			INNER JOIN publications.titles
			ON titleauthor.title_id = titles.title_id
				 
			INNER JOIN publications.sales
			ON titleauthor.title_id = sales.title_id 
			) AS f
        
        GROUP BY AUTHOR_ID, TITLE_ID
        ) AS s
        
	INNER JOIN publications.titles
	ON s.TITLE_ID = titles.title_id
        
	GROUP BY AUTHOR_ID
    
    ORDER BY TOTAL_PROFIT DESC 

----------------------------------------------CHALLENGE 3------------------------------------------------

CREATE TABLE most_profiting_authors AS

	SELECT AUTHOR_ID,
		IFNULL(SUM(titles.advance + TOTAL_ROYALTIES),0) AS TOTAL_PROFIT
			
		FROM (
			SELECT AUTHOR_ID,
			TITLE_ID,
			SUM(SALES_ROYALTY) AS TOTAL_ROYALTIES
			
			FROM (	
				SELECT titleauthor.au_id AS AUTHOR_ID, 
				titleauthor.title_id AS TITLE_ID, 
				titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS SALES_ROYALTY
				
				FROM titleauthor
				
				INNER JOIN publications.titles
				ON titleauthor.title_id = titles.title_id
					 
				INNER JOIN publications.sales
				ON titleauthor.title_id = sales.title_id 
				) AS f
			
			GROUP BY AUTHOR_ID, TITLE_ID
			) AS s
			
		INNER JOIN publications.titles
		ON s.TITLE_ID = titles.title_id
			
		GROUP BY AUTHOR_ID
		
		ORDER BY TOTAL_PROFIT DESC;


*/