/* STEP 1*/
SELECT 
	A.au_id AS Author_ID,
    TI.title,
    TI.price * (TI.royalty/100) * (TA.royaltyper/100) * SA.qty AS sales_royalty
FROM titles AS TI
INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
INNER JOIN sales AS SA ON TA.title_id = SA.title_id
INNER JOIN authors AS A ON A.au_id = TA.au_id

/*STEP 2*/
SELECT 
	A.au_id AS Author_ID,
    TI.title,
    SUM(TI.price * (TI.royalty/100) * (TA.royaltyper/100) * SA.qty) AS total_sales_royalty
FROM titles AS TI
INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
INNER JOIN sales AS SA ON TA.title_id = SA.title_id
INNER JOIN authors AS A ON A.au_id = TA.au_id
GROUP BY Author_ID,
    TI.title

/*STEP 3*/
SELECT
	A.Author_ID,
	A.total_sales_royalty + B.total_advance AS total_profit
FROM
	(SELECT 
		A.au_id AS Author_ID,
        TI.Title AS Title,
		SUM(TI.price * (TI.royalty/100) * (TA.royaltyper/100) * SA.qty) AS total_sales_royalty
	FROM titles AS TI
	INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
	INNER JOIN sales AS SA ON TA.title_id = SA.title_id
	INNER JOIN authors AS A ON A.au_id = TA.au_id
	GROUP BY A.au_id,
    TI.Title) A
	RIGHT JOIN
		(SELECT 
			A.au_id AS Author_ID,
			TI.title AS Title,
			TI.advance * (TA.royaltyper/100) AS total_advance
		FROM titles AS TI
		INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
		INNER JOIN sales AS SA ON TA.title_id = SA.title_id
		INNER JOIN authors AS A ON A.au_id = TA.au_id
        ) B
	ON A.Author_ID = B.Author_ID
    AND A.Title = B.Title
	GROUP BY 
		A.Author_ID,
    A.total_sales_royalty + B.total_advance
    ORDER BY total_profit DESC
    LIMIT 3
    
/* CHALLENGE 2*/    
/*Step 1*/
CREATE TEMPORARY TABLE A1
SELECT 
	A.au_id AS Author_ID,
    TI.title,
    TI.price * (TI.royalty/100) * (TA.royaltyper/100) * SA.qty AS sales_royalty
FROM titles AS TI
INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
INNER JOIN sales AS SA ON TA.title_id = SA.title_id
INNER JOIN authors AS A ON A.au_id = TA.au_id

/*Step 2*/
CREATE TEMPORARY TABLE A2
 SELECT
	Author_ID,
    title,
    SUM(sales_royalty) AS total_sales_royalty
 FROM A1 
 GROUP BY Author_ID,
    title

/*Step 3*/
CREATE TEMPORARY TABLE A3
SELECT
	C.Author_ID,
	C.total_sales_royalty + B.total_advance AS total_profit
FROM
	(SELECT
		Author_ID,
		title,
		total_sales_royalty
	FROM
		A2) C
RIGHT JOIN
	(SELECT 
		A.au_id AS Author_ID,
		TI.title AS Title,
		TI.advance * (TA.royaltyper/100) AS total_advance
	FROM titles AS TI
	INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
	INNER JOIN sales AS SA ON TA.title_id = SA.title_id
	INNER JOIN authors AS A ON A.au_id = TA.au_id
	) B
	ON C.Author_ID = B.Author_ID
    AND C.title = B.Title
	GROUP BY 
		C.Author_ID,
    C.total_sales_royalty + B.total_advance
    ORDER BY total_profit DESC
    LIMIT 3    
    
    
/* CHALLENGE 3 */
CREATE TABLE most_profiting_authors
SELECT
	A.Author_ID,
	A.total_sales_royalty + B.total_advance AS profits
FROM
	(SELECT 
		A.au_id AS Author_ID,
        TI.Title AS Title,
		SUM(TI.price * (TI.royalty/100) * (TA.royaltyper/100) * SA.qty) AS total_sales_royalty
	FROM titles AS TI
	INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
	INNER JOIN sales AS SA ON TA.title_id = SA.title_id
	INNER JOIN authors AS A ON A.au_id = TA.au_id
	GROUP BY A.au_id,
    TI.Title) A
	RIGHT JOIN
		(SELECT 
			A.au_id AS Author_ID,
			TI.title AS Title,
			TI.advance * (TA.royaltyper/100) AS total_advance
		FROM titles AS TI
		INNER JOIN titleauthor AS TA ON TI.title_id = TA.title_id
		INNER JOIN sales AS SA ON TA.title_id = SA.title_id
		INNER JOIN authors AS A ON A.au_id = TA.au_id
        ) B
	ON A.Author_ID = B.Author_ID
    AND A.Title = B.Title
	GROUP BY 
		A.Author_ID,
    A.total_sales_royalty + B.total_advance
    ORDER BY profits DESC
    LIMIT 3