CREATE TEMPORARY TABLE publications.salesroyalties
SELECT a.au_id as AUTHOR_ID, 
t.title_id as TITTLE_ID, 
t.price*s.qty*t.royalty/100*ta.royaltyper/100 as ROYALTY
FROM authors as a
INNER JOIN titleauthor as ta
	ON a.au_id = ta.au_id
    INNER JOIN titles as t
	ON ta.title_id = t.title_id
    INNER JOIN sales as s
	ON t.title_id = s.title_id;

CREATE TEMPORARY TABLE Step2
SELECT ps.AUTHOR_ID, 
ps.TITTLE_ID, 
SUM(ROYALTY) as ROYALTY
FROM  publications.salesroyalt as ps
GROUP BY ps.TITTLE_ID, ps.AUTHOR_ID ;

SELECT Step2.AUTHOR_ID, 
Step2.TITTLE_ID, 
Step2.ROYALTY + t.advance as PROFITS
FROM  Step2 
INNER JOIN titles as t
	ON Step2.TITTLE_ID = t.title_id;