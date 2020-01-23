SELECT a.au_id, sum(a.pasta_roy) + sum(a.pasta_adv) AS total
FROM


(SELECT titles.title_id, titleauthor.au_id, IFNULL(titles.price,0) price,
		sales.qty, IFNULL(titles.advance,0) advance, IFNULL(titles.royalty,0) royalty,
		titleauthor.royaltyper tiporoyal,
        titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS pasta_roy,
        advance * titleauthor.royaltyper/100  AS pasta_adv
        
	FROM publications.titles
		JOIN publications.titleauthor ON titles.title_id = titleauthor.title_id
        JOIN publications.sales ON sales.title_id = titles.title_id ) AS a 
        
	
GROUP BY a.au_id
ORDER BY total DESC;