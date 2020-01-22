CHALLENGE 1:
/*PRIMERA PRUEBA*/
/*SELECT authors.au_id as "AUTHOR ID", authors.au_lname as  "LAST NAME", authors.au_fname as "FIRST NAME", 
p.title as "TITLE", p.pub_name as "PUBLISHER" 
	FROM (SELECT t.title, t.pub_name, titleauthor.au_id 
		FROM (SELECT title_id, pub_name, title 
			FROM titles
			LEFT JOIN publishers ON publishers.pub_id=titles.pub_id) as t
        RIGHT JOIN titleauthor ON t.title_id=titleauthor.title_id) as p
	LEFT JOIN authors ON p.au_id=authors.au_id;*/

/*SEGUNDA PRUEBA*/

SELECT authors.au_id as "AUTHOR ID", authors.au_lname as  "LAST NAME", authors.au_fname as "FIRST NAME", 
titles.title as "TITLE", publishers.pub_name as "PUBLISHER"
	FROM authors
    INNER JOIN titleauthor ON authors.au_id=titleauthor.au_id
    INNER JOIN titles ON titles.title_id=titleauthor.title_id
    INNER JOIN publishers ON publishers.pub_id=titles.pub_id;

CHALLENGE 2:

SELECT authors.au_id as `AUTHOR ID`, authors.au_lname as  "LAST NAME", authors.au_fname as "FIRST NAME", publishers.pub_name as `PUBLISHER`,
count(titles.title) as "TITLE"
	FROM authors
    INNER JOIN titleauthor ON authors.au_id=titleauthor.au_id
    INNER JOIN titles ON titles.title_id=titleauthor.title_id
    INNER JOIN publishers ON publishers.pub_id=titles.pub_id
    GROUP BY `AUTHOR ID`, `PUBLISHER`;

CHALLENGE 3:

SELECT authors.au_id as `AUTHOR ID`, authors.au_lname as `LAST NAME`, authors.au_id as `FIRST NAME`, sum(sales.qty) as `TOTAL`
FROM authors
INNER JOIN titleauthor ON titleauthor.au_id=authors.au_id
INNER JOIN sales on sales.title_id=titleauthor.title_id

GROUP BY `AUTHOR ID`
ORDER BY `TOTAL` DESC
LIMIT 3;

CHALLENGE 4:
SELECT authors.au_id as `AUTHOR ID`, authors.au_lname as `LAST NAME`, authors.au_id as `FIRST NAME`, IFNULL(sum(sales.qty),0) as `TOTAL`
FROM authors
LEFT JOIN titleauthor ON titleauthor.au_id=authors.au_id
LEFT JOIN sales on sales.title_id=titleauthor.title_id 
GROUP BY `AUTHOR ID`
ORDER BY `TOTAL` DESC;

