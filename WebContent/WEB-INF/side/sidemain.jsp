<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 오른쪽 사이드메뉴 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="js/css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/js/bootstrap.min.js"></script>
<style type="text/css">
#rs {
	border-top-left-radius : 50px;
	border-top-right-radius : 50px;
	margin-top :50px; 
	margin-left: 30px;
	padding: 10px;
	background-color: #E6E6E6;
}

#rs ul li {
	list-style: none;
}

#rsm {
	padding: 10px;
	height: 100%
}

#rsm ul li {
	list-style: none;
	font-size: 20px;
}

#rl {
	border-left: 1px solid gray;
}

.foot {
	margin-top: 400px;
	margin-bottom: 0px;
}
</style>
<script type="text/javascript">
	window.onload = function() {
		var a4 = document.getElementById("paper");
		var ctx = a4.getContext("2d");
		var img = new Image();
		img.onload = function() {
			ctx.drawImage(img, 0, 0, 200, 200);
		};
		if ("${member.member_img}" == 0
				|| "${member.member_img}" == 'profile_image.jpg')
			img.src = "prof_imgs/profile_image.jpg";
		else
			img.src = "prof_imgs/${member_id}prof";

		ctx.beginPath();
		/* 	ctx.strokeStyle="blue";
		 ctx.lineWidth=3; */
		ctx.arc(100, 100, 100, 0, Math.PI * 2, true);
		/* 	ctx.stroke(); */
		ctx.clip();
	}
</script>
</head>
<body>
	<!-- <div class="container"> -->
		<div id="rs">
			<!-- rs=rightsibe -->
			<nav id="ui">
				<div align="center">
					<!-- onload="drawRect()" -->
					<canvas id="paper" width="200" height="200" />
				</div>
				<div align="right">
					<button type="button" onclick="location.href='main.do' ">설정</button>
					<button type="button" onclick="location.href='logout.do' ">로그아웃</button>
				</div>
			</nav>
			<hr color="black">
			<nav id="rsm">
				<div align="center">
					<ul>
						<li><a href="insertForm.bo" class="btn btn-primary btn-lg" role="button">게시물 올리기</a></li>
						<p>
						<li><a href="listMy.bo" class="btn btn-primary btn-lg" role="button">공유 목록</a></li>
						<p>
						<li><a href="listJim.bo" class="btn btn-primary btn-lg" role="button">나중에 볼 게시물</a></li>
						<p>
						<li><a href="">내가 본 게시물</a></li>
						<p>
					</ul>
				</div>
				<ul class="foot">
					<div align="center">
						<a href="list.sp" class="btn btn-primary btn-lg" role="button" >고객센터</a>
					</div>
				</ul>
			</nav>
		</div>
	<!-- </div> -->
</body>
</html>