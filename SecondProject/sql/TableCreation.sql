drop table manager_info;
drop table ment;
drop table income;
drop table spend;
drop table incomelist;
drop table spendlist;
drop table member;
drop table grade;

drop sequence income_sq;
drop sequence spend_sq;
drop sequence incomelist_sq;
drop sequence spendlist_sq;
drop sequence ment_sq;
drop sequence manager_info_sq;

--시퀀스 생성

CREATE SEQUENCE INCOME_SQ
START WITH 1
MINVALUE 0
MAXVALUE 9999999999999999999999999999999999999999999999
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE SPEND_SQ
START WITH 1
MINVALUE 0
MAXVALUE 9999999999999999999999999999999999999999999999
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE INCOMELIST_SQ
START WITH 1
MINVALUE 0
MAXVALUE 99
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE SPENDLIST_SQ
START WITH 1
MINVALUE 0
MAXVALUE 99
NOCACHE
NOCYCLE
ORDER;

CREATE SEQUENCE MANAGER_INFO_SQ
START WITH 1
MINVALUE 0
MAXVALUE 999
NOCACHE
NOCYCLE  
ORDER;

CREATE SEQUENCE MENT_SQ
START WITH 1
MINVALUE 0
MAXVALUE 999999999999999999
NOCACHE
NOCYCLE
ORDER;

--회원등급table
create table grade(
	grade_num number(2) constraint grade_gnum_pk primary key,
	grade_name varchar2(10));

--회원목록 table
create table member(
	member_id varchar2(10) constraint member_mid_pk primary key,
	member_pw varchar2(10),
	member_name varchar2(10),
	member_birthday date,
	member_sex char(2),
	grade_num number(2) constraint grade_gnum_fk references grade(grade_num) on delete set null);

--지출항목 table
create table spendlist(
	spendlist_num number(3) constraint spendlist_slist_pk primary key,
	spendlist_name varchar2(15));

--수입항목 table
create table incomelist(
	incomelist_num number(3) constraint incomelist_ilist_pk primary key,
	incomelist_name varchar2(15));

--지출목록 table
create table spend(
	spend_num number(3) constraint spend_snum_pk primary key,
	spendlist_num number(3) constraint spend_snum_fk references spendlist(spendlist_num) on delete set null,
	member_id varchar2(10) constraint spend_mid_fk references member(member_id) on delete set null,
	spend_location varchar2(15),
	spend_expense number(10),
	spend_date date,
	spend_memo varchar2(100));

--수입목록 table
create table income(
	income_num number(3) constraint income_inum_pk primary key,
	incomelist_num number(3) constraint income_icnum_fk references incomelist(incomelist_num) on delete set null,
	member_id varchar2(10) constraint income_mid_fk references member(member_id) on delete set null,
	income_expense number(10),
	income_date date,
	income_memo varchar2(50));

--코멘트table
create table ment(
	manager_id varchar2(10) constraint ment_mid_fk references member(member_id) on delete set null,
	ment_num number(3) constraint ment_cnum_pk primary key,
	member_id varchar2(10) constraint ment_mid2_fk references member(member_id) on delete set null,
	ment_date date,
	ment varchar2(50));

--매니저정보 table
create table manager_info(
	manager_info_num number(3) constraint manager_info_minfo_num_pk primary key,
	member_id varchar2(10) constraint manager_info_num_fk references member(member_id) on delete set null,
	manager_license varchar2(20),
	manage_member_num number(3),
	career_date varchar2(10)
);

--------------------------------------------------------------------------------------------------
INSERT INTO GRADE VALUES(1,'매니저');
INSERT INTO GRADE VALUES(2,'회원');


INSERT INTO MEMBER VALUES('customer1','1234','김서진', '1990-02-07', 'M', 2);
--INSERT INTO MEMBER VALUES('master1','1234','문석민',45,'M',1);
--INSERT INTO MEMBER VALUES('master1','1234','박정인',24,'F',2);
--INSERT INTO MEMBER VALUES('master1','1234','신해진',26,'F',2);

INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'식비');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'주거/통신');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'생활용품');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'의복/미용');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'건강/문화');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'교육/육아');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'교통/차량');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'경조사/회비');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'세금/이자');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'용돈/기타');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'카드대금');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'저축/보험');
INSERT INTO SPENDLIST VALUES(SPENDLIST_SQ.NEXTVAL,'이체/대체');

INSERT INTO INCOMELIST VALUES(INCOMELIST_SQ.NEXTVAL,'주수입');
INSERT INTO INCOMELIST VALUES(INCOMELIST_SQ.NEXTVAL,'부수입');
INSERT INTO INCOMELIST VALUES(INCOMELIST_SQ.NEXTVAL,'전월이월');
INSERT INTO INCOMELIST VALUES(INCOMELIST_SQ.NEXTVAL,'저출/보험');


INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,2,'customer1','아웃백',5000,'2014/02/03','재밌다으하하하하하또먹고싶다');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,3,'customer1','롯데백화점',12000,'2014/02/03','옷이너무 이쁘다 득템 우훗');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,2,'customer1','솔레미오',13000,'2014/01/23','스파게티너무비쌍');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,6,'customer1','준오헤어',25000,'2014/02/12','멋지게 머리자룸 나멋잇징ㅎ');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,9,'customer1','수도세',3000,'2014/05/03','내돈..절약햇당');

INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,1,'customer1',300000,'2014/05/05','힘들게번돈 쓰기싫다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer1',20000,'2014/08/21','엄마가 주셨당 아껴써야지');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer1',50000,'2014/12/05','돈주었다 자주가야겠다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer1',450000,'2014/05/21','투잡 성공');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer1',50000,'2014/12/23','용돈받는날 헤헤헤헤헤');

--INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'SYSTEM', '자산관리사2개',10,'2년');
--INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'eclise', '펀드매니저',12,'5년');

commit;