
select A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME,
    T.TITLE,
    P.PUB_NAME
from authors A,
	titleauthor TA,
    titles T,
    PUBLISHERS P
where A.AU_ID = TA.AU_ID
	and TA.TITLE_ID = T.TITLE_ID
    and T.PUB_ID = P.PUB_ID;



select A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME,
    -- T.TITLE,
    P.PUB_NAME,
    count(T.TITLE) as titles_num
from authors A,
	titleauthor TA,
    titles T,
    PUBLISHERS P
where A.AU_ID = TA.AU_ID
	and TA.TITLE_ID = T.TITLE_ID
    and T.PUB_ID = P.PUB_ID
group by A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME,
    -- T.TITLE,
    P.PUB_NAME
;

select A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME,
    sum(qty) as ventas
from authors A,
	titleauthor TA,
    titles T,
    sales S
where A.AU_ID = TA.AU_ID
	and TA.TITLE_ID = T.TITLE_ID
    and T.TITLE_ID = S.TITLE_ID
group by A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME
order by ventas desc
LIMIT 3
;

select A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME,
    sum(coalesce(qty,0)) as ventas
from authors A
	left join titleauthor TA on A.AU_ID = TA.AU_ID
    left join titles T on TA.TITLE_ID = T.TITLE_ID
    left join sales S on T.TITLE_ID = S.TITLE_ID
group by A.AU_ID,
	A.AU_LNAME,
    A.AU_FNAME
order by ventas desc
-- LIMIT 23
;