/* EJERCICIO 1 */


CREATE TEMPORARY TABLE publications.Paso1

SELECT
	titles.title_id AS TitleID,
	authors.au_id AS AuthorsID,
    titles.price*sales.qty*titles.royalty/100*titleauthor.royaltyper/100 AS Sales_Royalties
    FROM authors
    
    INNER JOIN titleauthor ON titleauthor.au_id=authors.au_id
    INNER JOIN titles ON titles.title_id=titleauthor.title_id
    INNER JOIN sales ON sales.title_id=titles.title_id;


CREATE TEMPORARY TABLE publications.Paso2

SELECT 
	AuthorsID,
	TitleID,
	SUM(Sales_Royalties) as Suma
    
FROM Paso1
GROUP BY AuthorsID, TitleID;


SELECT

	AuthorsID,
	ROUND(SUM(Suma + titles.advance)) as Profits
    
FROM Paso2
	INNER JOIN publications.titles ON titles.title_id=Paso2.TitleID
    
    
GROUP BY AuthorsID;

DROP TEMPORARY TABLE Paso1,Paso2









/* EJERCICIO 2 */

SELECT
	titles.title_id AS TitleID,
	authors.au_id AS AuthorsID,
    titles.price*sales.qty*titles.royalty/100*titleauthor.royaltyper/100 AS Sales_Royalties
    FROM authors
    
    INNER JOIN titleauthor ON titleauthor.au_id=authors.au_id
    INNER JOIN titles ON titles.title_id=titleauthor.title_id
    INNER JOIN sales ON sales.title_id=titles.title_id;






/* ¿PORQUE NO FUNCIONA DE ESTA MANERA? ¿MALA SINTAXIS? */

SELECT 
	AuthorsID,
	TitleID,
	SUM(Sales_Royalties) as Suma
    
FROM(
	SELECT
		titles.title_id AS TitleID,
		authors.au_id AS AuthorsID,
		titles.price*sales.qty*titles.royalty/100*titleauthor.royaltyper/100 AS Sales_Royalties
    FROM authors
    
    INNER JOIN titleauthor ON titleauthor.au_id=authors.au_id
    INNER JOIN titles ON titles.title_id=titleauthor.title_id
    INNER JOIN sales ON sales.title_id=titles.title_id

) as Paso1

GROUP BY AuthorsID, TitleID;
