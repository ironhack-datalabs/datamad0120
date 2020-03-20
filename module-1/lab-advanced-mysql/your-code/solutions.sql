
--Step 1

SELECT
	authors.au_id `Author ID`, 
    authors.au_lname `Last Name`, 
    authors.au_fname `Name`, 
    titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 `sales_royalty`
FROM titleauthor
INNER JOIN titles ON titles.title_id=titleauthor.title_id
INNER JOIN sales ON sales.title_id=titleauthor.title_id
INNER JOIN authors ON authors.au_id=titleauthor.au_id;

--Step 2

SELECT
	authors.au_id `Author ID`, 
    authors.au_lname `Last Name`, 
    authors.au_fname `Name`,
    titles.title,
    SUM(titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) `Total Royalties`
FROM titleauthor
INNER JOIN titles ON titles.title_id=titleauthor.title_id
INNER JOIN sales ON sales.title_id=titleauthor.title_id
INNER JOIN authors ON authors.au_id=titleauthor.au_id
GROUP BY authors.au_id, titles.title;

    -- Agrupo por autores y títulos y saco la suma de los royalties para cada uno

--Step 3

