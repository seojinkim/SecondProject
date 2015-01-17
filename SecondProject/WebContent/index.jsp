<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>KODB 가계부</title>
</head>
<body>
	<h2>KODB 가계부</h2>
	<form action="controller" method="post">
		<p>
			아이디 : <input type="text" name="id"> 비밀번호 : <input type="password" name="pw">
		</p>
		<p>
			<button type="submit" name="command" value="login">로그인</button>
			<button type="submit" name="command" value="join">회원가입</button>
		</p>
	</form>
</body>
</html>