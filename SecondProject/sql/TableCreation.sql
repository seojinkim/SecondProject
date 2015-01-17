CREATE TABLE users (
  id VARCHAR2(40) constraint users_id_pk PRIMARY KEY,
  pw VARCHAR2(40) NOT NULL,
  name VARCHAR2(10) NOT NULL,
  age NUMBER(3) NOT NULL,
  phone_number VARCHAR2(15)
);
create table expense(
  exnum number constraint expense_exnum_pk Primary key,
  id varchar2(40) NOT NULL,
  excode number(3) NOT NULL,
  examount number(8) NOT NULL,
  note varchar2(40),
  exdate date NOT NULL
);
create table income(
  innum number Primary key Not Null,
  id varchar2(40) NOT NULL,
  incode number(3) NOT NULL,
  inamount number(8) NOT NULL,
  note varchar2(40),
  indate date NOT NULL
);
create table expense_List(
  excode number(3) PRIMARY KEY Not Null,
  exname varchar(20) NOT NULL
);
create table income_List(
  incode number(3) PRIMARY KEY Not Null,
  inname varchar(20) NOT NULL
);
create table analysis(
  id varchar2(40) PRIMARY KEY Not Null,
  balance number(8) Not NULL
);


-- table 제약조건 추가
alter table expense add constraint expense_id_fk foreign key(id) references users(id);
alter table income add constraint income_id_fk foreign key(id) references users(id);
alter table expense add constraint expense_exCode_fk foreign key(exCode) references expense_List(exCode);
alter table income add constraint income_inCode_fk foreign key(inCode) references income_List(inCode);
alter table analysis add constraint analysis_id_fk foreign key(id) references users(id);

--아이디 삽입
insert into users values('id1','1','김서진',27,'010-1234-5678');
insert into users values('id2','2','문석민',28,'010-1234-5678');
insert into users values('id3','3','서해진',24,'010-1234-5678');
insert into users values('id4','4','박정인',24,'010-1234-5678');

--지출 분류 테이블
insert into expense_list values(1,'식비');
insert into expense_list values(2,'문화생활비');
insert into expense_list values(3,'건강관리비');
insert into expense_list values(4,'의류미용비');
insert into expense_list values(5,'교통비');
insert into expense_list values(6,'차량유지비');
insert into expense_list values(7,'주거생활비');
insert into expense_list values(8,'학비');
insert into expense_list values(9,'사회생활비');
insert into expense_list values(10,'유흥비');
insert into expense_list values(11,'금융보험비');
insert into expense_list values(12,'기타');

--수입 분류 테이블
insert into income_list values(1,'월급');
insert into income_list values(2,'용돈');
insert into income_list values(3,'예금 이자');
insert into income_list values(4,'기타');

--지출 테이블에 지출 삽입 id2로
insert into expense values(1, 'id1', 1, 2000, '', '14/08/01');
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	3000,	'',	'14/08/02'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	4000,	'',	'14/08/03'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	5000,	'',	'14/08/04'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	4000,	'',	'14/08/05'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	3000,	'',	'14/08/06'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	2000,	'',	'14/08/07'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	2000,	'',	'14/08/08'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	3000,	'',	'14/08/09'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	4000,	'',	'14/08/10'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	5000,	'',	'14/08/11'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	4000,	'',	'14/08/12'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	3000,	'',	'14/08/13'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	2000,	'',	'14/08/14'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	2000,	'',	'14/08/15'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	3000,	'',	'14/08/16'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	4000,	'',	'14/08/17'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	5000,	'',	'14/08/18'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	4000,	'',	'14/08/19'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	3000,	'',	'14/08/20'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	2000,	'',	'14/08/21'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	2000,	'',	'14/08/22'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	3000,	'',	'14/08/23'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	4000,	'',	'14/08/24'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	5000,	'',	'14/08/25'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	4000,	'',	'14/08/26'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	3000,	'',	'14/08/27'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	2000,	'',	'14/08/28'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	2000,	'',	'14/08/29'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	3000,	'',	'14/08/30'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	4000,	'',	'14/08/31'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	5000,	'',	'14/09/01'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	4000,	'',	'14/09/02'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	3000,	'',	'14/09/03'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	2000,	'',	'14/09/04'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	2000,	'',	'14/09/05'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	3000,	'',	'14/09/06'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	4000,	'',	'14/09/07'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	5000,	'',	'14/09/08'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	4000,	'',	'14/09/09'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	3000,	'',	'14/09/10'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	2000,	'',	'14/09/11'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	2000,	'',	'14/09/12'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	3000,	'',	'14/09/13'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	4000,	'',	'14/09/14'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	5000,	'',	'14/09/15'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	4000,	'',	'14/09/16'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	3000,	'',	'14/09/17'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	2000,	'',	'14/09/18'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	2000,	'',	'14/09/19'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	3000,	'',	'14/09/20'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	4000,	'',	'14/09/21'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	5000,	'',	'14/09/22'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	4000,	'',	'14/09/23'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	3000,	'',	'14/09/24'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	2000,	'',	'14/09/25'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	2000,	'',	'14/09/26'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	3000,	'',	'14/09/27'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	4000,	'',	'14/09/28'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	5000,	'',	'14/09/29'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	4000,	'',	'14/09/30'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	3000,	'',	'14/10/01'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	2000,	'',	'14/10/02'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	2000,	'',	'14/10/03'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	3000,	'',	'14/10/04'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	4000,	'',	'14/10/05'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	5000,	'',	'14/10/06'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	4000,	'',	'14/10/07'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	3000,	'',	'14/10/08'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	2000,	'',	'14/10/09'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	2000,	'',	'14/10/10'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	3000,	'',	'14/10/11'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	4000,	'',	'14/10/12'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	5000,	'',	'14/10/13'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	4000,	'',	'14/10/14'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	3000,	'',	'14/10/15'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	2000,	'',	'14/10/16'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	2000,	'',	'14/10/17'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	3000,	'',	'14/10/18'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	4000,	'',	'14/10/19'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	5000,	'',	'14/10/20'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	4000,	'',	'14/10/21'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	3000,	'',	'14/10/22'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	2000,	'',	'14/10/23'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	2000,	'',	'14/10/24'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	3000,	'',	'14/10/25'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	4000,	'',	'14/10/26'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	5000,	'',	'14/10/27'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	5,	4000,	'',	'14/10/28'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	6,	3000,	'',	'14/10/29'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	7,	2000,	'',	'14/10/30'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	8,	2000,	'',	'14/10/31'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	9,	3000,	'',	'14/11/01'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	10,	4000,	'',	'14/11/02'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	11,	5000,	'',	'14/11/03'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	12,	4000,	'',	'14/11/04'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	1,	3000,	'',	'14/11/05'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	2,	2000,	'',	'14/11/06'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	3,	2000,	'',	'14/11/07'	);
insert into expense values(((select max(exnum) from expense)+1),	'id2',	4,	3000,	'',	'14/11/08'	);

--수입테이블에 수입 추가 id2로 
insert into income values(1,	'id1',	1,	20000,	'',	'14/08/01'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/08/02'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/08/03'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	5000,	'',	'14/08/04'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/08/05'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/08/06'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	2000,	'',	'14/08/07'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	20000,	'',	'14/08/08'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/08/09'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/08/10'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	5000,	'',	'14/08/11'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/08/12'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/08/13'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	2000,	'',	'14/08/14'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	20000,	'',	'14/08/15'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/08/16'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/08/17'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	5000,	'',	'14/08/18'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/08/19'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/08/20'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	2000,	'',	'14/08/21'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	20000,	'',	'14/08/22'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	3000,	'',	'14/08/23'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/08/24'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	5000,	'',	'14/08/25'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/08/26'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	3000,	'',	'14/08/27'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	2000,	'',	'14/08/28'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	20000,	'',	'14/08/29'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/08/30'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/08/31'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	5000,	'',	'14/09/01'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/09/02'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/09/03'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	2000,	'',	'14/09/04'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	20000,	'',	'14/09/05'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/09/06'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/09/07'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	5000,	'',	'14/09/08'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/09/09'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/09/10'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	2000,	'',	'14/09/11'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	20000,	'',	'14/09/12'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/09/13'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/09/14'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	5000,	'',	'14/09/15'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/09/16'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/09/17'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	2000,	'',	'14/09/18'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	20000,	'',	'14/09/19'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	3000,	'',	'14/09/20'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/09/21'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	5000,	'',	'14/09/22'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/09/23'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	3000,	'',	'14/09/24'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	2000,	'',	'14/09/25'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	20000,	'',	'14/09/26'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/09/27'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/09/28'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	5000,	'',	'14/09/29'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/09/30'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/10/01'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	2000,	'',	'14/10/02'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	20000,	'',	'14/10/03'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/10/04'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/10/05'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	5000,	'',	'14/10/06'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/10/07'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/10/08'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	2000,	'',	'14/10/09'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	20000,	'',	'14/10/10'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/10/11'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/10/12'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	5000,	'',	'14/10/13'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/10/14'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/10/15'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	2000,	'',	'14/10/16'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	20000,	'',	'14/10/17'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	3000,	'',	'14/10/18'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/10/19'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	5000,	'',	'14/10/20'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/10/21'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	3000,	'',	'14/10/22'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	2000,	'',	'14/10/23'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	20000,	'',	'14/10/24'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/10/25'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	4000,	'',	'14/10/26'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	5000,	'',	'14/10/27'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	4000,	'',	'14/10/28'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	3000,	'',	'14/10/29'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	2000,	'',	'14/10/30'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	20000,	'',	'14/10/31'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/11/01'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	4000,	'',	'14/11/02'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	5000,	'',	'14/11/03'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	4000,	'',	'14/11/04'	);
insert into income values(((select max(innum) from income)+1),	'id2',	1,	3000,	'',	'14/11/05'	);
insert into income values(((select max(innum) from income)+1),	'id2',	2,	2000,	'',	'14/11/06'	);
insert into income values(((select max(innum) from income)+1),	'id2',	3,	20000,	'',	'14/11/07'	);
insert into income values(((select max(innum) from income)+1),	'id2',	4,	3000,	'',	'14/11/08'	);

commit;