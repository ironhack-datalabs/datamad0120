#CHALLENGE 1

/*
CREATE TEMPORARY TABLE `Step1` 

SELECT 
	
				T.title_id AS  `Title_ID`,
				A.au_id AS `Author_ID`, 
                T.price*S.qty*T.royalty/100*TA.royaltyper/100 AS `sales_royalty`

				FROM titles as T
					LEFT JOIN titleauthor as TA
					ON T.title_id = TA.title_id
					LEFT JOIN authors as A
					ON TA.au_id = A.au_id
					RIGHT JOIN sales as S
					ON S.title_id = T.title_id


*/

#DROP TEMPORARY TABLE IF EXISTS Step2
/*
CREATE TEMPORARY TABLE Step2

SELECT Title_ID, Author_ID, sum(sales_royalty) AS `SumRoy`

FROM Step1

	GROUP BY Title_ID , Author_ID


#STEP 3

SELECT Author_ID, (SumRoy + T.advance) AS `Profit`

FROM Step2
RIGHT JOIN titles as T ON T.title_id = Step2.title_id
ORDER BY Profit DESC 
LIMIT 3
*/

#CHALLENGE 2
