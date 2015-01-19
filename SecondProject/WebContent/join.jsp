<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Money Book</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<form class="form-horizontal" action="controller" method="post">
					<h2 class="form-signin-heading">Please join us</h2>
					<div class="form-group">
						<label for="inputEmail" class="col-sm-2 control-label">아이디</label>
						<div class="col-sm-8">
							<input type="text" id="inputEmail" name="id" class="form-control" placeholder="아이디" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
						<div class="col-sm-8">
							<input type="password" id="inputPassword" name="pw" class="form-control" placeholder="비밀번호" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">이름</label>
						<div class="col-sm-8">
							<input type="text" id="inputName" name="name" class="form-control" placeholder="이름" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputBirthday" class="col-sm-2 control-label">생년월일</label>
						<div class="col-sm-8">
							<input type="date" id="inputBirthday" name="birthday" class="form-control" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputSex" class="col-sm-2 control-label">성별</label> 
						<div class="col-sm-8 btn-group" data-toggle="buttons">					
							<label class="btn btn-primary" for="inputSex">
								<input type="radio" name="inputSex" id="inputSex1" value="M" autocomplete="off"> 남자
							</label>
							<label class="btn btn-primary" for="inputSex">
								<input type="radio" name="inputSex" id="inputSex2" value="F" autocomplete="off"> 여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputGrade" class="col-sm-2 control-label">회원/매니저</label> 
					<div class="col-sm-8 btn-group" data-toggle="buttons">	
							<label class="btn btn-primary active" for="inputGrade"> 
								<input type="radio" name="inputGrade" id="inputGrade1" value="2" autocomplete="off" checked="checked"> 회원
							</label>
							<label class="btn btn-primary" for="inputGrade"> 
							
								<input type="radio" name="inputGrade" id="inputGrade2" value="1" autocomplete="off"> 매니저
							</label>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-7">
							<button class="btn btn-primary btn-lg btn-block" name="command" value="join">회원가입</button>
							<span class="pull-right"><a href="./">뒤로</a></span>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- /container -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>