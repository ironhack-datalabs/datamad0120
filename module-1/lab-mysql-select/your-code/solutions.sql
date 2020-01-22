#CHALLENGE1
SELECT authors.au_id as ID_AUTORES, 
authors.au_lname as SECOND_NAME,
authors.au_fname as FIRST_NAME,
titles.title as TITLES,
publishers.pub_name as PUBLISHER
    FROM lab_mysql2.authors
        INNER JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
        INNER JOIN titles
        ON titleauthor.title_id = titles.title_id
        INNER JOIN publishers
        ON titles.pub_id = publishers.pub_id;

#CHALLENGE2
SELECT authors.au_id as ID_AUTORES, 
authors.au_lname as SECOND_NAME,
authors.au_fname as FIRST_NAME,
count(titles.title) as TITLES
    FROM lab_mysql2.authors
        INNER JOIN titleauthor
		ON authors.au_id = titleauthor.au_id
        INNER JOIN titles
        ON titleauthor.title_id = titles.title_id
        INNER JOIN publishers
        ON titles.pub_id = publishers.pub_id
    GROUP BY 
    authors.au_id, 
	authors.au_lname,
	authors.au_fname;

#CHALLENGE3
SELECT 
authors.au_id as ID_AUTORES, 
authors.au_lname as SECOND_NAME,
authors.au_fname as FIRST_NAME,
sum(sales.qty) as TOTAL_TITLE
FROM lab_mysql2.authors
	INNER JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
	INNER JOIN titles
	ON titles.title_id=titleauthor.title_id
    INNER JOIN sales
    ON sales.title_id=titleauthor.title_id
        GROUP BY 
		authors.au_id, 
		authors.au_lname,
		authors.au_fname
            ORDER BY `TOTAL_TITLE` DESC
				LIMIT 3		

#CHALLENGE4
SELECT 
authors.au_id as ID_AUTORES, 
authors.au_lname as SECOND_NAME,
authors.au_fname as FIRST_NAME,
sum(sales.qty) as TOTAL_TITLE
FROM lab_mysql2.authors
	LEFT JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
	LEFT JOIN titles
	ON titles.title_id=titleauthor.title_id
    LEFT JOIN sales
    ON sales.title_id=titleauthor.title_id
    GROUP BY 
		authors.au_id, 
		authors.au_lname,
		authors.au_fname
		ORDER BY `TOTAL_TITLE` DESC


	

