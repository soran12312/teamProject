<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
<!DOCTYPE html>
<!-- saved from url=(0063)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>클래스 페이지 | 페이지디 홈페이지 템플릿 테마</title>
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/style.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
<!--==========FONT Awesome PRO 5==========-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro@4cac1a6/css/all.css" />
<!--[if lte IE 8]><script src="http://sample.paged.kr/purewhite/js/html5.js"></script><![endif]-->
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
   	
	$('#cate').change(function(){
		
		location.href = '/zTeamProject/cate_list.do?category_number='+$(this).val();
		
	});
	
	$('#searchbtn').click(function(){
		location.href = '/zTeamProject/search_class.do?option='+$('#sfl2').val()+'&keyword='+$('#stx').val();
	});
	
	
}); // end of $
</script>
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
				<a href="index.jsp"><img src="resources/images/classList/logo.png" alt="페이지디 홈페이지 템플릿 테마"></a>
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
                <li class="gnb_1dli" style="z-index:996"> 
                    <a href="/zTeamProject/mypage.do" target="_self" class="gnb_1da">마이페이지<u></u></a>
                </li>             
  				
            </ul>
        </div>

		<p class="clb"></p>
    </nav>
</div>
<aside id="topSpacer"></aside>
<aside id="sideBarCover"></aside>
<!-- } 상단 끝 --><hr>

<!-- 콘텐츠 시작 { -->

<div id="page_title" class="sbtImg subTopBg_04" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="강좌 페이지">강좌</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">강좌</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 강좌 게시판</span></span>
		</h2>
	</div>
</div>



<div id="ctWrap">

<div id="container">

<!-- 게시판 목록 시작 { -->
<div id="bo_gall" style="width:100%">


    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
  <div id="bo_btn_top">
        <div id="bo_list_total">
            
        <select name="cate" id="cate">
        	<option>카테고리</option>
            <option value="0">전체보기</option>
            <option value="1">요리</option>
            <option value="2">운동</option>
            <option value="3">공예</option>
            <option value="4">IT</option>
            <option value="5">게임</option>
            <option value="6">음악</option>
            <option value="7">교육</option>
            <option value="8">인테리어</option>
            <option value="9">기타</option>
        </select>
        </div>

            <ul class="btn_bo_user">
            	<li>
            		<a href="/zTeamProject/class_form.do" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a>
            	</li>
            </ul>
            </div>
    <!-- } 게시판 페이지 정보 및 버튼 끝 -->


    <!-- 게시판 카테고리 시작 { -->
        
    <!-- } 게시판 카테고리 끝 -->

    <form name="fboardlist" id="fboardlist" action="http://sample.paged.kr/purewhite/bbs/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="gallery">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sst" value="wr_num, wr_reply">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">


    <h2 class="sound_only">갤러리 목록</h2>
	

    <ul id="gall_ul" class="gall_row">
    <c:forEach var="map" items="${listMap}">
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only" name="class_number">${map.class_number}</span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="/zTeamProject/class_detail.do?class_number=${map.class_number}">
						<em class="iconPs bo_tit"></em>
						<i class="imgAr">
						<c:if test="${not empty map.path}">
						<img src="${map.path}">
						</c:if>
						<c:if test="${empty map.path}">
						<img src="http://localhost:8080/zTeamProject/resources/uploads/no_pic.jpg">
						</c:if>
						</i><em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i>      ${map.view_number}      <span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i>${map.writing_date}</span>
							<u><span class="sound_only">작성자 </span>${map.nickname}</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                       <a href="/zTeamProject/class_detail.do?class_number=${map.class_number}" class="bo_tit">${map.class_name}</a>
                    </div>
                </div>
            </div>
        </li>
      </c:forEach>          
            </ul>
    
    
    </form>
     
    <!-- 게시판 검색 시작 { -->
    <fieldset id="bo_sch">
        <legend>게시물 검색</legend>

        <form name="fsearch" method="post" action="/zTeamProject/search_class.do">
        <input type="hidden" name="bo_table" value="gallery">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sop" value="and">
        <select name="option" id="sfl2">
            <option value="m.nickname">작성자</option>
            <option value="c.class_name">제목</option>
            <option value="h.class_hashtag">해쉬 태그</option>
        </select>
        <input type="text" name="keyword" id="stx" class="sch_input" size="25" maxlength="20" placeholder="검색어를 입력해주세요">
        <button type="button" value="검색" class="sch_btn" id="searchbtn"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
        </form>
        

    </fieldset>
    
    
<nav class="pg_wrap">
    <span class="pg"><a href="/zTeamProject/class_list.do?currentPage=0" class="pg_page">&#60;</a>
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
    <c:if test="${currentPage eq i}">
	    <span class="sound_only">열린</span><strong class="pg_current">${i}</strong><span class="sound_only">페이지</span>
	</c:if>
	<c:if test="${currentPage ne i}">
		<a href="/zTeamProject/class_list.do?currentPage=${i}" class="pg_page">${i}<span class="sound_only">페이지</span></a>
	</c:if>
	</c:forEach>
		<a href="/zTeamProject/class_list.do?currentPage=${maxPage}" class="pg_page">&#62;</a>
	</span>
</nav>


    
    <!-- } 게시판 검색 끝 -->   
</div>


<!-- 페이지 -->


<!-- } 게시판 목록 끝 -->



<!-- 하단 시작 { -->
<footer id="footer">
    <dl>
        <dt><img src="resources/images/classList/logo.png" alt=""></dt>
        <dd>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/privacy.php .term_area">개인정보처리방침</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/term.php .term_area" data-featherlight-type="ajax">이용약관</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/noEmail.php .term_area" data-featherlight-type="ajax">이메일주소 무단수집거부</a>
        </dd>
    </dl>
	<address>
		<span>서울 관악구 조원중앙로 38-1한별빌딩</span> 
		 <em>|</em><span> Tel. 070-7558-6420</span> 
		 <em>|</em><span> Fax. 050-4156-1305</span> 
		 <em>|</em><span> E-mail. <a href="mailto:admin@websiting.co.kr">admin@websiting.co.kr</a></span> 
		<br><span>본 샘플사이트를 베이스로 페이지디 <a href="https://paged.kr/" target="_blank">paged.kr</a> 에서 제작요청 가능합니다.</span>	</address>
	<p><span>Copyright</span> © <b>sample.paged.kr</b> <span>All rights reserved.</span></p>
</footer>

<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true" style="display: none;"><span class="sound_only">페이지 상단으로 이동</span></button>

<!-- 현재위치 및 서브메뉴 활성화 설정// -->
<script>
$(function(){$('.snb.bo_tablegallery, .snb .snb2d_bo_tablegallery').addClass('active');});/*  보테이블 : bo_tablegallery  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tablegallery h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tablegallery a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tablegallery").index() + 1) ); } else { $('.loc1D').text('강좌'); $('.noInfoPageTit').html('<h2><a><b>갤러리</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
<!-- //현재위치 및 서브메뉴 활성화 설정 -->
<script>$(function() { /* 모바일용 메뉴바 */ var articleMgnb = $("#snb li.snb"); articleMgnb.addClass("hide"); $("#snb li.active").removeClass("hide").addClass("show"); $("#snb li.active .snb2dul").show(); $(".snb2dDown").click(function(){ var myArticle = $(this).parents("#snb li.snb"); if(myArticle.hasClass("hide")){ articleMgnb.addClass("hide").removeClass("show"); articleMgnb.find(".snb2dul").slideUp("fast"); myArticle.removeClass("hide").addClass("show"); myArticle.find(".snb2dul").slideDown("fast"); } else { myArticle.removeClass("show").addClass("hide");myArticle.find(".snb2dul").slideUp("fast"); } }); });</script>



<!-- } 하단 끝 -->


<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->





</body></html>