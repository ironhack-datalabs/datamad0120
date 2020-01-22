'''Challenge 1 y 2'''

SELECT b.au_id AS "AUTHOR ID", b.au_lname AS "LAST NAME", b.au_fname AS "FIRST NAME", publishers.pub_name AS "PUBLISHER", COUNT(b.title) AS "TITLE COUNT"
	FROM publishers
	RIGHT JOIN (SELECT a.au_id, a.au_lname, a.au_fname, a.title_id, titles.title, titles.pub_id
					FROM titles
					RIGHT JOIN (SELECT titleauthor.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
									FROM authors
									RIGHT JOIN titleauthor
									ON authors.au_id = titleauthor.au_id) AS a
					ON titles.title_id = a.title_id) AS b
	ON publishers.pub_id = b.pub_id
    GROUP BY b.au_id, b.au_lname, b.au_fname, publishers.pub_name;

'''Challenge 3'''

SELECT *
	FROM (SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", SUM(sales.qty) AS "TOTAL"
			FROM sales
			RIGHT JOIN (SELECT titleauthor.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
							FROM authors
							RIGHT JOIN titleauthor
							ON authors.au_id = titleauthor.au_id) AS a
			ON sales.title_id = a.title_id
			GROUP BY a.au_id, a.au_lname, a.au_fname
			ORDER BY TOTAL DESC) AS b
	LIMIT 3;

'''Challenge 4'''

SELECT a.au_id AS "AUTHOR ID", a.au_lname AS "LAST NAME", a.au_fname AS "FIRST NAME", COALESCE(SUM(sales.qty),0) AS "TOTAL"
	FROM sales
	RIGHT JOIN (SELECT authors.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
					FROM authors
					LEFT JOIN titleauthor
					ON authors.au_id = titleauthor.au_id) AS a
	ON sales.title_id = a.title_id
	GROUP BY a.au_id, a.au_lname, a.au_fname
	ORDER BY TOTAL DESC;