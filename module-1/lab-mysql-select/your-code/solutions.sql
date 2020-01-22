SELECT authors.au_id as "AUTHOR ID", 
authors.au_lname as "LAST NAME", 
authors.au_fname as "FIRST NAME", 
titles.title as "TITLE", 
publishers.pub_name as "PUBLISHER" 
FROM authors LEFT JOIN titles
ON authors.au_id = AUTHOR ID, authors.au_lname = LAST NAME, authors.au_fname = FIRST NAME, titles.title = TITLE
FROM authors LEFT JOIN publishers 
ON publishers.pub_name = PUB NAME


SELECT authors.au_id as "AUTHOR ID", 
authors.au_lname as "LAST NAME", 
authors.au_fname as "FIRST NAME", 
titles.title as "TITLE", 
publishers.pub_name as "PUBLISHER" 
FROM authors LEFT JOIN titles
ON authors.au_id, authors.au_lname, authors.au_fname, titles.title
LEFT JOIN publishers ON publishers.pub_name