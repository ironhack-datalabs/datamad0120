
SELECT a.au_id AS `ID`, a.au_lname AS `LAST NAME`, a.au_fname AS `FIRST NAME`, t.title AS `TITLE`, p.pub_name AS `PUBLISHER`
	FROM authors as a, titleauthor as taut, titles as t, publishers as p 
	WHERE a.au_id = taut.au_id AND t.title_id = taut.title_id AND t.pub_id = p.pub_id;



SELECT a.au_id AS `ID`, a.au_lname AS `LAST NAME`, a.au_fname AS `FIRST NAME`,  p.pub_name AS `PUBLISHER`, COUNT(t.title) AS `Count`
	FROM authors as a, titleauthor as taut, titles as t, publishers as p 
	WHERE a.au_id = taut.au_id AND t.title_id = taut.title_id AND t.pub_id = p.pub_id 
    GROUP BY t.title;
    



SELECT authors.au_id AS `ID`, authors.au_lname AS `LAST NAME`, authors.au_fname AS `FIRST NAME`,  SUM(sales.qty) AS `Quantity`
	FROM authors
    LEFT JOIN titleauthor
        ON authors.au_id = titleauthor.au_id
	LEFT JOIN titles
		ON titleauthor.title_id = titles.title_id
	LEFT JOIN sales
        ON titleauthor.title_id = sales.title_id
	GROUP BY authors.au_id
    ORDER BY SUM(sales.qty) DESC
	LIMIT 3;



SELECT authors.au_id AS `ID`, authors.au_lname AS `LAST NAME`, authors.au_fname AS `FIRST NAME`, IFNULL(SUM(sales.qty), 0) AS `Quantity`
	FROM authors
    LEFT JOIN titleauthor
        ON authors.au_id = titleauthor.au_id
	LEFT JOIN titles
		ON titleauthor.title_id = titles.title_id
	LEFT JOIN sales
        ON titleauthor.title_id = sales.title_id
	GROUP BY authors.au_id
    ORDER BY SUM(sales.qty) DESC
    
