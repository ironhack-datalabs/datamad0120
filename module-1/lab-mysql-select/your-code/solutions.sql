/*CHALLENGE 1*/
/*
SELECT
	C.au_id AS Author_ID,
    C.au_lname AS Last_Name,
    C.au_fname AS First_Name,
    C.title AS Title,
    D.pub_name AS Publisher
FROM
	(SELECT
		B.au_lname,
		B.au_fname,
        B.au_id,
		T.title,
        T.pub_id
	FROM
		(SELECT
			au_lname,
			au_fname,
			title_id,
            A.au_id
		FROM
			(SELECT  
				au_lname,
				au_fname,
				au_id
			FROM authors) A
		INNER JOIN
			(SELECT
				au_id,
				title_id
			FROM
				titleauthor) TA
		ON A.au_id = TA.au_id) B
	INNER JOIN
		(SELECT
			title,
			title_id,
			pub_id
		FROM
			titles) T
	ON B.title_id = T.title_id) C
INNER JOIN
	(SELECT 
		pub_name,
        pub_id
	 FROM publishers) D
ON C.pub_id = D.pub_id
*/

/*CHALLENGE 2*/

/*
SELECT
	C.au_id AS Author_ID,
    C.au_lname AS Last_Name,
    C.au_fname AS First_Name,
    COUNT(C.Title),
    D.pub_name AS Publisher
FROM
	(SELECT
		B.au_lname,
		B.au_fname,
        B.au_id,
		T.title,
        T.pub_id
	FROM
		(SELECT
			au_lname,
			au_fname,
			title_id,
            A.au_id
		FROM
			(SELECT  
				au_lname,
				au_fname,
				au_id
			FROM authors) A
		INNER JOIN
			(SELECT
				au_id,
				title_id
			FROM
				titleauthor) TA
		ON A.au_id = TA.au_id) B
	INNER JOIN
		(SELECT
			title,
			title_id,
			pub_id
		FROM
			titles) T
	ON B.title_id = T.title_id) C
INNER JOIN
	(SELECT 
		pub_name,
        pub_id
	 FROM publishers) D
ON C.pub_id = D.pub_id
GROUP BY Author_ID, 
	Last_Name,
    First_Name,
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