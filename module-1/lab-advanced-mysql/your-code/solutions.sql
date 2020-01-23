advance

SELECT authors.titile_id AS TITLE_ID,
authors.au_id as AUTHOR_ID,
COALESCE(authors.price, 0) as PRICE,
COALESCE(SUM(sales.qty, 0)) as SALES,
COALESCE(authors.royalty, 0) as ROYALTY,
authors.royaltyper as ROYALTYPER,
SUM(authors.price * sales.qty * (authors.royalty/100) * (authors.royaltyper/100)) as SALES_ROYALTY
FROM sales
        RIGHT JOIN (SELECT titleauthor.au_id, titleauthor.title_id, titleauthor.royaltyper, titles.prices, titles.royalty
            FROM titles
            RIGHT JOIN titleauthor
            ON titles.title_id = titileauthor.title) 
        ON sales.title_id = authors.title_id
        GROUP BY `TITLE ID`, `AUTHOR ID`;


SELECT sales_royalty.TITLE_ID, sales_royalty.ROYALTYPER, sales_royalty.SALES_ROYALTY, COALESCE(titles.advance, 0) as ADVANCE,
COALESCE(ADVANCE * (ROYALTYPER / 100),0) + SALES_ROYALTY AS PROFIT
FROM titles
RIGHT JOIN publications.sales_royalty
ON titles.title_id = sales_royalty.TITLE_ID;

SELECT * 
FROM (SELECT sales_royalty.AUTHOR_ID, SUM(COALESCE(ADVANCE * (ROYALTYPER / 100, 0) + SALES_ROYALTY) as PROFIT
FROM titles
RIGHT JOIN publications.sales_royalty
ON titles.title_id = sales_royalty.TITLE_ID
GROUP BY AUTHOR_ID
ORDER BY PROFIT DESC

LIMIT 3;
