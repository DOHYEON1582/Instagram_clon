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
		console.log($('.custom_modal').css('display'));
		var mouseEvent = true;
		

		$('.sideBarList').mouseover(function(){
			if(mouseEvent){
				$(this).css('backgroundColor','#f7f7f7');
			}
		});
		
		$('.sideBarList').mouseout(function(){
			if(mouseEvent){
		  		$(this).css("backgroundColor","#fff");
			}
		});

		// 게시글 버튼
		$('#createBoard').click(function(e){
			mouseEvent = false;
			$('.sideBarList').css("backgroundColor","rgba(0, 0, 0, 0)");
			e.preventDefault();
			console.log("클릭됨");
			$('.custom_modal').css('display','block');
		});
		
		//모달창 닫기
		function modalClose(){
			$('.custom_modal').css('display','none');
			$('#imgFile').attr('src',"");
			$('#btnFile').css('display','');
			$('#imgFile').css('display','none');
			mouseEvent = true;
		}
		
		$('#modalClose').click(function(){
			$('.custom_closeModal').css('display','block');
		});
		
		$('#closeCheck_true').click(function(){
			modalClose();
		});
		

		
		// 사진 업로드 버튼
		$('#btnFile').click(function(){
			$('#imgFileInput').click();
		});
		
		// 사진 미리보기 스크립트
		$('#imgFileInput').change(function(){
			
			const fileDOM = document.querySelector('#imgFileInput');
			// 업로드 사진의 URL을 가져와서 img src 위치에 삽입
			const imageSrc = URL.createObjectURL(fileDOM.files[0]);
			//console.log(imageSrc);
			$('#imgFile').attr('src',imageSrc);
			$('#btnFile').css('display','none');
			$('#imgFile').css('display','block');
			
		});
		
		// 텍스트 길이 체크
		$('#content_textarea').keyup(function(){
			var txt = $('#content_textarea').val();
			
			$('#txt_length').text(0+txt.length);
		});
		
		// 위치태그 자동완성
		
		$('#locationTxt').keypress(function(){
			$("#locationList").empty();
			
			$.ajax({
				url : '/main/locationList/'+$('#locationTxt').val(),
				type : "POST",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					console.log(data);
					if(data != null){
						
						$(data).each(function(i,item){
							$("#locationList").append("<option>"+item.location+"</option>");
						});
					}
				}
			});
		});
		
		//게시물 작성
		$('#modalWrite').click(function(){
			var PostVO = {
					/* "userid" : ,
					"content" : ,
					"location" :  */
			};
			
			
		});
		
		
		
		
	});//document.ready


</script>

<!-- 모달창 -->
<!-- 게시물 작성 모달 -->
<div class="custom_modal">
	<div class="modal">
	<a><img id="modalClose" src="https://cdn-icons-png.flaticon.com/128/151/151882.png"></a>
     	<div class="modal_body">
     		<div id="modalHeader">
     			새 게시물 만들기
     			<a href="" id="modalWrite">공유하기</a>
     		</div>
     		
			
     		<div id="modalImg">
     			<img id="imgFile"  src="">
     			<button id="btnFile">파일 업로드</button>
     			<input id="imgFileInput" type="file" name="imgFile">
     		</div>
     		
     		<div id="modalContent">
     			<div id="modalContent1"><input style="width: 100%; height: 45px; border: none; outline: none; font-size: 17px;" id="userid" type="text" name="userid" value="아이디"></div>
     			<div id="modalContent2"><textarea id="content_textarea" rows="" cols="" placeholder="문구를 입력하세요.."></textarea></div>
     			<div id="modalContent3"><label id="txt_length">0</label>/2000</div>
     			<div id="modalContent4"><input list="locationList" style="width: 100%; height: 45px; border: none; outline: none; font-size: 17px;" id="locationTxt" type="text" name="location" placeholder="위치추가"> </div>
     									<datalist id="locationList"></datalist>
     			<div id="modalContent5">접근성</div>
     			<div id="modalContent6">고급설정</div>
     		</div>
     	
     	</div>
	</div>
</div>


<!-- 게시물 작성 취소 모달 -->
<div class="custom_closeModal">
	<div class="closeCheck">
		<div class="closeCheck_body">
			<div id="closeCheck_body1">게시물을 삭제 하시겠어요?</div>
			<a id="closeCheck_true" href=""><div id="closeCheck_body2">삭제</div></a>
			<a id="closeCheck_true" href=""><div id="closeCheck_body3">취소</div></a>
		</div>
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