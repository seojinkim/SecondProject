--------------------------------추가--------------------------------

--------------------------------지출 테이블--------------------------------
INSERT INTO SPEND VALUES(SPEND_SQ.NEXTVAL, #{spendlist_num}, #{spend_location}, #{spend_expense}, #{spend_date}, #{spend_memo}) WHERE id=#{member_id}


--------------------------------수입 테이블--------------------------------
INSERT INTO INCOME VALUES(INCOME_SQ.NEXTVAL, #{incomelist_num}, #{spend_location}, #{spend_expense}, #{spend_date}, #{spend_memo}) WHERE id=#{member_id}


--------------------------------회원 테이블------------------------------
INSERT INTO MEMBER VALUES(#{member_id}, #{member_pw}, #{member_name}, #{member_birthday}, #{member_sex}, #{grade_num})





