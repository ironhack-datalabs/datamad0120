/*CHALLENGE 1*/
/*
SELECT
	A.au_lname AS Last_Name,
	A.au_fname AS First_Name,
	A.au_id AS Author_ID,
    TI.title AS Title,
    PU.pub_name AS Publisher
FROM
	authors AS A
INNER JOIN titleauthor AS TA ON A.au_id = TA.au_id
INNER JOIN titles AS TI ON TA.title_id = TI.title_id
INNER JOIN publishers AS PU on TI.pub_id = PU.pub_id
*/

/*CHALLENGE 2*/

/*
SELECT
	A.au_lname AS Last_Name,
	A.au_fname AS First_Name,
	A.au_id AS Author_ID,
    COUNT(TI.Title),
    PU.pub_name AS Publisher
FROM
	authors AS A
INNER JOIN titleauthor AS TA ON A.au_id = TA.au_id
INNER JOIN titles AS TI ON TA.title_id = TI.title_id
INNER JOIN publishers AS PU on TI.pub_id = PU.pub_id
GROUP BY
	Last_Name,
    First_Name,
    Author_ID, 
    Publisher
*/    

/* CHALLENGE 3 */
 /*
 SELECT
	A.au_lname AS Last_Name,
	A.au_fname AS First_Name,
	A.au_id AS Author_ID,
    SUM(SA.qty) AS total
FROM
	authors AS A
INNER JOIN titleauthor AS TA ON A.au_id = TA.au_id
INNER JOIN sales AS SA ON SA.title_id = TA.title_id
GROUP BY
	A.au_lname,
	A.au_fname,
	A.au_id
ORDER BY total DESC
LIMIT 3
 */
 
/*CHALLENGE 4*/

/*
SELECT
	A.au_lname,
	A.au_fname,
	A.au_id,
    IFNULL(SUM(SA.qty),0) AS total
FROM
	authors AS A
LEFT JOIN titleauthor AS TA ON A.au_id = TA.au_id
LEFT JOIN sales AS SA ON SA.title_id = TA.title_id
GROUP BY
	A.au_lname,
	A.au_fname,
	A.au_id
ORDER BY total DESC
*/ 