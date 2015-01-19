--------------------------------지출 테이블--------------------------------
SELECT * FROM spend	where member_id=#{id} order by spend_date desc


--------------------------------수입 테이블--------------------------------
SELECT * FROM income where member_id=#{id} order by income_date desc

--------------------------매니저 정보 테이블과 회원 테이블 조인(매니저 정보 회원한테 보여줄 때)--------------------------------
SELECT m.member_name, m.member_birthday, m.member_sex, mi.manager_license, mi.manage_member_num, mi.career_date
from member m, manager_info mi 
where member_id=#{id} and m.member_id=mi.member_id 


select sum(spend_expense) from spend group by member_id 

select sum(income_expense) from income group by member_id



--------------------------------지출 테이블--------------------------------
SELECT * FROM spend   where member_id=#{id} order by spend_date desc


--------------------------------수입 테이블--------------------------------
SELECT * FROM income where member_id=#{id} order by income_date desc

--------------------------매니저 정보 테이블과 회원 테이블 조인(매니저 정보 회원한테 보여줄 때)--------------------------------
SELECT m.member_name, m.member_birthday, m.member_sex, mi.manager_license, mi.manage_member_num, mi.career_date
from member m, manager_info mi 
where member_id=#{id} and m.member_id=mi.member_id 


select sum(spend_expense) from spend group by member_id 

select sum(income_expense) from income group by member_id

---------------------지출 항목 별로 갯수 출력------------------------------
select spendlist_num, count(spendlist_num) from spend group by spendlist_num;


---------------------수입 항목 별로 갯수 출력------------------------------
select incomelist_num, count(incomelist_num) from income group by incomelist_num;