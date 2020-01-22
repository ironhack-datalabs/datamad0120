#lab-mysql-select
 
 #CHALLENGE 1
SELECT 
	A.au_id AS "AUTHOR ID",
    A.au_lname AS "LAST NAME",
    A.au_fname AS "FIRST NAME",
    T.title AS "TITLE",
    P.pub_name AS "PUBLISHER"
	
    FROM authors as A
		RIGHT JOIN titleauthor as TA   
		ON A.au_id = TA.au_id
			LEFT JOIN titles as T
			ON T.title_id = TA.title_id
				LEFT JOIN publishers as P
                ON P.pub_id = T.pub_id
	ORDER BY A.au_id


#CHALLENGE 2
SELECT 
	A.au_id AS "AUTHOR ID",
    A.au_lname AS "LAST NAME",
    A.au_fname AS "FIRST NAME",
    P.pub_name AS "PUBLISHER",
	count(T.title) AS "TITLE COUNT"
        
    FROM authors as A
		RIGHT JOIN titleauthor as TA   
		ON A.au_id = TA.au_id
			LEFT JOIN titles as T
			ON T.title_id = TA.title_id
				LEFT JOIN publishers as P
                ON P.pub_id = T.pub_id
	GROUP BY A.au_id
    ORDER BY A.au_id
 
 
#CHALLENGE 3
SELECT
	A.au_id AS "AUTHOR ID",
    A.au_lname AS "LAST NAME",
    A.au_fname AS "FIRST NAME",
	sum(S.qty) AS "TOTAL"
        
    FROM authors as A
		LEFT JOIN titleauthor as TA   
		ON A.au_id = TA.au_id
			LEFT JOIN titles as T
			ON T.title_id = TA.title_id
				LEFT JOIN sales as S
                ON T.title_id = S.title_id
	GROUP BY A.au_id
    ORDER BY Total desc
    LIMIT 3
    


#CHALLENGE 4
SELECT
	A.au_id AS "AUTHOR ID",
    A.au_lname AS "LAST NAME",
    A.au_fname AS "FIRST NAME",
	IFNULL(sum(S.qty),0) AS "TOTAL"
        
    FROM authors as A
		LEFT JOIN titleauthor as TA   
		ON A.au_id = TA.au_id
			LEFT JOIN titles as T
			ON T.title_id = TA.title_id
				LEFT JOIN sales as S
                ON T.title_id = S.title_id
	GROUP BY A.au_id
    ORDER BY TOTAL desc



#BONUS

SELECT 

CONCAT(A.au_fname," ",A.au_lname) as "AUTHOR",
count(T.title) AS "TOTAL TITLES",
sum(ROUND((T.advance*TA.royaltyper/100))) AS "ADVANCE", 
sum(ROUND(S.qty*T.price*R.royalty/100*TA.royaltyper/100)) as "ROYALTIES", 
sum(ROUND(S.qty*T.price*R.royalty/100*TA.royaltyper/100)) + sum(ROUND((T.advance*TA.royaltyper/100))) as "PROFIT"
	
    FROM titles as T
    LEFT JOIN titleauthor as TA
    ON T.title_id = TA.title_id
    LEFT JOIN authors as A
    ON TA.au_id = A.au_id
    RIGHT JOIN sales as S
    ON S.title_id = T.title_id
    RIGHT JOIN roysched as R
    ON T.title_id = R.title_id
    
    GROUP BY A.au_id
    ORDER BY PROFIT desc
	LIMIT 3