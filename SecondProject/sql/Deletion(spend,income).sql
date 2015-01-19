--------------------------------지출 테이블--------------------------------
delete spend where member_id={id} and spend_num={seq}

--------------------------------수입 테이블--------------------------------
delete income where member_id={id} and income_num={seq}




---------------------------------회원탈퇴----------------------------------
delete from member where id=#{MEMBER_ID}
	
	
----------------------------------회원 수정-------------------------------
UPDATE MEMBER SET  password=#{MEMBER_PW} WHERE id=#{MEMBER_ID}


---------------------------------지출 수정--------------------------------------

update spend set spendDate=#{SPEND_DATE}, spendPrice=#{SPEND_EXPENSE}
						, spendLocation=#{SPEND_LOCATION}, memo=#{SPEND_MEMO} where id=#{MEMBER_ID}


-------------------------------수입 수정----------------------------------------
update spend set incomeDate=#{INCOME_DATE}, incomePrice=#{INCOME_EXPENSE}
						, memo=#{INCOME_MEMO} where id=#{MEMBER_ID}	
						
-------------------------------------------------------------------------------------------------					
						
						
						
						
						
						
						
						
						
						