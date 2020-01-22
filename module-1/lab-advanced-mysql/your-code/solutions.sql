SELECT
		titles.title_id AS "TITLE",
		authors.au_id AS "AUTHOR ID",
		titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS "SALES ROYALTY"
	FROM authors
	RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
	RIGHT JOIN titles ON titleauthor.title_id = titles.title_id
	RIGHT JOIN sales ON titles.title_id = sales.title_id


SELECT
		A.`TITLE`,
		A.`AUTHOR ID`,   
        SUM(A.`SALES ROYALTY`) AS `SUMA`
	FROM (
			SELECT
				titles.title_id AS `TITLE`,
				authors.au_id AS `AUTHOR ID`,
				titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS `SALES ROYALTY`
			FROM authors
			RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
			RIGHT JOIN titles ON titleauthor.title_id = titles.title_id
			RIGHT JOIN sales ON titles.title_id = sales.title_id
		) A
	GROUP BY A.`TITLE`,A.`AUTHOR ID`


    
    
   
  
SELECT
		authors.au_id AS `AUTHOR ID`,
		sum(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) + (titles.advance*ta.royaltyper/100) AS `Ganancia`
		FROM authors
		RIGHT JOIN titleauthor ON authors.au_id = titleauthor.au_id
		RIGHT JOIN titles ON titleauthor.title_id = titles.title_id
		RIGHT JOIN publishers ON titles.pub_id = publishers.pub_id
		RIGHT JOIN sales ON titles.title_id = sales.title_id
		GROUP BY authors.au_id;