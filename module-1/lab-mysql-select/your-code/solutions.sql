/*
SELECT 
	authors.au_id AS "AUTHOR ID",
	authors.au_lname AS "LAST NAME",
    authors.au_fname AS "FIRST NAME",
	titles.title AS "TITLE",
    publishers.pub_name AS "PUBLISHER"
  FROM authors
  RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
  RIGHT JOIN titles ON titleauthor.title_id = titles.title_id
  RIGHT JOIN publishers ON titles.pub_id = publishers.pub_id;

SELECT 
	authors.au_id AS "AUTHOR ID",
	authors.au_lname AS "LAST NAME",
    authors.au_fname AS "FIRST NAME",
	COUNT(titles.title) AS "TITLE COUNT"
  FROM authors
  RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
  RIGHT JOIN titles ON titleauthor.title_id = titles.title_id
  RIGHT JOIN publishers ON titles.pub_id = publishers.pub_id
  GROUP BY authors.au_id;

SELECT 
	authors.au_id AS "AUTHOR ID",
	authors.au_lname AS "LAST NAME",
    authors.au_fname AS "FIRST NAME",
    sum(sales.qty) AS "TOTAL"
  FROM authors
  RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
  RIGHT JOIN sales ON titleauthor.title_id = sales.title_id
  GROUP BY authors.au_id
  ORDER BY "TOTAL" desc limit 3;
*/
SELECT 
	authors.au_id AS "AUTHOR ID",
	authors.au_lname AS "LAST NAME",
    authors.au_fname AS "FIRST NAME",
    IFNULL (SUM(sales.qty),0) AS "TOTAL"
  FROM authors
  RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
  RIGHT JOIN sales ON titleauthor.title_id = sales.title_id
  GROUP BY authors.au_id
  ORDER BY "TOTAL";
  
