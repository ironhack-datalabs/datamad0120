
--De esta manera he realizado la query, calculando el royalty para cada venta de título y según el royaltyper de cada autor
SELECT a.title_id AS TITLE_ID, a.au_id AS AUTHOR_ID, COALESCE(a.price,0) AS PRICE, COALESCE(SUM(sales.qty),0) AS SALES, COALESCE(a.royalty,0) AS ROYALTY, a.royaltyper AS ROYALTYPER, SUM(a.price*sales.qty*(a.royalty/100)*(a.royaltyper/100)) AS SALES_ROYALTY
	FROM sales
    RIGHT JOIN (SELECT titleauthor.au_id, titleauthor.title_id, titleauthor.royaltyper, titles.price, titles.royalty
					FROM titles
					RIGHT JOIN titleauthor
					ON titles.title_id = titleauthor.title_id) AS a
	ON sales.title_id = a.title_id
    GROUP BY TITLE_ID, AUTHOR_ID;

--Así he creado la tabla temporal, quitando los datos que solamente necesitaba para el cálculo del royalty
CREATE TEMPORARY TABLE publications.sales_royalty
SELECT a.title_id AS TITLE_ID, a.au_id AS AUTHOR_ID, a.royaltyper AS ROYALTYPER, COALESCE(SUM(a.price*sales.qty*(a.royalty/100)*(a.royaltyper/100)),0) AS SALES_ROYALTY
	FROM publications.sales
    RIGHT JOIN (SELECT titleauthor.au_id, titleauthor.title_id, titleauthor.royaltyper, titles.price, titles.royalty
					FROM publications.titles
					RIGHT JOIN publications.titleauthor
					ON titles.title_id = titleauthor.title_id) AS a
	ON sales.title_id = a.title_id
    GROUP BY TITLE_ID, AUTHOR_ID;

--Dentro de la tabla temporal, he traído el advance y lo he calculado para cada título y según el royaltyper de cada autor, junto con el profit
SELECT sales_royalty.TITLE_ID, sales_royalty.AUTHOR_ID, sales_royalty.ROYALTYPER, sales_royalty.SALES_ROYALTY, COALESCE(titles.advance, 0) AS ADVANCE, COALESCE(ADVANCE*(ROYALTYPER/100),0) + SALES_ROYALTY AS PROFIT
	FROM titles
	RIGHT JOIN publications.sales_royalty
    ON titles.title_id = sales_royalty.TITLE_ID;

--Resultado final
SELECT *
	FROM (SELECT sales_royalty.AUTHOR_ID, SUM(COALESCE(ADVANCE*(ROYALTYPER/100),0) + SALES_ROYALTY) AS PROFIT
			FROM titles
			RIGHT JOIN publications.sales_royalty
			ON titles.title_id = sales_royalty.TITLE_ID
			GROUP BY AUTHOR_ID
			ORDER BY PROFIT DESC) AS a
	LIMIT 3;

