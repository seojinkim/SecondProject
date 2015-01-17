<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<style type="text/css">
<!--

-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 가입</title>
</head>
<body>
	<center>
		<form action="controller" method="post">
			<table cellpadding="0" cellspacing="0" border="1">
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">이름</td>
					<td align="center" width="280"><input type="text" name="name"></td>
				</tr>
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">생년월일</td>
					<td align="center" width="280"><input type="date" name="date""></td>
				</tr>
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">아이디</td>
					<td align="center" width="280"><input type="text" name="id"></td>
				</tr>
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">비밀번호</td>
					<td align="center" width="280"><input type="password" name="password"></td>
				</tr>
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">비밀번호 확인</td>
					<td align="center" width="280"><input type="password" name="passwordCheck"></td>
				</tr>
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">전화번호</td>
					<td align="center" width="280"><input type="text" name="phone1" size="4" maxlength="3">-
					<input type="text" name="phone2" size="4" maxlength="4">-
					<input type="text" name="phone3" size="4" maxlength="4"></td>
				</tr>
				<tr height="30">
					<td align="center" bgcolor="#F4F4F4" width="150">성별</td>
					<td align="center" width="280">남자<input type="radio" name="gender" value="male"> 여자<input type="radio" name="gender" value="female">
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>