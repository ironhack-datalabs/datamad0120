-- CHALLENGE 1--

    -- Hago INNER JOIN de los IDs de los autores que están en la lista titleauthor
    -- para sacar el title_id

SELECT authors.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
FROM publications.authors
INNER JOIN publications.titleauthor ON authors.au_id=titleauthor.au_id;

    -- Hago la subquery para sacar el título según title_ID.

SELECT summary.*, titles.title
FROM (
	SELECT authors.au_id, authors.au_lname, authors.au_fname, titleauthor.title_id
	FROM publications.authors
	INNER JOIN publications.titleauthor ON authors.au_id=titleauthor.au_id
) summary
INNER JOIN publications.titles ON titles.title_id = summary.title_id;

    -- RESULTADO FINAL.

SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `Name`, titles.title `Title`, publishers.pub_name `Publisher`
FROM authors
INNER JOIN titleauthor ON authors.au_id=titleauthor.au_id
INNER JOIN titles ON titles.title_id=titleauthor.title_id
INNER JOIN publishers ON titles.pub_id=publishers.pub_id;

        -- No es necesario hacerlo con subqueries, concatenando joins es más sencillo.



-- CHALLENGE 2--

    -- De titleauthor relaciono los autores, los títulos y los publishers con Join. De ahí agrupo por publishers
    -- como hay varios autores para cada publisher, agrupo también por autores
    -- como puede haber varios títulos por cada autor por cada publisher, elimino el conflicto sumando en el SELECT el nº de títulos

SELECT titleauthor.au_id, COUNT(titleauthor.title_id), titles.pub_id
FROM titleauthor
INNER JOIN titles ON titles.title_id=titleauthor.title_id
GROUP BY titles.pub_id, titleauthor.au_id;

    -- RESULTADO FINAL

SELECT titleauthor.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `Name`, publishers.pub_name `Publisher`, COUNT(titleauthor.title_id)
FROM titleauthor
INNER JOIN titles ON titles.title_id=titleauthor.title_id
INNER JOIN authors ON titleauthor.au_id=authors.au_id
INNER JOIN publishers ON titles.pub_id=publishers.pub_id
GROUP BY titles.pub_id, titleauthor.au_id;

        -- He hecho más joins para añadir las columnas que me faltaban por añadir


-- CHALLENGE 3--

SELECT authors.au_id `Author ID`, authors.au_lname `Last Name`, authors.au_fname `Name`, SUM(sales.qty) `TOTAL`
FROM titleauthor
INNER JOIN sales ON sales.title_id=titleauthor.title_id
INNER JOIN authors ON authors.au_id=titleauthor.au_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC
LIMIT 3;



