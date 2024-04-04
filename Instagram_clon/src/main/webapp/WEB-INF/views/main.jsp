<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="/resources/ProjectCSS.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		
		// 사이드바 이벤트
		$('.sideBarList').mouseover(function(){
			$(this).css('backgroundColor','#f7f7f7');
		});
		$('.sideBarList').mouseout(function(){
		      $(this).css("backgroundColor","#fff");
		   });
		
		// 게시글 버튼
		$('#createBoard').click(function(e){
			e.preventDefault();
			console.log("클릭됨");
			$('.custom_modal').css('display','block');
		});
		
		
		
		
	});//document.ready


</script>

<!-- 모달창 -->
<div class="custom_modal">
	<div class="modal">
     	<div class="modal_body">Modal</div>
	</div>
</div>


<!-- 사이드바 -->

<aside class="side-bar">
	<div>
		<img id="mainImg" src="https://i.namu.wiki/i/S1nzKKi-2NmHfxHj0W4tqANaSbruniSBH6MKNKI407WrT9f6sRHPiSl232ypbpzM47rxMecB_EKzAi5DdFkB4l3VwyK1UeG9BxtaNFU1XQCb05VLOGOWaiREmwCgNsb7Rrdpje7WFIvEagsON0FfjQ.svg">
	</div>
<div id="sideBar">
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/12280/12280602.png">
		<div class="sideBarList">홈</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/2319/2319177.png">
		<div class="sideBarList">검색</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/2948/2948031.png">
		<div class="sideBarList">탐색 팁</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/7748/7748684.png">
		<div class="sideBarList">릴스</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/14562/14562497.png">
		<div class="sideBarList">메세지</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/1077/1077035.png">
		<div class="sideBarList">알림</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="" id="createBoard">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/6537/6537820.png">
		<div class="sideBarList">만들기</div>
	</a>
</div>
<div style="height: 60px;">
	<a class="sideBtn" href="">
		<img class="sideIcon" src="https://cdn-icons-png.flaticon.com/128/12280/12280602.png">
		<div class="sideBarList">프로필</div>
	</a>
</div>
</div>	


</aside>

<div id="main">
	<div id="storyDiv">
		<h1>스토리</h1>
	</div>
	<div id="content">
		<div id="post">
				<h3>사진</h3>
		</div>
		
		<div>
			<div id="">
				<h3>좋아요</h3>
			</div>
			<div id="">
				<h3>좋아요개수</h3>
			</div>
			<div id="">
				<h3>본문글</h3>
			</div>
			<div id="">
				<h3>댓글 몇개 모두 보기</h3>
			</div>
			<div id="">
				<h3>댓글 미리보기 </h3>
			</div>
			<div id="">
				<h3>댓글달기</h3>
			</div>
		</div>
	
	</div>
	
	
</div>




</body>
</html>