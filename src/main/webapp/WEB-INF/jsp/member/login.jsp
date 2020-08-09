<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageName" value="Login" />
<%@ include file="../part/head.jspf"%>

<style>
	body{
		background-image: url("/img_box/black3.jpg");
		margin:0;
	}
	.colorbox {
		text-align: center;
		padding:10px;
	}
	.box{
		background-color:#333;
		position: absolute;
		top:50%;
		left:50%;
		transform:translate(-50%, -50%);
		border-radius: 10%;
		width: 300px;
		height: 300px;
		opacity: 0.5;
	}
	.colorbox{
		padding-top: 10px;
		color:white;
	}
	
	
</style>

	<form action="./dologin" method="POST">
		<div class="box">
			<div class="colorbox">
				<span>ID</span>
				<div><input type="text" autocomplete="off" name="loginId" autofocus="autofocus" maxlength="20" required="required"/></div>
				<span>Password</span>
				<div><input type="password" autocomplete="off" name="loginPw" maxlength="20" required="required"/></div>
				<div><input name="login" type="submit" value="로그인" style="margin-top:40px"/></div>
			</div>
		</div>
	</form>
<%@ include file="../part/foot.jspf"%>