<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0063)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>강좌 상세 페이지</title>
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
</head>
<body style="">
<a id="topID"></a>
<!-- 상단 시작 { -->
<div id="hd" class="">
    <h1 id="hd_h1">갤러리 1 페이지</h1>

    <div id="skip_to_container"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery#ctWrap">본문 바로가기</a></div>

	<a id="snbOpen"><b><i class="fa fa-bars" aria-hidden="true"></i> <span class="sound_only">사이드메뉴 열기</span></b></a>

    <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
			<div id="logo">
				<a href="/zTeamProject/main_view.do"><img src="resources/images/classList/logo.png" alt="페이지디 홈페이지 템플릿 테마"></a>
			</div>
            <ul id="gnb_1dul">
                <li class="gnb_1dli" style="z-index:999">
                    <a href="/zTeamProject/main_view.do" target="_self" class="gnb_1da">HOME<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:998">
                    <a href="/zTeamProject/guild_list.do" target="_self" class="gnb_1da">커뮤니티<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:997">
                    <a href="/zTeamProject/class_list.do?currentPage=0" target="_self" class="gnb_1da">강좌<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:996">
                    <a href="/zTeamProject/review_list.do" target="_self" class="gnb_1da">리뷰<u></u></a>
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
	<div class="page_title_in" >
		<h2>
			<strong title="PURE WHITE &gt; 강좌">강좌</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">강좌</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 강좌상세</span></span>
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
            ${map.class_name}</span>
        </h2>
    </header>
    
    <section id="bo_v_info">
        <span class="sound_only">조회수</span><strong><i class="fa fa-eye" aria-hidden="true"></i> ${map.view_number}회</strong>
        <strong class="if_date"><span class="sound_only">작성일</span><i class="fa fa-clock-o" aria-hidden="true"></i> ${map.writing_date}</strong>
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
 	  		<li><strong class="if_date"><span class="sound_only">강좌기간</span><i class="fa fa-clock-o" aria-hidden="true"></i>기간 : ${map.start_date} ~ ${map.end_date} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
           <!-- 좋아요 버튼 -->
           <li><a href="/zTeamProject/insertLike.do?class_number=${map.class_number}&email=${sessionScope.email}" class="btn_b00 btn"><i class="fa-regular fa-heart"></i>${map.class_like}</a></li>
           <c:if test="${sessionScope.email eq map.email}">
           <!-- 삭제하기 버튼 -->
           <li><a href="classList.jsp" class="btn_b01 btn">삭제하기</a></li>
           </c:if>
           <c:if test="${sessionScope.email ne map.email}">
           <!-- 신고하기 버튼 -->
           <li><a href="classList.jsp" class="btn_b01 btn"><i class="fa-solid fa-handcuffs"></i> 신고하기</a></li>
           <!-- 강좌 신청 버튼 -->
           <li><a href="classList.jsp" class="btn_b01 btn"><i class="fa fa-inbox"></i> 강좌신청</a></li>
           <!-- 리뷰 쓰기 버튼 -->
           <li><a href="classList.jsp" class="btn_b01 btn">리뷰쓰기</a></li>
           </c:if>
           <!-- 목록 보기 버튼 -->
           <li><a href="/zTeamProject/class_list.do?currentPage=0" class="btn_b01 btn"><i class="fa fa-list" aria-hidden="true"></i> 목록</a></li>
        </ul>

        
    </div>
    <!-- } 게시물 상단 버튼 끝 -->
    
    <section id="bo_v_info">
        <h2>페이지 정보</h2>
        <c:if test="${not empty map.member_img_path}">
        <span class="sound_only">프로필사진</span> <strong><img src="${map.member_img_path}" height="100px"></strong>
        </c:if>
        <c:if test="${empty map.member_img_path}">
        <span class="sound_only">프로필사진</span> <strong><img src="http://localhost:8080/zTeamProject/resources/uploads/no_pic.jpg" height="100px"></strong>
        </c:if>
        <span class="sound_only">작성자</span> <strong><span class="sv_member">작성자 : ${map.nickname}</span><br/><textarea readonly="readonly">${map.introduce}</textarea></strong>
        
    </section>

    
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