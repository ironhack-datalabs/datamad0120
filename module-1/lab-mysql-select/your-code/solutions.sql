
	/* Challenge #1 resuelto a lo loco pero yo lo entiendo way */

SELECT a.au_id, a.au_fname, a.au_lname, a.title_id, b.pub_id, b.pub_name, b.title_id
	
FROM
(SELECT authors.au_id , authors.au_fname, authors.au_lname, titleauthor.title_id
	FROM publications.authors
		INNER JOIN publications.titleauthor
		ON authors.au_id = titleauthor.au_id) AS a
		
INNER JOIN
    
(SELECT publishers.pub_id, publishers.pub_name, titles.title_id
	FROM publications.publishers
		INNER JOIN publications.titles
		ON publishers.pub_id = titles.pub_id) AS b

ON a.title_id = b.title_id

    /* Challenge #2 basado en el Challenge #1 pero resolviendo los JOIN en cascada */
    
SELECT authors.au_lname, authors.au_fname, titleauthor.au_id, COUNT(titleauthor.title_id), publishers.pub_name, titles.pub_id 
FROM publications.authors
	JOIN publications.titleauthor ON authors.au_id=titleauthor.au_id
	JOIN publications.titles ON titleauthor.title_id=titles.title_id
    JOIN publications.publishers ON titles.pub_id=publishers.pub_id
		GROUP BY titleauthor.au_id, titles.pub_id;
        
   /* Challenge #3 */     
    
SELECT authors.au_id, authors.au_lname, authors.au_fname, sum(sales.qty) as TOTAL
	FROM publications.authors
		JOIN publications.titleauthor ON authors.au_id=titleauthor.au_id 
		JOIN publications.sales ON titleauthor.title_id=sales.title_id
			GROUP by authors.au_id
			ORDER BY TOTAL DESC
			LIMIT 3
            
	/* Challenge #4 - Best Selling Authors Ranking */

SELECT authors.au_id, authors.au_lname, authors.au_fname, IFNULL(sum(sales.qty), 0) as TOTAL
	FROM publications.authors
		LEFT JOIN publications.titleauthor ON authors.au_id=titleauthor.au_id 
		LEFT JOIN publications.sales ON titleauthor.title_id=sales.title_id
			GROUP BY authors.au_id
			ORDER BY TOTAL DESC