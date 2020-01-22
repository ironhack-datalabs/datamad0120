  /* VENTAS POR LIBRO

SELECT sales.title_id AS LIBRO, SUM(sales.qty) AS VENTAS
	FROM publications.sales
    GROUP BY sales.title_id
    JOIN 
    
CREATE TEMPORARY TABLE publications.pasta
SELECT 	titles.title_id, titleauthor.au_id, IFNULL(titles.price,0) price,
		sales.qty, IFNULL(titles.advance,0) advance, IFNULL(titles.royalty,0) royalty,
		titleauthor.royaltyper tiporoyal,
        titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS pasta_roy,
        advance * titleauthor.royaltyper/100  AS pasta_adv
        
	FROM publications.titles
		JOIN publications.titleauthor ON titles.title_id = titleauthor.title_id
        JOIN publications.sales ON sales.title_id = titles.title_id;
        */
SELECT pasta.au_id, sum(pasta.pasta_roy) + sum(pasta.pasta_adv)
	FROM pasta
    GROUP BY pasta.au_id
        
        
        