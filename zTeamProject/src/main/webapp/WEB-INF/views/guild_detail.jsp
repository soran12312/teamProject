<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0063)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>품-i</title>
<link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon" />
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/style.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
<link rel="stylesheet" href="resources/css/classList/featherlight.min.css">
<!--[if lte IE 8]><script src="http://sample.paged.kr/purewhite/js/html5.js"></script><![endif]-->
<script>var g5_url = "http://sample.paged.kr/purewhite"; var g5_bbs_url = "http://sample.paged.kr/purewhite/bbs"; var g5_is_member = ""; var g5_is_admin = ""; var g5_is_mobile = ""; var g5_bo_table = "gallery"; var g5_sca = ""; var g5_editor = "smarteditor2"; var g5_cookie_domain = "";</script>
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/js/jquery.menu.min.js"></script>
<script src="resources/js/common.js"></script>
<script src="resources/js/WEBsiting.js"></script>
<script src="resources/js/wrest.js"></script>
<script src="resources/js/placeholders.min.js"></script>
<script src="resources/js/jquery.shuffleLetters.min.js"></script>
<script src="resources/js/featherlight.min.js"></script>
<script src="https://kit.fontawesome.com/d3610539ab.js" crossorigin="anonymous"></script>
<script type="text/javascript">
$(function(){
	if(${sessionScope.email eq map.email}){
		$("#guild_delete").click(function(){
			
			if(confirm("정말 삭제하시겠습니까?")){
				alert("삭제되었습니다.");
				location.href = '/zTeamProject/guild_delete.do?guild_number='+${map.guild_number};
			}
		});
	} // end of if(로그인 한 사람과 글 작성자가 같은 사람이면 true)
	
		$("#guild_join").click(
			var param ={
						 "chatroom"			:"${map.email}"
						,"email"			:"${sessionScope.email}"
						,"guild_number"		:"${map.guild_number}"
						,"current_member"	:"${map.current_member}"
						,"max_member"		:"${map.max_member}"
						};	
			
			$.ajax({
				 type 		: 'post'
				,data 		: param
				,url 		: '/zTeamProject/guild_join.do'
				,success 	: function(result){;
									if(result==1){
										alert("─=≡Σ((( つ•̀ω•́)つ 채팅방으로 이동합니다!");
										window.open("https://chatting--pum-i.run.goorm.site/?chatroom="+${map.email},"_blank");
									}//END if
									else if(result==2){
										alert("관리자에게 문의하세요(T^T)");
										location.href ="/zTeamProject/main_view.do#support";
									}//END of else if
									else if(result==3){
										alert("정원초과입니다(T^T)");
										location.href = "/zTeamProject/guild_list.do?currentPage=1";
									}//END of else if
							}//END of success
				,error 		: function(err){alert(err);}
			});//END of ajax
		);//END of guild_join.click
		
});
</script>
</head>
<body style="">
<a id="topID"></a>
<!-- 상단 시작 { -->
<div id="hd" class="">
    <h1 id="hd_h1">모임 페이지</h1>

    <div id="skip_to_container"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery#ctWrap">본문 바로가기</a></div>

	<a id="snbOpen"><b><i class="fa fa-bars" aria-hidden="true"></i> <span class="sound_only">사이드메뉴 열기</span></b></a>

    <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
			<div id="logo">
				<a href="index.jsp"><img src="resources/images/classList/logo.png"></a>
			</div>
	            <ul id="gnb_1dul">
		            <li class="gnb_1dli" style="z-index:999">
	                    <a href="index.jsp" target="_self" class="gnb_1da">HOME<u></u></a>
	                </li>
	                <li class="gnb_1dli" style="z-index:997">
	                    <a href="/zTeamProject/class_list.do?currentPage=1" target="_self" class="gnb_1da">강좌<u></u></a>
	                </li>
	                <li class="gnb_1dli" style="z-index:998">
	                    <a href="/zTeamProject/guild_list.do?currentPage=1" target="_self" class="gnb_1da">커뮤니티<u></u></a>
	                </li>
	                <li class="gnb_1dli" style="z-index:996">
	                    <a href="/zTeamProject/review_list.do?currentPage=1" target="_self" class="gnb_1da">리뷰<u></u></a>
	                </li> 
	                <li class="gnb_1dli" style="z-index:996"> 
	                    <a href="/zTeamProject/mypage.do" target="_self" class="gnb_1da">마이페이지<u></u></a>
	                </li>
	                <li class="gnb_1dli" style="z-index:996">
                		<a data-scroll href="/zTeamProject/logout.do" target="_self" class="gnb_1da">로그아웃<u></u></a>
                	</li> 
	            </ul>
        </div>

		<p class="clb"></p>
    </nav>
</div>
<aside id="topSpacer"></aside>
<aside id="sideBarCover"></aside>
<!-- } 상단 끝 --><hr>


<div id="page_title" class="sbtImg" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="PURE WHITE &gt; 모임">커뮤니티</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">커뮤니티</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 커뮤니티 상세</span></span>
		</h2>
	</div>
</div>

<div id="ctWrap">

	<div id="container">

<script src="http://sample.paged.kr/purewhite/js/viewimageresize.js"></script>

<!-- 게시물 읽기 시작 { -->

<article id="bo_v" style="width:100%">
    <header>
        <h2 id="bo_v_title">
                        <span class="bo_v_tit">
            ${map.guild_name}</span>
        </h2>
    </header>

    <section id="bo_v_info">
        <span class="sound_only">좋아요</span><strong><i class="fa fa-eye" aria-hidden="true"></i> 좋아요 : ${map.guild_like}회</strong>
        <span class="sound_only">활동지역</span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 활동지역 : ${map.addr3}</strong>
        <span class="sound_only">개설자</span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 대장 : ${map.nickname}</strong>
        <span class="sound_only">최대인원</span><strong>&nbsp;//&nbsp;&nbsp;&nbsp;&nbsp;최대 신청가능 인원 : ${map.max_member}명</strong>
        <span class="sound_only">현재인원</span><strong>&nbsp;//&nbsp;&nbsp;&nbsp;&nbsp;현재 신청 인원 : ${map.current_member}명</strong>
    </section>
    

    <section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>

		
        <!-- 본문 내용 시작 { -->
        <div id="bo_v_con">${map.detail}</div>
                <!-- } 본문 내용 끝 -->

        

    </section>


    
    
    <!-- 게시물 상단 버튼 시작 { -->
    <div id="bo_v_top">        
        <ul class="bo_v_left"></ul>
        <ul class="bo_v_com">
           <!-- 좋아요 버튼 -->
           <li><a href="/zTeamProject/insertGuildLike.do?guild_number=${map.guild_number}&email=${sessionScope.email}" class="btn_b01"><i class="fa-regular fa-heart"></i> ${map.guild_like}</a></li>
           <c:if test="${sessionScope.email eq map.email}">
           <!-- 삭제하기 버튼 -->
           <li><a id="guild_delete" class="btn_b01 btn">삭제하기</a></li>
           </c:if>
           <c:if test="${sessionScope.email ne map.email}">
           <!-- 신고하기 버튼 -->
           <li><a href="/zTeamProject/main_view.do#support" class="btn_b01 btn"><i class="fa-solid fa-handcuffs"></i> 신고하기</a></li>
           </c:if>
           <!-- 모임 신청 버튼 -->
           <li><a id="guild_join" class="btn_b01 btn"><i class="fa-solid fa-person-circle-plus"></i> 모임가입</a></li>
           <!-- 목록 보기 버튼 -->
           <li><a href="/zTeamProject/guild_list.do?currentPage=1" class="btn_b01 btn"><i class="fa fa-list" aria-hidden="true"></i> 목록</a></li>
        </ul>

        
    </div>
    <!-- } 게시물 상단 버튼 끝 -->

    
<script>
// 글자수 제한
var char_min = parseInt(0); // 최소
var char_max = parseInt(0); // 최대
</script>
<!-- 댓글 시작 { -->
<hr class="dashHr">



</article>
<!-- } 게시판 읽기 끝 -->

<script>

function board_move(href)
{
    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
}
</script>

<script>
$(function() {
    $("a.view_image").click(function() {
        window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
        return false;
    });

    // 이미지 리사이즈
    $("#bo_v_atc").viewimageresize();

});

</script>
<!-- } 게시글 읽기 끝 -->

</div><!-- // #container 닫음 -->


</body>
</html>