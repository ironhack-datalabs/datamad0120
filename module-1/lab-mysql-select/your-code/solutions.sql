lab_mysql_select

#CHALLENGE 1

SELECT authors.au_id as "AUTHOR ID", 
authors.au_lname as "LAST NAME", 
authors.au_fname as "FIRST NAME", 
titles.title as "TITLE", 
publishers.pub_name as "PUBLISHER" 
    FROM authors 
    INNER JOIN titleauthor
    ON authors.au_id = titleauthor.au_id
    INNER JOIN  titles ON titles.title_id = titleauthor.title_id
    INNER JOIN publishers ON publishers.pub_id = titles.pub_id

# CHALLENGE 2

SELECT authors.au_id as `AUTHOR ID`,
authors.au_lname as "LAST NAME",
authors.au_fname as "FIRST NAME",
titles.title as "TITLE",
publishers.pub_id as "PUBLISHER"
    FROM authors
    INNER JOIN titleauthor
    ON authors.au_id = titleauthor.au_id
    INNER JOIN titles ON titles.title_id = titleauthor.title_id
    INNER JOIN publishers ON publishers.pub_id = titles.pub_id;


#CHALLENGE 3

SELECT authors.au_id as `AUTHOR ID`,
authors.au_lname as "LAST NAME",
authors.au_fname as "FIRST NAME",
titles.title as "TITLE",
SUM(sales.qty) as `Total`
    FROM authors
    INNER JOIN titleauthor
    ON authors.au_id = titleauthor.au_id
    INNER JOIN titles ON titles.title_id = titleauthor.title_id
    INNER JOIN sales ON sales.title_id = titles.title_id
    GROUP BY `AUTHOR ID` ORDER BY `Total` DESC
    LIMIT 3;

#CHALLENGE 4

SELECT authors.au_id as `AUTHOR ID`,
authors.au_lname as "LAST NAME",
authors.au_fname as "FIRST NAME",
titles.title as "TITLE",
SUM(sales.qty) as `Total`
    FROM authors
    INNER JOIN titleauthor
    ON authors.au_id = titleauthor.au_id
    LEFT JOIN titles ON titles.title_id = titleauthor.title_id
    LEFT JOIN sales ON sales.title_id = titles.title_id
	ORDER BY `Total` DESC
    LIMIT 23;
