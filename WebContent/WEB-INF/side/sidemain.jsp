<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 오른쪽 사이드메뉴 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#rs {
	margin
	border: 1px solid black;
	padding: 10px;

}
#rs ul li {
	list-style: none;
}
#rsm {
	border: 1px solid black;
	padding: 10px;
	height: 100%
}
#rsm ul li {
	list-style: none;
	font-size: 20px;
}
.hr {
	border: 1px solid gray;
}
#rl {
	border-left: 1px solid gray;
}
.foot {
	margin-top: 200px;	
	margin-bottom: 0px;
}
.footer {
		border: 1px solid black;
		padding: 5px;
		margin-left: 10px;
		margin-right: 10px;
		font-size: 20px;
}
/* #paper {
		border-color:green;
		border-width:thick;
		border-style:solid;
}  */
</style>
<script type="text/javascript">
 	window.onload=function() {
	var a4 = document.getElementById("paper");
	var ctx = a4.getContext("2d");
 	var img=new Image();
	img.onload=function() {
		ctx.drawImage(img,10,10,180,180);
	};
	img.src="prof_imgs/${member_id}prof";
	ctx.beginPath();
	ctx.strokeStyle="blue";
	ctx.lineWidth=3;
	ctx.arc(100,100,100,0,Math.PI*2, true);
	ctx.stroke();
	ctx.clip();
}
</script>
</head>
<body >

<div id="rs" >
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
		<div class="hr" />
		<nav id="rsm">
			<div align="center">
			<ul>
				<li><a href="insertForm.bo">게시물 올리기</a></li><p>
				<li><a href="listMy.bo">공유 목록</a></li><p>
				<li><a href="listJim.bo">나중에 볼 게시물</a></li><p>
				<li><a href="">내가 본 게시물</a></li><p>
			</ul>
			</div>
			<ul class="foot">
				<div align="center" >
				<a href="list.sp"  class="footer">고객센터</a>
				</div>
			</ul>
		</nav>
	</div>
</body>
</html>