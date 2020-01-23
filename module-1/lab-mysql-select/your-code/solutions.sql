-- Challenge 1

SELECT au.au_id, au.au_fname, au.au_lname, t.title, p.pub_name FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    INNER JOIN titles as t On ta.title_id=t.title_id
    LEFT JOIN publishers as p ON t.pub_id=p.pub_id
    #WHERE t.title IS NOT Null;

-- Chalenge 2
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT au.au_id, au.au_fname, au.au_lname, p.pub_name, count(t.title) as cnt FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    INNER JOIN titles as t On ta.title_id=t.title_id
    LEFT JOIN publishers as p ON t.pub_id=p.pub_id
    #WHERE t.title IS NOT Null
    group by au.au_id, p.pub_id
    ORDER BY cnt DESC;
    
-- Challenge 3

SELECT au.au_id, au.au_fname, au.au_lname, sum(s.qty) as sales FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    INNER JOIN titles as t On ta.title_id=t.title_id
    INNER JOIN sales as s ON t.title_id=s.title_id
    group by au.au_id
    ORDER BY sales DESC
    limit 3;

-- Challenge 4

SELECT au.au_id, au.au_fname, au.au_lname, IFNULL(sum(s.qty),0) as sales FROM publications.authors as au
	LEFT JOIN titleauthor as ta ON au.au_id=ta.au_id
    LEFT JOIN titles as t On ta.title_id=t.title_id
    LEFT JOIN sales as s ON t.title_id=s.title_id
    group by au.au_id
    ORDER BY sales DESC


