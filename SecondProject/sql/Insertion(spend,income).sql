--------------------------------지출 테이블--------------------------------
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL, #{spendNum}, #{id}, #{spendLocation}, #{spendPrice}, #{spendDate},#{memo})

--------------------------------수입 테이블--------------------------------
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL, #{incomeNume}, #{id}, #{incomePrice}, #{incomeDate}, #{memo})
