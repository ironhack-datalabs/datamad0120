
/*------ RETO  -----*/

/*

SELECT authors.au_id, CONCAT(au_lname, " ", au_fname) AS Fullname, 
titles.title as Title, publishers.pub_name as Publisher
FROM publications.authors
INNER JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN publications.titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publications.publishers
ON titles.pub_id = publishers.pub_id;

*/

/*------ RETO 2 -----*/

/*   

SELECT authors.au_id, CONCAT(au_lname, " ", au_fname) AS Fullname,
COUNT(titles.title) as Titles, publishers.pub_name as Publisher
FROM publications.authors
INNER JOIN publications.titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN publications.titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publications.publishers
ON titles.pub_id = publishers.pub_id
GROUP BY au_id, publisher;

/*

/*------ RETO 3 -----*/

/*
SELECT  authors.au_id, CONCAT(au_lname, " ", au_fname) AS Full_name,sum(sales.qty) as TOTAL
FROM publications.authors
	INNER JOIN publications.titleauthor
	ON authors.au_id = titleauthor.au_id
	INNER JOIN publications.sales
	ON titleauthor.title_id = sales.title_id
    
    GROUP BY au_id
    ORDER BY TOTAL DESC LIMIT 3;
*/

/*------ RETO 4 -----*/

/*

SELECT  authors.au_id, CONCAT(au_lname, " ", au_fname) AS Full_name, IFNULL(sum(sales.qty),0) as TOTAL
FROM publications.authors
	LEFT JOIN publications.titleauthor
	ON authors.au_id = titleauthor.au_id
	LEFT JOIN publications.sales
	ON titleauthor.title_id = sales.title_id
    
    GROUP BY au_id
    ORDER BY TOTAL DESC;

*/