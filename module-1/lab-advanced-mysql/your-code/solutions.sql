

#1
SELECT ta.title_id, a.au_id, ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
	LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id;
    
#2
SELECT ta.title_id, a.au_id, sum(ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100) FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
	LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id
    GROUP BY ta.title_id, a.au_id;
    
#3
SELECT  a.au_id, sum(ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100) + sum(ti.advance*ta.royaltyper/100) as Profit FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
	LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id
    GROUP BY a.au_id

#4
DROP TABLE IF EXISTS A1
CREATE TEMPORARY TABLE A1
 SELECT ta.title_id, a.au_id, ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100 as sumroyalties FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
	LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id;
    
DROP TABLE IF EXISTS A2   
CREATE TEMPORARY TABLE A2
SELECT A1.title_id, A1.au_id, sum(A1.sumroyalties) as sumroyalties FROM A1
    GROUP BY A1.title_id, A1.au_id;
    
DROP TABLE IF EXISTS A3   
CREATE TEMPORARY TABLE A3
SELECT  A2.au_id, A2.sumroyalties + sum(ti.advance* ta.royaltyper/100) as Profit 
FROM A2
	LEFT JOIN titleauthor as ta ON A2.au_id = ta.au_id
	LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id
GROUP BY A2.au_id

#5
CREATE TABLE PROFIT as
SELECT  a.au_id, sum(ti.price * sa.qty * ti.royalty / 100 * ta.royaltyper / 100) + sum(ti.advance*ta.royaltyper/100) as Profit FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
	LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id
    GROUP BY a.au_id

    

    
    