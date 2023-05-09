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
<title>품-i</title>
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/bxslider.css">
<link rel="stylesheet" href="resources/css/classList/boxstyle.css">
<link rel="stylesheet" href="resources/css/classList/webstyle.css">
<link rel="stylesheet" href="resources/css/classList/basicstyle.css">
<link rel="stylesheet" href="resources/css/classList/qnastyle.css">
<link rel="stylesheet" href="resources/css/classList/productstyle.css">
<link rel="stylesheet" href="resources/css/classList/owlcarousel.css">
<link rel="stylesheet" href="resources/css/classList/main.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
<link rel="stylesheet" href="resources/css/classList/featherlight.min.css">
<!--[if lte IE 8]><script src="http://sample.paged.kr/purewhite/js/html5.js"></script><![endif]-->
<link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon" />
<link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="resources/style.css">
<!-- Colors CSS -->
<link rel="stylesheet" href="resources/css/colors.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="resources/css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="resources/css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="resources/css/custom.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-neo.css" rel="stylesheet">
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
<script src="resources/js/modernizer.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>

<body class="realestate_version">
      <header class="header header_style_01">
         <nav class="megamenu navbar navbar-default" data-spy="affix">
            <div class="container-fluid">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="index-real-estate.html"><img src="resources/images/logos/logo.png" width="220" alt="image" /></a>
               </div>
               <div id="navbar" class="navbar-collapse collapse">
                  <ul class="nav navbar-nav navbar-right">
                     <li><a data-scroll href="#home">Home</a></li>
                     <li><a data-scroll href="#features">강좌게시판<span class="hidden-xs">*</span></a></li>
                     <li><a data-scroll href="#agent">커뮤니티게시판</a></li>
                     <li><a data-scroll href="#gallery">리뷰게시판</a></li>
                     <li><a data-scroll href="#mypage">관리자페이지</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header>
      
      
<aside id="topSpacer"></aside>
<aside id="sideBarCover"></aside>
<!-- } 상단 끝 --><hr>

<!-- 콘텐츠 시작 { -->



<div id="ctWrap" style="background-image:url('resources/uploads/MainBack.png');">

<section class="mainContents">

	<div class="mainTwoLatArea">
		
			
      <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" >
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-12">
                  <div class="big-tagline clearfix">
                     <h2 id='main_info' class='main_info'>
                     품i에서 재능을 판매하고 <br/>
                     기부도 시작하세요!</h2>
                  </div>
               </div>
		
			
               <div class="col-md-6 wow slideInRight hidden-xs hidden-sm">
                  <div class="contact_form">
                     <h3><i class="fa fa-envelope-o grd1 global-radius"></i> Login</h3>
                     <form id="loginForm" class="row" name="contactform" method="post">
                        <fieldset class="row-fluid">
                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                              <a id="login" class="btn kakao-login" href="https://kauth.kakao.com/oauth/authorize?client_id=3ce0aad34a9acc02c24c9294a3cfc537&redirect_uri=http://localhost:8080/zTeamProject/member_join_form.do&response_type=code"></a>
                           </div>
                           <br/>
                           <div class="text-center">
                           		<a><br/>카카오톡으로 1초만에 회원되기</a>
                           </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
</section>





<section class="mainVisualImage hiddAction">
	<ul>
		<li>
			<img src="http://sample.paged.kr/purewhite/theme/pagedtheme/img/mainImg01.jpg" alt="">
			<h2 class="mvTit01">반응형 홈페이지 제작 전문</h2>
			<div class="mvTit02">
				<p class="mvTit02txt">페이지디 퓨어화이트 테마</p>
				<a href="#" class="mvLink"><b>자세히보기</b></a>
			</div>
		</li>
		<li>
			<img src="http://sample.paged.kr/purewhite/theme/pagedtheme/img/mainImg02.jpg" alt="">
			<h2 class="mvTit01">PURE WHITE</h2>
			<div class="mvTit02">
				<p class="mvTit02txt">페이지디의 반응형 홈페이지 전용 테마입니다.</p>
				<a href="#" class="mvLink"><b>자세히보기</b></a>
			</div>
		</li>
		<li>
			<img src="http://sample.paged.kr/purewhite/theme/pagedtheme/img/mainImg03.jpg" alt="">
			<h2 class="mvTit01">RESPONSIVE WEBSITE</h2>
			<div class="mvTit02">
				<p class="mvTit02txt">퓨어화이트 반응형 홈페이지 테마</p>
				<a href="#" class="mvLink"><b>자세히보기</b></a>
			</div>
		</li>
	</ul>
</section>

<hr>

<section class="mainBasicCont01">
	<!-- 
		main.css 참조 
		검색엔진 노출을 위하여 메인페이지의 본 영역에 홈페이지에 대한 간략한 소개, 기본 정보 등 을 기재해 주시면 좋습니다.
	-->
	<h2>퓨어화이트(PURE WHITE)</h2>
	<h3>퓨어화이트는 페이지디의 반응형 홈페이지 전용 테마입니다.</h3>

	<p class="centerBar"></p>

	<p class="MBC01txt">
		<strong>퓨어화이트(PURE WHITE) 테마는   <span class="pc_br"></span>웹사이팅에서 제작한 반응형 웹사이트 테마입니다.</strong><br><br>
		퓨어화이트 테마는 기본적인 트랜디한 레이아웃에 어떤 컨셉이든 잘 어울리는  <span class="pc_br"></span>심플한 구조로 제작되어 있어 퓨어화이트 테마로 만들 수 있는 웹사이트의 종류는 정말 다양합니다.<br>
		어떤 업종! 어떤 종류의 홈페이지도 뚝딱 만들어 낼 수 있는 퓨어화이트 테마로 홈페이지 제작 요청해 보세요!
	</p>
</section>

<hr>

<section class="mainContentsW100 btnMoreNone latTitNone">
	<!-- 타이틀 없는 100% 꽉차는 박스형 갤러리 -->
	
<div class="galleryBoxLat">
    <h2 class="galleryLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box">갤러리게시판(박스형)<u></u></a></h2>
    <ul>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=15">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-7_copy_15_31261188_xmOe0WFw_a0da36d000ebde0a2d70f85502ec5811f750a8b9_300x300.jpg" alt="갤러리게시판" ></i>
				<em></em><span class='bo_cate_link'>[ 분류가있을경우 ]</span> <b>갤러리게시판</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=14">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_OgmCcWfI_844e8335ab8ec05537ddc9b0e8beb359fafd0060_300x300.jpg" alt="페이지디 반응형 홈페이지 테마" ></i>
				<em></em><b>페이지디 반응형 홈페이지 테마</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=13">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_CPHpnwq1_e771ae54b20d8b14f3e4f000cd3a79ac9b73c4c7_300x300.jpg" alt="갤러리게시판" ></i>
				<em></em><b>갤러리게시판</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=12">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_kow1TePB_1d3ccd7123b95932498b80b3686d867d7e4cb534_300x300.jpg" alt="갤러리 게시판입니다" ></i>
				<em></em><b>갤러리 게시판입니다</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=11">
				<i><img src="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/websiting/imageSpacer.php?w=300&h=300" alt="No image" ><em><sup class="youtube_img" style="background-image:URL(https://img.youtube.com/vi/8Z1eMy2FoX4/sddefault.jpg" alt="이미지첨부없이 유투브영상만 있을 경우);"></sup></em></i>
				<em><i class="fa fa-youtube-play fts13px"><span class="sound_only">유투브영상</span></i> </em><span class='bo_cate_link'>[ 분류가있을경우 ]</span> <b>이미지첨부없이 유투브영상만 있을 경우</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=10">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_kUYxMjzv_249e493273438342bf5cd765c87822d104426e6a_300x300.jpg" alt="갤러리 등록 테스트" ></i>
				<em></em><b>갤러리 등록 테스트</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=9">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_xN1cZLJG_9cd5c22bdcfe63611978a9b91d01b4856ee92961_300x300.jpg" alt="갤러리게시판" ></i>
				<em></em><b>갤러리게시판</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=8">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_18jqctRK_7b44e944fd914fc537534da6cb20aa03683639ea_300x300.jpg" alt="페이지디 반응형 홈페이지 테마" ></i>
				<em></em><b>페이지디 반응형 홈페이지 테마</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=7">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_Ic6M9yuK_bc981214629a4b657ce051de005a0b35aa615c2d_300x300.jpg" alt="갤러리게시판 공지사항입니다" ></i>
				<em></em><b>갤러리게시판 공지사항입니다</b>			</a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box&amp;wr_id=6">
				<i><img src="http://sample.paged.kr/purewhite/data/file/gallery_box/thumb-1982125119_bXqUSmPz_09541ab04dc9fd98c2269b2faa1a39f686fc0828_300x300.jpg" alt="갤러리 게시판입니다" ></i>
				<em></em><b>갤러리 게시판입니다</b>			</a>
        </li>
            </ul>
    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box" class="lt_more">갤러리게시판(박스형) 더보기 <i class="fa fa-plus" aria-hidden="true"></i></a>

</div>
</section>

<hr>

<section class="mainContentsW100 background-dark">
	<div class="mainContents">
		<ul class="main_figure_list">
			<li>
				<i class="fa fa-desktop"></i>
				<strong>WEBSITE</strong>
				<span>웹사이트 제작 및 관리</span>
			</li>
			<li>
				<i class="fa fa-code"></i>
				<strong>MOBILE</strong>
				<span>모바일 웹사이트 제작 및 관리</span>
			</li>
			<li>
				<i class="fa fa-shopping-cart"></i>
				<strong>E-commerce</strong>
				<span>쇼핑몰 제작 및 운영대행</span>
			</li>
			<li>
				<i class="fa fa-android"></i>
				<strong>Application</strong>
				<span>웹 어플리케이션 개발 및 운영</span>
			</li>
		</ul>
	</div>
</section>

<hr>



<section class="mainContentsW100 background-light">
	<div class="mainContents">

		<div class="mainThreeLatArea">
			<div class="MTLA01">
				
<div class="basicLat">
    <h2 class="basicLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic">기본게시판 <u></u></a></h2>
    <ul>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic&amp;wr_id=30"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 분류1 ]</span> <b>링크에 유투브 공유링크삽입샘플</b>
            <span class="lt_date">2018-02-12</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic&amp;wr_id=24"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <b>첨부파일 또는 이미지 첨부와 링크가 궁금하다…</b>
            <span class="lt_date">2018-02-06</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic&amp;wr_id=15"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <b>기본게시판은 게시판용도로 다양하게 활용하실 …</b>
            <span class="lt_cmt">+ <span class="cnt_cmt">8</span></span>
            <span class="lt_date">2018-02-06</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic&amp;wr_id=14"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 분류1 ]</span> <b>풀 반응형 기본게시판입니다.</b>
            <span class="lt_date">2018-02-06</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic&amp;wr_id=13"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 분류1 ]</span> <b>기본형 반응형 게시판 샘플</b>
            <span class="lt_cmt">+ <span class="cnt_cmt">3</span></span>
            <span class="lt_date">2018-01-30</span>
            </a>
        </li>
            </ul>
    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" class="lt_more">기본게시판 더보기 <i class="fa fa-plus" aria-hidden="true"></i></a>

</div>
			</div>
			<div class="MTLA02">
				
<div class="basicLat">
    <h2 class="basicLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq">자주묻는질문 <u></u></a></h2>
    <ul>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq&amp;wr_id=25"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 홈페이지 제작 ]</span> <b>반응형 홈페이지란 무엇인가요?</b>
            <span class="lt_date">2018-03-14</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq&amp;wr_id=24"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 홈페이지 제작 ]</span> <b>yourID.ugo.kr  무료도메인이 무엇…</b>
            <span class="lt_date">2015-05-27</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq&amp;wr_id=23"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 홈페이지 제작 ]</span> <b>원본파일을 제공해 주나요?</b>
            <span class="lt_date">2015-05-27</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq&amp;wr_id=22"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 홈페이지 운영 ]</span> <b>홈페이지 유지비용이 어떻게 되나요?</b>
            <span class="lt_date">2015-05-27</span>
            </a>
        </li>
            <li>
            <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq&amp;wr_id=21"> <i  class="fa fa-caret-right" aria-hidden="true"></i> <span class='bo_cate_link'>[ 홈페이지 운영 ]</span> <b>모바일에서 접속 시 파일첨부가 되지 않을때</b>
            <span class="lt_date">2015-04-29</span>
            </a>
        </li>
            </ul>
    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq" class="lt_more">자주묻는질문 더보기 <i class="fa fa-plus" aria-hidden="true"></i></a>

</div>
			</div>
			<div class="MTLA03">
				
<div class="qnaLat">
    <h2 class="qnaLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna">질문답변 <u></u></a></h2>
    <ul>
            <li>
			<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=39">
		
														<span class="qnaIco qnaIco3"><i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span>
									            <i class="fa fa-lock" aria-hidden="true"></i><span class="sound_only">비밀글</span> <b>답변이 없다면 접수완료로만 표시됩니다 (비밀…</b>            <span class="lt_date">01-31</span>
            </a>
        </li>
            <li>
			<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=36">
		
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            <i class="fa fa-lock" aria-hidden="true"></i><span class="sound_only">비밀글</span> <b>질문드립니다(비밀번호0000)</b>            <span class="lt_date">01-31</span>
            </a>
        </li>
            <li>
			<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=34">
		
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            <i class="fa fa-lock" aria-hidden="true"></i><span class="sound_only">비밀글</span> <b>질문게시판 글 등록 답변이 있다면 답변완료로…</b>            <span class="lt_date">01-31</span>
            </a>
        </li>
            <li>
			<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=32">
		
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            <i class="fa fa-lock" aria-hidden="true"></i><span class="sound_only">비밀글</span> <b>질문드립니다(비밀번호0000)</b>            <span class="lt_date">01-31</span>
            </a>
        </li>
            <li>
			<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=30">
		
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            <i class="fa fa-lock" aria-hidden="true"></i><span class="sound_only">비밀글</span> <b>질문게시판 글 등록 답변이 있다면 답변완료로…</b>            <span class="lt_date">01-31</span>
            </a>
        </li>
            </ul>
    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna" class="lt_more">질문답변 더보기 <i class="fa fa-plus" aria-hidden="true"></i></a>

</div>
			</div>
		
		</div>

	</div>
</section>


<section class="mainContents">
	<div class="prodLatWR">
	<div class="prodLat">
		<h2 class="prodLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery">제품소개(갤러리형)<u></u></a></h2>
		<div class="prodLatREL owl-carousel prodLat_product_gallery">
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=20">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-12_copy_20_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=19">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-31261188_KaELYXdV_11dc01bd1f38f64cf99b12f69fed9f19d5cc22f6_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=18">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-14_copy_18_12_copy_14_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=17">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-13_copy_17_12_copy_13_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=16">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-31261188_8XYeFhzH_941e42ffa8e6f19a7116841327f3963b0e09a8bd_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=15">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-13_copy_15_12_copy_13_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=14">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-12_copy_14_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=13">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-12_copy_13_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
					<div class="prodLatRELcon">
				<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery&amp;wr_id=12">
					<i><img src="http://sample.paged.kr/purewhite/data/file/product_gallery/thumb-31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="제품명 영역입니다" ></i>
					<em></em><span class='bo_cate_link'>분류1</span> <b>제품명 영역입니다</b>				</a>
			</div>
						</div>
		<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery" class="lt_more">제품소개(갤러리형) 더보기 <i class="fa fa-plus" aria-hidden="true"></i></a>

	</div>
</div>
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/owlcarousel/owl.carousel.min.js"></script>
<script>
$('.prodLat_product_gallery').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsiveClass:true,
	autoplay:true,
	autoplayTimeout:5000,
	autoplayHoverPause:true,
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        980:{
            items:5
        }
    }
})
</script>
</section>

<hr>



    
<!-- 팝업레이어 시작 { -->
<div id="hd_pop">
    <h2>팝업레이어 알림</h2>

<span class="sound_only">팝업레이어 알림이 없습니다.</span></div>

<script>
$(function() {
    $(".hd_pops_reject").click(function() {
        var id = $(this).attr('class').split(' ');
        var ck_name = id[1];
        var exp_time = parseInt(id[2]);
        $("#"+id[1]).css("display", "none");
        set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
    });
    $('.hd_pops_close').click(function() {
        var idb = $(this).attr('class').split(' ');
        $('#'+idb[1]).css('display','none');
    });
    $("#hd").css("z-index", 1000);
});
</script>
<!-- } 팝업레이어 끝 -->
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/plugin/bxslider/jquery.bxslider.min.js"></script>
<script src="http://sample.paged.kr/purewhite/theme/pagedtheme/js/WEBsiting.main.js"></script>




	<aside id="sideBar">
		<h2 class="sound_only">사이트 전체메뉴</h2>

		<!-- SNB // -->
				<ul id="snb"><!-- <li class="snbHome"><h2><a href="http://sample.paged.kr/purewhite"><b>HOME</b></a></h2></li> --><li class="snb co_idgreeting  co_idgreeting co_idcompany bo_tablehistory co_idmap  "><h2><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting" target="_self"><b>ABOUT</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_co_idgreeting"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting" target="_self" ><b><i class="fa fa-angle-right"></i> 인사말</b></a></li><li class="snb2d snb2d_co_idcompany"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=company" target="_self" ><b><i class="fa fa-angle-right"></i> 회사소개</b></a></li><li class="snb2d snb2d_bo_tablehistory"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=history" target="_self" ><b><i class="fa fa-angle-right"></i> 연혁</b></a></li><li class="snb2d snb2d_co_idmap"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=map" target="_self" ><b><i class="fa fa-angle-right"></i> 오시는 길</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/theme/pagedtheme/testPage.php" target="_self" ><b><i class="fa fa-angle-right"></i> 스타일 샘플</b></a></li></ul></li><li class="snb co_idbusiness  co_idbusiness bo_tableproduct_gallery bo_tableproduct_webzine "><h2><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business" target="_self"><b>BUSINESS</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_co_idbusiness"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business" target="_self" ><b><i class="fa fa-angle-right"></i> 사업분야</b></a></li><li class="snb2d snb2d_bo_tableproduct_gallery"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery" target="_self" ><b><i class="fa fa-angle-right"></i> 제품소개(갤러리형)</b></a></li><li class="snb2d snb2d_bo_tableproduct_webzine"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine" target="_self" ><b><i class="fa fa-angle-right"></i> 제품소개(웹진형)</b></a></li></ul></li><li class="snb bo_tablebasic  bo_tablebasic bo_tableqna bo_tablefaq bo_tablewebzine bo_tableform "><h2><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" target="_self"><b>게시판샘플</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_bo_tablebasic"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" target="_self" ><b><i class="fa fa-angle-right"></i> 기본게시판</b></a></li><li class="snb2d snb2d_bo_tableqna"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna" target="_self" ><b><i class="fa fa-angle-right"></i> Q&A게시판</b></a></li><li class="snb2d snb2d_bo_tablefaq"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq" target="_self" ><b><i class="fa fa-angle-right"></i> FAQ게시판</b></a></li><li class="snb2d snb2d_bo_tablewebzine"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=webzine" target="_self" ><b><i class="fa fa-angle-right"></i> 웹진형게시판</b></a></li><li class="snb2d snb2d_bo_tableform"><a href="http://sample.paged.kr/purewhite/bbs/write.php?bo_table=form" target="_self" ><b><i class="fa fa-angle-right"></i> 폼메일</b></a></li></ul></li><li class="snb bo_tablegallery  bo_tablegallery bo_tablegallery2 bo_tablegallery_box bo_tablegallery_box2 "><h2><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery" target="_self"><b>갤러리샘플</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_bo_tablegallery"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리게시판(기본)</b></a></li><li class="snb2d snb2d_bo_tablegallery2"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery2" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리(가로길게2단)</b></a></li><li class="snb2d snb2d_bo_tablegallery_box"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리게시판(박스형)</b></a></li><li class="snb2d snb2d_bo_tablegallery_box2"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box2" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리게시판(박스-세로길게4단)</b></a></li></ul></li><li class="snb sflwr_subject%7C%7Cwr_contentand&stx    bo_tableqna1   sflwr_subject%7C%7Cwr_contentand&stx "><h2><a href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&sop=and&stx=%EA%B2%8C%EC%8B%9C%ED%8C%90" target="_self"><b>기본기능</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/login.php" target="_self" ><b><i class="fa fa-angle-right"></i> 로그인</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/register.php" target="_self" ><b><i class="fa fa-angle-right"></i> 회원가입</b></a></li><li class="snb2d snb2d_bo_tableqna1"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&wr_id=1" target="_self" ><b><i class="fa fa-angle-right"></i> 비밀번호확인</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/current_connect.php" target="_self" ><b><i class="fa fa-angle-right"></i> 현재접속자</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/new.php" target="_self" ><b><i class="fa fa-angle-right"></i> 새글</b></a></li><li class="snb2d snb2d_sflwr_subject%7C%7Cwr_contentand&stx"><a href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&sop=and&stx=%EA%B2%8C%EC%8B%9C%ED%8C%90" target="_self" ><b><i class="fa fa-angle-right"></i> 전체검색</b></a></li></ul></li><li class="snb bo_tablethemeinfo  bo_tablethemeinfo bo_tablethemeinfo1 bo_tablethemeinfo2 bo_tablethemeinfo3 "><h2><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo" target="_self"><b>테마소개</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_bo_tablethemeinfo"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo" target="_self" ><b><i class="fa fa-angle-right"></i> 테마안내</b></a></li><li class="snb2d snb2d_bo_tablethemeinfo1"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=1" target="_self" ><b><i class="fa fa-angle-right"></i> - 테마소개</b></a></li><li class="snb2d snb2d_bo_tablethemeinfo2"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=2" target="_self" ><b><i class="fa fa-angle-right"></i> - 게시판별 특이사항</b></a></li><li class="snb2d snb2d_bo_tablethemeinfo3"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=3" target="_self" ><b><i class="fa fa-angle-right"></i> - 사이트 제작절 차안내</b></a></li></ul></li><li class="snb noInfoPageTit"></li></ul>
		<!-- // SNB -->
		
		<!-- 서브메뉴바 하단 정보// -->
		<dl class="snbCS">
			<dt>CS CENTER</dt>
			<dd>
				<strong><i class="fa fa-phone-square"></i> <span> Tel. 070-7558-6420</span> </strong>
				<b><span> E-mail. <a href='mailto:admin@websiting.co.kr'>admin@websiting.co.kr</a></span> </b>
				<b><span> Fax. 050-4156-1305</span> </b>
				
				<br>
				<span>고객센터 운영시간 <br>09:00 ~ 18:00</span>			</dd>
		</dl>
		<div id="snbMvAr">
			<a href="http://sample.paged.kr/purewhite" id="btnHome">HOME</a>
			<a id="snbClose"><i class="fa fa-close"></i><i class="sound_only">사이드메뉴 닫기</i></a>
			<div class="snbMvArBtn">
								<a href="http://sample.paged.kr/purewhite/bbs/login.php"><b>LOGIN</b></a>
				<a href="http://sample.paged.kr/purewhite/bbs/register.php">JOIN</a>
							</div>
		</div>
				<!-- //서브메뉴바 하단 정보 -->
    </aside>

	<aside class="clb"></aside>

</div><!-- // #ctWrap 닫음 -->
<!-- } 콘텐츠 끝 -->

<hr>

<!-- 하단 시작 { -->
<footer id="footer">
    <dl>
        <dt><img src="http://sample.paged.kr/purewhite/theme/pagedtheme/img/footerLogo.png" alt="페이지디 홈페이지 템플릿 테마"></dt>
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
