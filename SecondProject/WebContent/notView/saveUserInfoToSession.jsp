<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>saveUserInfoToSession.jsp</title>
</head>
<body>
	<c:choose>
		<c:when test="${requestScope.userInfo == null}">
			<script type="text/javascript">
				alert("로그인 실패");
				history.go(-1);
			</script>
		</c:when>
		<c:otherwise>
			<c:set var="logInUser" value="${requestScope.userInfo}" scope="session"></c:set>
			<c:redirect url="main.jsp"></c:redirect>
		</c:otherwise>
	</c:choose>
</body>
</html>