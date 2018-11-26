<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 왼쪽사이드 메뉴 --> 
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#ls	{
	margin-top :50px;
}
.home {
	/* border: 1px solid gray; */
	/* border-width: 5px; */
/* 	padding: 50px; */
	height: 100%;
	font-size: 40px;
	background-color: white;
	
/* 	margin-bottom: 10px; */
}
.photo {
	/* border: 1px solid gray; */
	/* border-width: 5px; */
/* 	padding: 50px; */
	height: 100%;
	font-size: 40px;
	background-color: white;
	/* margin-bottom: 10px; */
}
.video {
	/* border: 1px solid gray; */
	/* border-width: 5px; */
	/* padding: 50px; */
	height: 100%;
	font-size: 40px;
	background-color: white;
}


</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div id="ls"> 

		<nav class="home">
		
			<div align="center">
				<a href="list.bo"><img alt="" src="images/homeicon.png" height="100px"></a>
			</div>
		</nav>
		<nav >
			<div class="photo" align="center">
				<a href="listPo.bo"><img alt="" src="images/photoicon.png" height="100px"></a>
			</div>
		</nav>
		<nav >
			<div class="video" align="center">
				<a href="listMo.bo"><img alt="" src="images/videoicon.png" height="100px"></a>
			</div>
		</nav>
	</div> 
</body>
</html>