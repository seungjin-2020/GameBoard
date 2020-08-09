<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
</head>
<style>
	button {
	    display:block;
	    margin-bottom:50px;
	    font-size:3rem;
	    transition:font-size 1s;
	}
	
	body {
	    transition:background-color 1s;
	}
</style>
<script type="text/javascript">
	
	
	//문제 : 엘리먼트를 3개 만들고 각각을 클릭하면 서로 다른 디자인 변화가 일어나도록 해주세요.
	$(document).ready(function(){
	  $(document).on("click","div", function(){
	    $("body").css('background-color','red');
	    $('button').css('font-size', '3rem');
	  });  
	});
	$(document).ready(function(){
	  $(document).on("click","button:nth-of-type(1)", function(){
		$('button').css('font-size', '3rem');
		$('button:nth-of-type(1)').css('font-size', '7rem');
	    $("body").css('background-color','green');
	  });  
	});
	$(document).ready(function(){
	  $(document).on("click","button:nth-of-type(2)", function(){
		$('button').css('font-size', '3rem');
		$('button:nth-of-type(2)').css('font-size', '7rem');
	    $("body").css('background-color','blue');
	  });  
	});
	$(document).ready(function(){
	  $(document).on("click","button:nth-of-type(3)", function(){
		$('button').css('font-size', '3rem');
		$('button:nth-of-type(3)').css('font-size', '7rem');
	    $("body").css('background-color','yellow');
	  });  
	});

</script>
<body>
	<div>ssss</div>
	<button>변환</button>
	<button>변환</button>
	<button>변환</button>
		
</body>
</html>