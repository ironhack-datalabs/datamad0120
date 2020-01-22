/*
CHALLENGE 1:

SELECT authors.au_id AS AUTHOR_ID, 
	au_lname AS LAST_NAME, 
	authors.au_fname AS FIRST_NAME,
    titles.title AS TITLE,
    publishers.pub_name AS PUBLISHER
    
	FROM authors
	
    INNER JOIN publications.titleauthor
    ON authors.au_id = titleauthor.au_id
    
    INNER JOIN publications.titles 
    ON titleauthor.title_id =titles.title_id
    
    INNER JOIN publications.publishers
    ON titles.pub_id = publishers.pub_id

CHALLENGE 2:

SELECT authors.au_id AS AUTHOR_ID, 
	au_lname AS LAST_NAME, 
	authors.au_fname AS FIRST_NAME,
    publishers.pub_name AS PUBLISHER,
    COUNT(titles.title) AS TITLE_COUNT    
    
	FROM authors
	
    INNER JOIN publications.titleauthor
    ON authors.au_id = titleauthor.au_id
    
    INNER JOIN publications.titles 
    ON titleauthor.title_id =titles.title_id
    
    INNER JOIN publications.publishers
    ON titles.pub_id = publishers.pub_id
    
    GROUP BY AUTHOR_ID,PUBLISHER

CHALLENGE 3:

SELECT authors.au_id AS AUTHOR_ID, 
	au_lname AS LAST_NAME, 
	authors.au_fname AS FIRST_NAME,
    SUM(sales.qty) AS TOTAL

	FROM authors
    
    INNER JOIN publications.titleauthor
    ON authors.au_id = titleauthor.au_id
    
    INNER JOIN publications.sales
    ON titleauthor.title_id = sales.title_id
    
    GROUP BY AUTHOR_ID
    ORDER BY TOTAL DESC
	LIMIT 3
*/


    
    
    