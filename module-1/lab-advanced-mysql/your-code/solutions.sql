-- Step 1

SELECT au.au_id, 
	t.title_id, 
	ROUND(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100, 2) AS royalPerSale
FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    INNER JOIN titles as t On ta.title_id=t.title_id
    LEFT JOIN sales as s ON t.title_id=s.title_id;

-- Step 2

SELECT au.au_id, 
	t.title_id, 
	SUM(ROUND(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100, 2)) AS royalPerSale
FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    INNER JOIN titles as t On ta.title_id=t.title_id
    LEFT JOIN sales as s ON t.title_id=s.title_id
    GROUP BY au.au_id, t.title_id;
   
-- Step 3

SELECT au.au_id, 
    round(SUM(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) + t.advance * ta.royaltyper / 100, 2) AS moneypsale
FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    INNER JOIN titles as t On ta.title_id=t.title_id
    LEFT JOIN sales as s ON t.title_id=s.title_id
    GROUP BY au.au_id;
    
-- Challenge 2


		

   