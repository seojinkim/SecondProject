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
INSERT INTO MEMBER VALUES('customer2','1212','홍길동', '1990-02-08', 'F', 2);
INSERT INTO MEMBER VALUES('customer3','1313','홍길순', '1990-02-09', 'M', 2);
INSERT INTO MEMBER VALUES('customer4','1414','춘향이', '1990-02-10', 'F', 2);
INSERT INTO MEMBER VALUES('customer5','1515','심청이', '1990-02-11', 'M', 2);
INSERT INTO MEMBER VALUES('customer6','1616','문채원', '1991-12-11', 'F', 2);
INSERT INTO MEMBER VALUES('customer7','1717','현아', '1992-12-01', 'M', 2);
INSERT INTO MEMBER VALUES('customer8','1818','김태희', '1990-03-11', 'M', 2);
INSERT INTO MEMBER VALUES('master1','2345','문석민','1989-12-01','M',1);
INSERT INTO MEMBER VALUES('master2','2323','박정인','1992-12-01','F',1);
INSERT INTO MEMBER VALUES('master3','2424','신해진','1990-12-01','F',1);
INSERT INTO MEMBER VALUES('master4','2525','김수로','1965-12-01','M',1);
INSERT INTO MEMBER VALUES('master5','2626','한예슬','1985-12-01','F',1);
INSERT INTO MEMBER VALUES('master6','2727','클라라','1984-12-01','F',1);
INSERT INTO MEMBER VALUES('master7','2828','차태현','1990-12-01','M',1);
INSERT INTO MEMBER VALUES('master8','2929','최민수','1988-12-01','F',1);
INSERT INTO MEMBER VALUES('master9','3030','신민아','1972-12-01','F',1);
--INSERT INTO MEMBER VALUES('master1','1234','문석민',45,'',1);
--INSERT INTO MEMBER VALUES('master1','5678','박정인','1992-12-23','F',2);
--INSERT INTO MEMBER VALUES('master2','9090','신해진','1990-12-02','F',2);

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
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,4,'customer1','롯데백화점',12000,'2014/02/03','옷이너무 이쁘다 득템 우훗');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,2,'customer1','솔레미오',13000,'2014/01/23','스파게티너무비쌍');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,5,'customer1','준오헤어',25000,'2014/02/12','멋지게 머리자룸 나멋잇징ㅎ');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,10,'customer1','수도세',3000,'2014/05/03','내돈..절약햇당');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,10,'customer1','휴대폰비',132500,'2014/12/31','아껴써야겠다..');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,10,'customer1','전기세',30000,'2014/12/10','다음은 20000원 목표');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,2,'customer1','신당동떡볶이',12000,'2014/06/12','내가 쏨');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,4,'customer1','다이소쇼핑',7000,'2014/05/02','컵 10개 득템');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,4,'customer1','현대백화점',1200000,'2014/07/04','올여름은 시원하게보내야지');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,4,'customer1','이마트',99000,'2014/01/09','모찌집 드디어장만!');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,5,'customer1','홍대거리',59000,'2014/12/29','또지름..이번달은 쇼핑끝');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,5,'customer1','이철헤어커커',109000,'2014/09/01','파마했지만 불만가득');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,5,'customer1','믹스엑스믹스',45000,'2014/08/12','기다리기너무힘들어언능와랑');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,6,'customer1','비타민헬스',50000,'2014/12/01','헬스등록!');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,6,'customer1','메가박스',18000,'2014/08/31','국제시장 넘재밌당');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,6,'customer1','샘터연극장',30000,'2014/11/05','라이어짱재밌어 다음에는2탄을꼭');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,7,'customer1','ybm어학원',158000,'2015/01/03','토익스피킹 정복해야지');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,7,'customer1','아가방',23000,'2014/06/18','우리 민지 옷하나장만');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,8,'customer1','교통비',54000,'2014/04/30','왤케많이나갔을까');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,8,'customer1','주유비',200000,'2014/04/31','기름만 많이먹는똥차흑흑');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,8,'customer1','톨비',21000,'2014/04/29','어디갔엇지..?');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,9,'customer1','KODB모임',20000,'2014/03/31','곗돈은 언제타지');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,3,'customer1','수도고장',21000,'2014/10/12','왜고장난고난리');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,11,'customer1','은지용돈',5000,'2014/04/10','내년엔1000원올려줘야지');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,12,'customer1','현대백화점',120000,'2014/02/12','모피코트할부금 아직12개월남음..');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,13,'customer1','정기적금',130000,'2014/09/10','차곡차곡 모으는 재미');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,13,'customer1','화재보험',17000,'2014/08/03','왤케많이나가는지..');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,13,'customer1','차보험',140000,'2014/08/23','차좀없애자');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,13,'customer1','국민연금',13000,'2014/08/24','휴돌려는받을수있나');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,13,'customer1','실버보험',21000,'2014/08/14','내미래를위해');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,14,'customer1','박정인에게',13000,'2014/05/08','주지말껄');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,14,'customer1','김서진에게',90000,'2014/10/12','에잇');
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL,14,'customer1','문석민에게',3000,'2014/12/03','아이스크림 값 갚음');


INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer1',300000,'2014/05/05','힘들게번돈 쓰기싫다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer1',20000,'2014/08/21','엄마가 주셨당 아껴써야지');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer1',50000,'2014/12/05','돈주었다 자주가야겠다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer1',450000,'2014/05/21','투잡 성공');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer1',50000,'2014/12/23','용돈받는날 헤헤헤헤헤');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer2',450000,'2014/05/21','투잡 성공');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer2',12000,'2014/11/23','알바비받았다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer2',1200000,'2013/05/21','힘들게 번돈 받았다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer2',50000,'2014/11/23',' 월급 보너스');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,4,'customer3',100000,'2014/06/21','저번달 이월된 십만원 야호');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,4,'customer3',450000,'2014/05/23','돈 아껴쓴 보람이 있네 ');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,4,'customer3',150000,'2014/12/11','보험비 받았다 아프다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,4,'customer3',10000,'2014/12/23',' 용돈 이월됬다 아껴썻다');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,5,'customer4',450000,'2014/05/21','보험비');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,5,'customer4',50000,'2014/11/23','이번에도 꽁돈 버는기분');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,4,'customer3',50000,'2014/12/02','꽁돈 들어왔네');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer4',450000,'2014/05/21','쓰리잡');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer4',1500000,'2014/12/15','월급받음');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer6',1500000,'2014/12/23','월급받음');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer7',450000,'2014/04/21','부수입 짭짤하네');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,2,'customer8',500000,'2014/12/23','주수입 이것밖에 안되네');
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL,3,'customer7',450000,'2014/05/21','쓰리잡 성공');


INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master1', '펀드매니저',12,'5년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master2', '펀드매니저',12,'5년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master3', '자산관리사',7,'2년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master4', '펀드매니저',2,'1년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master5', '펀드매니저',5,'1년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master6', '펀드매니저',2,'2년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master7', '펀드매니저',9,'5년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master8', '펀드매니저',12,'3년');
INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master9', '펀드매니저',12,'6년');
--INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master1', '자산관리사2개',10,'2년');
--INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'eclise', '펀드매니저',12,'5년');

--INSERT INTO MANAGER_INFO VALUES(MANAGER_INFO_SQ.NEXTVAL,'master2', '펀드매니저',12,'5년');
--SELECT m.member_name, m.member_birthday, m.member_sex, mi.manager_license, mi.manage_member_num, mi.career_date from member m, manager_info mi where mi.manager_info_num=2 and m.member_id=mi.member_id;   

select s.spendlist_name, count(spendlist_num) from spend group by spendlist_num;
commit;