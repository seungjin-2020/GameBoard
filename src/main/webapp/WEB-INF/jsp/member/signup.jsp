<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="signup" />
<%@ include file="../part/head.jspf"%>
<title>${pageName}</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<style>
	
	.menu > ul > a{
		text-decoration: none;
		color:black;

	}
	.menu > ul:hover > a{
		color:red;
		text-decoration: underline;
	}
	body{
		background-image: url("/img_box/black.jpg");
		margin:0;
	}
	.box {
		position: absolute;
		left:50%;
		margin:0px auto;
		transform:translatex(-90%);
		top:30%;
		
	}
	.colorbox{
		width:400px;
		background-color:white;
		height: 500px;
		position: absolute;
		left:50%;
		transform:translatex(-50%);
		top:20%;
		border-radius: 10%;
		opacity: 0.5;
	}

</style>
<script>
	function makeTestData(){
		var form = document.joinForm;

		form.loginID.value = 'user1';
		form.loginPW.value = 'user1';
		form.loginPWcheck.value = 'user1';
		form.loginEmail.value = 'user1@test.com';
		form.loginName.value = 'user1';
		form.loginNickName.value = 'user1';		
	}
	function submitLoginForm(form){
		form.loginID.value = form.loginID.value.trim();

		if( form.loginID.value.length == 0){
			alert('로그인 아이디를 입력해 주세요.');
			form.loginID.focus();
			return false;
		}
		form.loginPW.value = form.loginPW.value.trim();

		if( form.loginPW.value.length == 0){
			alert('로그인 Password를 입력해 주세요.');
			form.loginPW.focus();
			return false;
		}

		form.loginPWcheck.value = form.loginPWcheck.value.trim();

		if( form.loginPWcheck.value != form.loginPW.value){
			alert('Password가 Passwordcheck 와 일치하지 않습니다.');
			form.loginPWcheck.focus();
			return false;
		}
		
		form.loginEmail.value = form.loginEmail.value.trim();

		if( form.loginEmail.value.length == 0){
			alert('Email을 입력해 주세요.');
			form.loginEmail.focus();
			return false;
		}
		form.loginName.value = form.loginName.value.trim();

		if( form.loginName.value.length == 0){
			alert('이름을 입력해 주세요.');
			form.loginName.focus();
			return false;
		}
		form.loginNickName.value = form.loginNickName.value.trim();

		if( form.loginNickName.value.length == 0){
			alert('닉네임을 입력해 주세요.');
			form.loginNickName.focus();
			return false;
		}

		form.submit();
	}
</script>

	<div class="colorbox"></div>
	<div class="box">
		<div class="con">
			<button onclick="makeTestData();">테스트 채우기</button>
		</div>
		<div class="join-box con">
			<form name="joinForm" onsubmit="submitLoginForm(this); return false;" action="./dojoin" method="POST">
				<div>
					<span>ID</span>
					<div><input type="text" autocomplete="off" name="loginID" autofocus="autofocus" required="required" maxlength="15"/></div>
				</div>
				<div>
					<span>Password</span>
					<div><input type="password" autocomplete="off" name="loginPW" required="required" maxlength="20"/></div>
				</div>
				<div>
					<span>PWcheck</span>
					<div><input type="password" autocomplete="off" name="loginPWcheck"required="required" maxlength="20"/></div>
				</div>
				<div>
					<span>Email</span>
					<div><input type="email" autocomplete="off" name="loginEmail" required="required" maxlength="40"/></div>
				</div>
				<div>
					<span>name</span>
					<div><input type="text" autocomplete="off" name="loginName" required="required" maxlength="10"/></div>
				</div>
				<div>
					<span>nick name</span>
					<div><input type="text" autocomplete="off" name="loginNickName" required="required" maxlength="20"/></div>
				</div>
				<div>
					<span>회원가입</span>
					<div><input type="submit" value="회원가입"/></div>
				</div>
			</form>
		</div>
	</div>
<%@ include file="../part/foot.jspf"%>