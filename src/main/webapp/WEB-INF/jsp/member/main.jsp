<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../part/head.jspf"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="style.css">
<style>
	body{
    margin: 0;
    padding: 0;
    min-height: 100vh;
    background-image:url(/img_box/black3.jpg);
    display: flex;
    justify-content: center;
    align-items: center;
  
    
	}
	
	.container{
	    width: 1000px;
	    position: relative;
	    display: flex;
	    justify-content: space-between;
	}
	
	.container .card{
	    position: relative;
	    cursor: pointer;
	}
	
	.container .card .face{
	    width: 300px;
	    height: 200px;
	    transition: 0.5s;
	}
	
	.container .card .face.face1{
	    position: relative;
	    background: #333;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    z-index: 1;
	    transform: translateY(100px);
	}
	
	.container .card:hover .face.face1{
	    background: #ff0057;
	    transform: translateY(0);
	}
	
	.container .card .face.face1 .content{
	    opacity: 0.2;
	    transition: 0.5s;
	}
	
	.container .card:hover .face.face1 .content{
	    opacity: 1;
	}
	
	.container .card .face.face1 .content img{
	    max-width: 100px;
	}
	
	.container .card .face.face1 .content h3{
	    margin: 10px 0 0;
	    padding: 0;
	    color: #fff;
	    text-align: center;
	    font-size: 1.5em;
	}
	
	.container .card .face.face2{
	    position: relative;
	    background: #fff;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    padding: 20px;
	    box-sizing: border-box;
	    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8);
	    transform: translateY(-100px);
	}
	
	.container .card:hover .face.face2{
	    transform: translateY(0);
	}
	
	.container .card .face.face2 .content p{
	    margin: 0;
	    padding: 0;
	}
	
	.container .card .face.face2 .content a{
	    margin: 15px 0 0;
	    display:  inline-block;
	    text-decoration: none;
	    font-weight: 900;
	    color: #333;
	    padding: 5px;
	    border: 1px solid #333;
	}
	
	.container .card .face.face2 .content a:hover{
	    background: #333;
	    color: #fff;
	}
	.container .card:hover .face.face1 .content img{
		transform:scale(2); 
		-o-transform:scale(2); 
		-moz-transform:scale(2); 
		-webkit-transform:scale(3);
		transition: transform .35s;
		-o-transition: transform .35s;
		-moz-transition: transform .35s;  
 		-webkit-transition: transform .35s;

	}
	.container .card:hover .face.face1 .content h3{
		display:inline-block;
		position: absolute;
		top:-30%;
		right:40%;
		color:white;
	}

	.title-main a{
		text-decoration: none;
		color:white;
		
	}
	.title-main {
		display:inline-block;
		padding-left: 10px;
		text-decoration:none;
		color:white;
		position: absolute;
		left:0;
		top:21px;
		margin:0;
	}
	

</style>
<script>
	var 준비중입니다 = function() {
		alert('아직 준비중인 페이지 입니다');
	};

	$('div.content').click(준비중입니다);
	$('div.face').click(준비중입니다);
	$('img').click(준비중입니다);
</script>
	
    <div class="container">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="/img_box/black.jpg">
                    <h3>공략법</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>던전, 레이드, pvp 의 대한 공략.</p>
                        <a href="#">바로가기</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="/img_box/black1.jpg">
                    <h3>게시판</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>유저들의 케뮤니케이션 장소.</p>
                        <a href="#">바로가기</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="/img_box/black2.jpg">
                    <h3>업데이트</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>한듯 안한듯 모르는 없데이트.</p>
                        <a href="#">바로가기</a>
                </div>
            </div>
        </div>
    </div>
<%@ include file="../part/foot.jspf"%>