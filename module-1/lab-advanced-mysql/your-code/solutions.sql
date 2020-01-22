

drop table STEP1;
CREATE TEMPORARY TABLE step1
select T.TITLE_ID,
		TA.AU_ID,
        ta.royaltyper,
		round(t.price * S.qty * t.royalty / 100 * ta.royaltyper / 100,2) as sales_royalty 
	from titles T,
		sales S,
        titleauthor TA
	where S.TITLE_ID = T.TITLE_ID
		and T.TITLE_ID = TA.TITLE_ID;

drop table step2;
CREATE TEMPORARY TABLE step2
select TITLE_ID,
		AU_ID,
        sum(sales_royalty) as royalties_aggre
from step1
group by TITLE_ID,
		AU_ID;

drop table step3;
CREATE TEMPORARY TABLE step3
select T.TITLE_ID,
		AU_ID,
        round(T.advance * ta.royaltyper / 100,2) as advance_portion 
from titles T,
        titleauthor TA
where T.TITLE_ID = TA.TITLE_ID;

-- ROYALTIES USANDO TABLAS TEMPORALES
select A.AU_ID,
	sum(advance_portion+royalties_aggre) as royalties_totales
from step3 A
	left join step2 B on A.TITLE_ID = B.TITLE_ID and A.AU_ID = B.AU_ID
group by AU_ID;


-- ROYALTIES CON TABLAS ANIDADAS
select A.AU_ID, sum(advance_portion+royalties_aggre) as royalties_totales
from (
		select T.TITLE_ID,
				AU_ID,
				round(T.advance * ta.royaltyper / 100,2) as advance_portion 
		from titles T,
				titleauthor TA
		where T.TITLE_ID = TA.TITLE_ID
	) A
	left join (
		select TITLE_ID,
				AU_ID,
				sum(sales_royalty) as royalties_aggre
		from (select T.TITLE_ID, TA.AU_ID, ta.royaltyper, round(t.price * S.qty * t.royalty / 100 * ta.royaltyper / 100,2) as sales_royalty 
			from titles T, sales S, titleauthor TA
			where S.TITLE_ID = T.TITLE_ID and T.TITLE_ID = TA.TITLE_ID) X
		group by TITLE_ID, AU_ID
	) B on A.TITLE_ID = B.TITLE_ID and A.AU_ID = B.AU_ID
group by AU_ID;
