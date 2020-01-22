/* Challengue 1*/
SELECT t2.au_id as "Author ID", t2.au_lname as "Last name", t2.au_fname as "First name", t2.title as Title, p.pub_name as "Publisher name" FROM publishers as p
    LEFT JOIN
	(SELECT t1.au_id, t1.au_lname, t1.au_fname, ti.title, ti.pub_id FROM titles as ti
		LEFT JOIN
		(SELECT a.au_id, a.au_lname, a.au_fname, ta.title_id FROM authors as a
			LEFT JOIN titleauthor as ta ON  a.au_id = ta.au_id) as t1
		ON ti.title_id = t1.title_id) as t2
	ON t2.pub_id = p.pub_id;

/* Challengue 2*/
SELECT t2.au_id as "Author ID", t2.au_lname as "Last name", t2.au_fname as "First name",
count(t2.title) as Title, p.pub_name as "Publisher name" FROM publishers as p
    LEFT JOIN
	(SELECT t1.au_id, t1.au_lname, t1.au_fname, ti.title, ti.pub_id FROM titles as ti
		LEFT JOIN
		(SELECT a.au_id, a.au_lname, a.au_fname, ta.title_id FROM authors as a
			LEFT JOIN titleauthor as ta ON  a.au_id = ta.au_id) as t1
		ON ti.title_id = t1.title_id) as t2
	ON t2.pub_id = p.pub_id
    GROUP BY t2.au_id,t2.pub_id
    ORDER BY t2.au_id desc;
    
 /* Challengue 3*/

SELECT a.au_id, a.au_lname, a.au_fname, sum(sa.qty) FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
    LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id
    GROUP BY a.au_id
    ORDER BY sum(sa.qty) DESC
    LIMIT 3;

 /* Challengue 4*/

SELECT IFNULL(a.au_id,0), IFNULL(a.au_lname,0), IFNULL(a.au_fname,0), IFNULL(sum(sa.qty),0) FROM authors as a
	LEFT JOIN titleauthor as ta ON a.au_id = ta.au_id
    LEFT JOIN titles as ti ON ta.title_id = ti.title_id
	LEFT JOIN sales as sa ON ta.title_id = sa.title_id
    GROUP BY a.au_id
    ORDER BY sum(sa.qty) DESC
   
    

