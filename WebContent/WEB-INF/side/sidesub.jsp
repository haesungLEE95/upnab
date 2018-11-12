<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 왼쪽사이드 메뉴 --> 
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#ls	{
	border: 1px solid black;
	padding: 10px;
	height: 100%;
	background-color: navy;
}
.home {
	border: 1px solid white;
	border-width: 5px;
	padding: 50px;
	height: 100%;
	font-size: 40px;
	background-color: white;
	margin-bottom: 10px;
}
.photo {
	border: 1px solid white;
	border-width: 5px;
	padding: 50px;
	height: 100%;
	font-size: 40px;
	background-color: white;
	margin-bottom: 10px;
}
.video {
	border: 1px solid white;
	border-width: 5px;
	padding: 50px;
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
	<!-- ls=leftSibe -->
		<nav class="home">
		<!-- home=mainpagelink -->
			<div align="center">
				<a href="list.bo">home</a>
			</div>
		</nav>
		<nav >
			<div class="photo" align="center">
				<a href="listPo.bo">photo</a>
			</div>
		</nav>
		<nav >
			<div class="video" align="center">
				<a href="listMo.bo">video</a>
			</div>
		</nav>
	</div>
</body>
</html>