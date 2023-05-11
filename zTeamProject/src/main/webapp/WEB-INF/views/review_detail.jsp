<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0063)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>리뷰 상세 페이지</title>
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
				<a href="index.jsp"><img src="resources/images/classList/logo.png" alt="페이지디 홈페이지 템플릿 테마"></a>
			</div>
            <ul id="gnb_1dul">
                <li class="gnb_1dli" style="z-index:999">
                    <a href="index.jsp" target="_self" class="gnb_1da">HOME<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:998">
                    <a href="guildList.jsp" target="_self" class="gnb_1da">커뮤니티<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:997">
                    <a href="classList.jsp" target="_self" class="gnb_1da">강좌<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:996">
                    <a href="" target="_self" class="gnb_1da">리뷰<u></u></a>
                </li>   
                				<li class="gnb_1dli allSchBoxWr">
					<button type="button" id="btnSchbox" title="전체검색 열기"><i class="fa fa-search"></i></button>

					<div id="allSchBox">
						<fieldset>
							<legend>사이트 내 전체검색</legend>
							<form name="fsearchbox" method="get" action="" onsubmit="return fsearchbox_submit(this);">
								<input type="hidden" name="sfl" value="wr_subject||wr_content">
								<input type="hidden" name="sop" value="and">
								<label for="sch_stx" class="sound_only">검색어 필수</label>
								<input type="text" name="stx" id="sch_stx" class="topSchFocus" maxlength="20" placeholder="Search...">
								<button type="submit" id="sch_submit" value="검색"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
								<a id="allSchBoxClose"><i class="fa fa-close" aria-hidden="true"></i><i class="sound_only">전체검색 닫기</i></a>
							</form>
							<script> function fsearchbox_submit(f) { if (f.stx.value.length < 2) { alert("검색어는 두글자 이상 입력하십시오."); f.stx.select(); f.stx.focus(); return false; } /* 검색에 많은 부하가 걸리는 경우 이 주석을 제거하세요. */ var cnt = 0; for (var i=0; i<f.stx.value.length; i++) { if (f.stx.value.charAt(i) == ' ') cnt++; } if (cnt > 1) { alert("빠른 검색을 위하여 검색어에 공백은 한개만 입력할 수 있습니다."); f.stx.select(); f.stx.focus(); return false; } return true; } </script>
						</fieldset>
					</div>

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
			<strong title="PURE WHITE &gt; 리뷰">리뷰</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">리뷰</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 리뷰상세</span></span>
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
            PURE WHITE</span>
        </h2>
    </header>

    <section id="bo_v_info">
        <h2>페이지 정보</h2>
        <span class="sound_only">작성자</span> <strong><span class="sv_member">웹사이팅</span></strong>
        <span class="sound_only">댓글</span><strong><a href="#bo_vc"> <i class="fa fa-commenting-o" aria-hidden="true"></i> 0건</a></strong>
        <span class="sound_only">조회</span><strong><i class="fa fa-eye" aria-hidden="true"></i> 1,273회</strong>
        <strong class="if_date"><span class="sound_only">작성일</span><i class="fa fa-clock-o" aria-hidden="true"></i> 18-02-06 12:14</strong>
    </section>

    <section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>

		
        <div id="bo_v_img">
<a href="http://sample.paged.kr/purewhite/bbs/view_image.php?bo_table=gallery&amp;fn=5_copy_11_31261188_OuepdXZy_3e7d4d615d0ad144794a1ba0f2f8763f19e143ac.jpg" target="_blank" class="view_image"><img src="http://sample.paged.kr/purewhite/data/file/gallery/thumb-5_copy_11_31261188_OuepdXZy_3e7d4d615d0ad144794a1ba0f2f8763f19e143ac_1200x250.jpg" alt=""/></a></div>

        <!-- 본문 내용 시작 { -->
        <div id="bo_v_con"><div>페이지디 반응형 홈페이지 테마의 기본 갤러리 게시판입니다. </div><div><br /></div><div><br /></div><div>갤러리 게시판은 목록에서 이미지와 제목을 보여주는 게시판입니다.</div><div>갤러리 게시판의 목록에서는 게시글의 파일첨부 또는 에디터를 통하여 첨부된 이미지가 있을 경우 해당 이미지의 썸네일과 함께 제목이 노출됩니다.</div><div><br /></div><div>웹사이팅에서 제작한 페이지디 반응형 홈페이지 테마를 이용하시면 본 테마에 반응형 갤러리 게시판이 포함되어 있어 간단한 설정만으로 손쉽게 사용이 가능합니다. 페이지디 반응형 홈페이지 테마는 레이아웃 부터 각 게시판(기본게시판, 질문답변 게시판, FAQ게시판, 웹진형 게시판, 갤러리게시판, 제품소개 게시판 등), 기타 자주사용되는 대부분의 페이지가 모두 반응형으로 제작되어 있어 단기간에 고퀄리티 반응형 홈페이지 제작 진행이 가능합니다.</div><div><br /></div><div>단기간의 컨텐츠 작업만으로도 전혀다른 홈페이지로 변하는 마법같은 웹사이트 템플릿!</div><div><br /></div><div>페이지디 반응형 홈페이지 테마는 기업소개 홈페이지, 회사소개 홈페이지, 음식점 홈페이지, 제품소개형 홈페이지, 개인 홈페이지, 포트폴리오 사이트 등 다양한 홈페이지로의 변화가 가능합니다.</div></div>
                <!-- } 본문 내용 끝 -->

        

    </section>

   
    <!-- 게시물 상단 버튼 시작 { -->
    <div id="bo_v_top">        
        <ul class="bo_v_left"></ul>
        <ul class="bo_v_com">
           <!-- 좋아요 버튼 -->
           <li><a href="classList.jsp" class="btn_b01"><i class="fa-regular fa-heart"></i></a></li>
           <!-- 신고하기 버튼 -->
           <li><a href="classList.jsp" class="btn_b01"><i class="fa-solid fa-handcuffs"></i> 신고하기</a></li>
           <!-- 강좌 신청 버튼 -->
           <li><a href="classList.jsp" class="btn_b01"><i class="fa-solid fa-graduation-cap"></i> 강좌 보러가기</a></li>
           <!-- 목록 보기 버튼 -->
           <li><a href="classList.jsp" class="btn_b01"><i class="fa fa-list" aria-hidden="true"></i> 목록</a></li>
        </ul> 
    </div>   
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