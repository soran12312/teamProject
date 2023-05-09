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
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<title>품-i</title>
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/style.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
<!-- Site Icons -->
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
<body>
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

<div id="page_title" class="sbtImg" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="마이페이지">마이페이지</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D"> 마이페이지</span>
		</h2>
	</div>
</div>
      
 <div class="section-MyPage min-height-50vh flex flex-ai-c ">
        <form name="form" onsubmit="check(this); return false;" action="doModifyInfo" method="POST">
          <input type="hidden" name="id" value="${loginedMember.id}">
          <input type="hidden" name="loginPwReal">

          <div class="flex flex-jc-c">           
              <div class=MyPage_cell__title>
              	<div><img src="resources/images/classList/noimage.jpg" width="150px" height="150px" alt=""/></a></div>
              	<br/>
                <span>자기소개</span>
                <div class=MyPage_cell__body>
                  <input type="text" maxlength="50" placeholder="자기소개">
                </div>
              </div>            
            <div class="section-MyPage-body__cell">
              <div class="MyPage_cell__title">
                <span>이메일</span>
                <div class="MyPage_cell__body">
                  <input type="text" maxlength="50" placeholder="이메일" readonly="readonly">
                </div>
              </div>

              <div class="MyPage_cell__title">
                <span>닉네임</span>
                <div class="MyPage_cell__body">
                  <input type="text" maxlength="50" placeholder="닉네임">                  
                </div>
              </div>

              <div class=MyPage_cell__title>
                <span>관심지역</span>
                <div class=MyPage_cell__body>
                  <input type="text" name="" maxlength="50" placeholder="지역">
                </div>
                <div class=MyPage_cell__body>
                  <input type="text" name="" maxlength="50" placeholder="지역">
                </div>
                <div class=MyPage_cell__body>
                  <input type="text" name="" maxlength="50" placeholder="지역">
                </div>
              </div>
              <div class="section-MyPage-body__option flex flex-jc-fe flex-ai-fe">
                <button class="submitModifyBtn btn btn-go" type="submit" onclick="if(confirm('정말 변경하시겠습니까?') == false) {return false;}"><i class="far fa-edit"></i> 변경</button>
                <button class="cleModifyBtn btn btn-back" type="button" onclick="history.back();"><i class="fas fa-undo"></i> 취소</button>
              </div>
            </div>
		
            <div class="section-MyPage-body__cell">
             <div class="container"></div>
     		  <div id="Tab" class="container">	
			   <ul class="nav nav-tabs">
				<li class="active">
        		 <a href="#1" data-toggle="tab">강좌이용정보</a>
				</li>
				<li>
				 <a href="#2" data-toggle="tab">커뮤니티</a>
				</li>
				<li>
				 <a href="#3" data-toggle="tab">리뷰</a>
				</li>
				<li>
				 <a href="#4" data-toggle="tab">나의문의</a>
				</li>
			   </ul>

				<div class="tab-content ">
		 			<div class="tab-pane active" id="1">
          				<h3>1</h3>
					</div>
					<div class="tab-pane" id="2">
          				<h3>2</h3>
					</div>
         			<div class="tab-pane" id="3">
          				<h3>3</h3>
		 			</div>
		 			<div class="tab-pane" id="4">
          				<h3>4</h3>
		 			</div>
	    		</div>
  			  </div>
            </div>
          </div>
        </form>
      </div>
      <!-- 회원정보 페이지 끝 -->
    </section>
    
    
<body class="realestate_version">
<div class="copyrights"><!-- ===========================================================================================카테고리 연결해야함 -->
         <div class="container">
            <div class="footer-distributed">
               <div class="footer-left">
                  <p class="footer-links">
                     <a href="#">Home</a>
                     <a href="#">Blog</a>
                     <a href="#">Pricing</a>
                     <a href="#">About</a>
                     <a href="#">Faq</a>
                     <a href="#">Contact</a>
                  </p>
                  <p class="footer-company-name">All Rights Reserved. <a href="https://html.design/">html.design</a> &copy; 2023</p>
               </div>
               <div class="footer-right">
                  <form method="get" action="#">
                     <input placeholder="Subscribe our newsletter.." name="search">
                     <i class="fa fa-envelope-o"></i>
                  </form>
               </div>
            </div>
         </div>
         <!-- end container -->
      </div>
      <!-- end copyrights -->
      <a href="#navbar" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- ALL JS FILES -->
      <script src="resources/js/all.js"></script>
      <!-- ALL PLUGINS -->
      <script src="resources/js/custom.js"></script>
      <script src="resources/js/portfolio.js"></script>
      <script src="resources/js/hoverdir.js"></script>    
      <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
      <!-- MAP & CONTACT -->
      <script src="resources/js/map.js"></script>
   </body>

</body>
</html>