<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>KODB �����</title>
</head>
<body>
	<h2>KODB �����</h2>
	<form action="controller" method="post">
		<p>
			���̵� : <input type="text" name="id"> ��й�ȣ : <input type="password" name="pw">
		</p>
		<p>
			<button type="submit" name="command" value="login">�α���</button>
			<button type="submit" name="command" value="join">ȸ������</button>
		</p>
	</form>
</body>
</html>