<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>커뮤니티 리스트</title>
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/style.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
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
   	
	$('#cate').change(function(){
		
		location.href = '/zTeamProject//guild_list.do';
		
	});	
});
</script>
</head>
<body>
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
				<a href="index.jsp"><img src="resources/images/classList/logo.png" ></a>
			</div>
            <ul id="gnb_1dul">
                <li class="gnb_1dli" style="z-index:999">
                    <a href="index.jsp" target="_self" class="gnb_1da">HOME<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:997">
                    <a href="/zTeamProject/class_list.do?currentPage=0" target="_self" class="gnb_1da">강좌<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:998">
                    <a href="guild_list.do" target="_self" class="gnb_1da">커뮤니티<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:996">
                    <a href="review_list.do" target="_self" class="gnb_1da">리뷰<u></u></a>
                </li> 
                <li class="gnb_1dli" style="z-index:996"> 
                    <a href="mypage연결해조...form class_list" target="_self" class="gnb_1da">마이페이지<u></u></a>
                </li>             
  				<li class="gnb_1dli allSchBoxWr">
					<button type="button" id="btnSchbox" title="전체검색 열기"><i class="fa fa-search"></i></button>
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

<div id="page_title" class="sbtImg" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="동네모임">동네모임</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">커뮤니티</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 동네모임</span></span>
		</h2>
	</div>
</div>
<div id="ctWrap">

	<div id="container">


<!-- 게시판 목록 시작 { -->
<div id="bo_gall" style="width:100%">


    <!-- 게시판 페이지 정보 및 버튼 시작 { -->

    <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    <!-- 게시판 카테고리 시작 { -->
    <!-- } 게시판 카테고리 끝 -->

    <form name="fboardlist"  id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="product_webzine">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sst" value="wr_num, wr_reply">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">


    <h2 class="sound_only">커뮤니티 목록</h2>
	

    <ul id="gall_ul" class="gall_row">
    <c:forEach var="map" items="${listMap}">
       <li class="gall_li col-gn-1 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                                  </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=21">
							<em class="iconPs bo_tit"></em>
							<i class="imgAr">
								<c:if test="${not empty map.path}">
									<img src="${map.path}">
								</c:if>
								<c:if test="${empty map.path}">
									<img src="http://localhost:8080/zTeamProject/resources/uploads/no_pic.jpg">
								</c:if>
							</i>                      
						</a>
                    </div>
                    <div class="gall_text_href">
                            <a href="" class="bo_cate_link">
                            지역명
                            </a>
                            <a href="" class="bo_tit">
                            내용
                            </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							
							</em>
						</div>
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

        <form name="fsearch" method="get">
        <input type="hidden" name="bo_table" value="product_webzine">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sop" value="and">
        <label for="sfl" class="sound_only">검색대상</label>
        <select name="sfl" id="sfl">
            <option value="wr_subject||wr_content">제목+내용</option>
            <option value="wr_subject">제목</option>
            <option value="wr_content">내용</option>
            <option value="mb_id,1">회원아이디</option>
            <!-- <option value="mb_id,0">회원아이디(코)</option> -->
            <option value="wr_name,1">작성자</option>
            <!-- <option value="wr_name,0">작성자(코)</option> -->
        </select>
        <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
        <input type="text" name="stx" value="" required id="stx" class="sch_input" size="25" maxlength="20" placeholder="검색어를 입력해주세요">
        <button type="submit" value="검색" class="sch_btn"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
        </form>
    </fieldset>
    <!-- } 게시판 검색 끝 -->
                <ul class="btn_bo_user">
            	<li>
            		<a href="/zTeamProject/guild_form.do" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a>
            	</li>
            </ul>
    
	<nav class="pg_wrap">
    	<span class="pg"><a href="./board.php?bo_table=qna&amp;page=1" class="pg_page pg_start">처음</a>
	    	<span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
				<a href="./board.php?bo_table=qna&amp;page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
				<a href="./board.php?bo_table=qna&amp;page=2" class="pg_page pg_end">맨끝</a>
		</span>
	</nav>
    
    
        
</div>




<!-- 페이지 -->
<!-- } 게시판 목록 끝 -->


    </div><!-- // #container 닫음 -->


<footer id="footer">
    <dl>
        <dt><img src="resources/images/classList/logo.png" alt="페이지디 홈페이지 템플릿 테마"></dt>
        <dd>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/privacy.php .term_area" data-featherlight="iframe">개인정보처리방침</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/term.php .term_area" data-featherlight-type="ajax">이용약관</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/noEmail.php .term_area" data-featherlight-type="ajax">이메일주소 무단수집거부</a>
        </dd>
    </dl>
	<address>
		<span>서울 관악구 조원중앙로 38-1한별빌딩</span> 
		 <em>|</em><span> Tel. 070-7558-6420</span> 
		 <em>|</em><span> Fax. 050-4156-1305</span> 
		 <em>|</em><span> E-mail. <a href='mailto:admin@websiting.co.kr'>admin@websiting.co.kr</a></span> 
		<br><span>본 샘플사이트를 베이스로 페이지디 <a href="https://paged.kr" target="_blank">paged.kr</a> 에서 제작요청 가능합니다.</span>	</address>
	<p><span>Copyright</span> &copy; <b>sample.paged.kr</b> <span>All rights reserved.</span></p>
</footer>

<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true"><span class="sound_only">페이지 상단으로 이동</span></button>

<!-- 현재위치 및 서브메뉴 활성화 설정// -->
<script>
$(function(){$('.snb.bo_tableproduct_webzine, .snb .snb2d_bo_tableproduct_webzine').addClass('active');});/*  보테이블 : bo_tableproduct_webzine  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tableproduct_webzine h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tableproduct_webzine a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tableproduct_webzine").index() + 1) ); } else { $('.loc1D').text('커뮤니티'); $('.noInfoPageTit').html('<h2><a><b>제품소개(웹진형)</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
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

</body>
</html>

<!-- 사용스킨 : theme/product -->
