<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="css/login-page.css">
<script defer src="login-page.js"></script>
</head>

<body>
	<main id="main-holder">
		<h1 id="login-header">비밀번호 찾기</h1>

		<div id="login-error-msg-holder">
			<p id="login-error-msg">
				Invalid username <span id="error-msg-second-line">and/or
					password</span>
			</p>
		</div>
		<form id="login-form" action="/login" method="post">
			<input type="text" name="memberId" id="memberId-field" class="login-form-field" placeholder="아이디"> 
			<input type="text" name="name" id="name-field" class="login-form-field" placeholder="이름"> 
			<input type="text" name="mobile" id="mobile-field" class="login-form-field" placeholder="전화번호"> 
			<input type="submit" value="비밀번호 찾기" id="login-form-submit" class="login-form-field">
		</form>
	</main>
</body>
</html>