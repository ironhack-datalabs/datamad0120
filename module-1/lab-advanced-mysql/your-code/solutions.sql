CREATE TEMPORARY TABLE publications.salesroyalties
SELECT ta.au_id as AUTHOR_ID, 
t.title_id as TITLE_ID, 
t.price*s.qty*t.royalty/100*ta.royaltyper/100 as ROYALTY
FROM titleauthor as ta
    INNER JOIN titles as t
	ON ta.title_id = t.title_id
    INNER JOIN sales as s
	ON t.title_id = s.title_id;

CREATE TEMPORARY TABLE Step2
SELECT ps.AUTHOR_ID, 
ps.TITLE_ID, 
SUM(ROYALTY) as ROYALTY
FROM  publications.salesroyalties as ps
GROUP BY ps.TITLE_ID, ps.AUTHOR_ID ;

SELECT Step2.AUTHOR_ID,
t.advance*ta.royaltyper/100) as SUMA
SUM(Step2.ROYALTY + SUMA) as PROFITS
FROM  Step2 
LEFT JOIN titles as t
	ON Step2.TITLE_ID = t.title_id
LEFT JOIN titleauthor as ta
	ON Step2.TITLE_ID = ta.title_id
GROUP BY AUTHOR_ID
ORDER BY PROFITS DESC
LIMIT 3;

#challenge 2
SELECT Step2.AUTHOR_ID, 
SUM(Step2.ROYALTY + t.advance*ta.royaltyper/100) as PROFITS
FROM (SELECT step1.AUTHOR_ID, 
	step1.TITLE_ID, 
	SUM(ROYALTY) as ROYALTY
	FROM (SELECT ta.au_id as AUTHOR_ID, 
	t.title_id as TITLE_ID, 
	t.price*s.qty*t.royalty/100*ta.royaltyper/100 as ROYALTY
	FROM titleauthor as ta
		INNER JOIN titles as t
		ON ta.title_id = t.title_id
		INNER JOIN sales as s
		ON t.title_id = s.title_id) step1
	GROUP BY step1.TITLE_ID, step1.AUTHOR_ID) Step2
INNER JOIN titles as t
ON Step2.TITLE_ID = t.title_id
INNER JOIN titleauthor as ta
ON Step2.TITLE_ID = ta.title_id
GROUP BY AUTHOR_ID
ORDER BY PROFITS DESC
LIMIT 3;

#challenge3 
CREATE TABLE most_profiting_authors as
SELECT Step2.AUTHOR_ID, 
SUM(Step2.ROYALTY + t.advance*ta.royaltyper/100) as PROFITS
FROM (SELECT step1.AUTHOR_ID, 
	step1.TITLE_ID, 
	SUM(ROYALTY) as ROYALTY
	FROM (SELECT ta.au_id as AUTHOR_ID, 
	t.title_id as TITLE_ID, 
	t.price*s.qty*t.royalty/100*ta.royaltyper/100 as ROYALTY
	FROM titleauthor as ta
		INNER JOIN titles as t
		ON ta.title_id = t.title_id
		INNER JOIN sales as s
		ON t.title_id = s.title_id) step1
	GROUP BY step1.TITLE_ID, step1.AUTHOR_ID) Step2
INNER JOIN titles as t
ON Step2.TITLE_ID = t.title_id
INNER JOIN titleauthor as ta
ON Step2.TITLE_ID = ta.title_id
GROUP BY AUTHOR_ID
ORDER BY PROFITS DESC
LIMIT 3;