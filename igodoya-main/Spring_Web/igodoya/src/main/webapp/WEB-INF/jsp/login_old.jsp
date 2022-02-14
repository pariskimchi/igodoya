<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="css/login-page.css">
<script defer src="login-page.js"></script>
</head>

<body>
	<main id="main-holder">
		<h1 id="login-header">Login</h1>

		<div id="login-error-msg-holder">
			<p id="login-error-msg">
				Invalid username <span id="error-msg-second-line">and/or
					password</span>
			</p>
		</div>

		<form id="login-form" action="/login" method="post">
			<input type="text" name="memberId" id="username-field" class="login-form-field" placeholder="아이디"> 
			<input type="password" name="memberPw" id="password-field" class="login-form-field" placeholder="비밀번호"> 
			<input type="submit" value="Login" id="login-form-submit" class="login-form-field">
			<a href="/findMemberIdForm">아이디 찾기</a>
			<a href="/findMemberPwForm">비밀번호 찾기</a>
		</form>
	</main>
</body>
</html>