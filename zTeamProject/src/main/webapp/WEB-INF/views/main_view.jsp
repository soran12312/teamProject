<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
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
   
   <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   <![endif]-->
  
   <body class="realestate_version">
      <!-- header -->
      <c:if test="${empty sessionScope.member_grade}">
      <jsp:include page="../../header.jsp"></jsp:include>
      </c:if>
      <c:if test="${sessionScope.member_grade eq 1 or sessionScope.member_grade eq 2 or sessionScope.member_grade eq 3}">
      <jsp:include page="../../header2.jsp"></jsp:include>
      </c:if>
      <c:if test="${sessionScope.member_grade eq 4}">
      <jsp:include page="../../header3.jsp"></jsp:include>
      </c:if>
      <!-- end header -->
      <c:if test="${empty sessionScope.member_grade}"> 
      <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/MainBack.png');">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-12">
                  <div class="big-tagline clearfix">
                     <h2 id='main_info' class='main_info'>
                     품i에서 재능을 판매하고 <br/>
                     기부도 시작하세요! </br>
                  </div>
               </div>
               <div class="col-md-6 wow slideInRight hidden-xs hidden-sm">
                  <div class="contact_form">
                     <h3><i class="fa fa-envelope-o grd1 global-radius"></i> Login</h3>
                     <form id="loginForm" class="row" name="contactform" method="post">
                        <fieldset class="row-fluid">
                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                              <a id="login" class="btn kakao-login" href="https://kauth.kakao.com/oauth/authorize?client_id=3ce0aad34a9acc02c24c9294a3cfc537&redirect_uri=http://192.168.0.68:8080/zTeamProject/member_join_form.do&response_type=code"></a>
                           </div>
                           <br/>
                           <div class="text-center">
                                 <a href="https://kauth.kakao.com/oauth/authorize?client_id=3ce0aad34a9acc02c24c9294a3cfc537&redirect_uri=http://192.168.0.68:8080/zTeamProject/member_join_form.do&response_type=code"><br/>카카오톡으로 1초만에 회원되기</a>
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
      </c:if>
      <c:if test="${sessionScope.member_grade eq 1 or sessionScope.member_grade eq 2 or sessionScope.member_grade eq 3}">
      <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/MainBack.png');">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-12">
                  <div class="big-tagline clearfix">
                     <h2 id='main_info' class='main_info'>
                     현재 지역은 <br/>
                     <c:forEach var="LocationVO" items="${sessionScope.locList}" >"${LocationVO.addr3}"<br/></c:forEach> 입니다!</h2>
                  </div>
               </div>
               
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      </c:if>
      <!-- end section ================================================== 메인 1페이지====================================================== -->
<!-- section 1 -->	  
<div id="today_money"></div>
<section class="mainContents">
	<div class="prodLatWR">
	<div class="prodLat">
		<h2 class="prodLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery">▼▼▼오늘의 장인!▼▼▼</a></h2>
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
<!-- end section 1 -->

<!-- section 2 -->	 
<div id="today_review"/> 
<section class="mainContents">
	<div class="prodLatWR">
	<div class="prodLat">
		<h2 class="prodLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery">▼▼▼오늘의 리뷰!▼▼▼<u></u></a></h2>
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
<!-- end section 2 -->

<!-- section 3 -->	
<div id="today_notmoney"/>  
<section class="mainContents">
	<div class="prodLatWR">
	<div class="prodLat">
		<h2 class="prodLatTit"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery">▼▼▼오늘의 기부!▼▼▼<u></u></a></h2>
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
<!-- end section 3 -->
<!-- section 4 -->	
<div id="today_lesson"></div>  
<section class="mainContents">
	<div class="prodLatWR">
	<div class="prodLat">
		<h2 class="prodLatTit"><a href="">▼▼▼오늘의 수업!▼▼▼</a></h2>
		<form name="selectDailyChargedClass" method="post" action="/zTeamProject/selectDailyChargedClass.do">
		<div class="prodLatREL owl-carousel prodLat_product_gallery">
				<c:forEach var="map" items="${listMap}">
					<div class="prodLatRELcon">
						<a href="/zTeamProject/class_detail.do?class_number=${map.class_number}">
					<i>						
						<c:if test="${not empty map.path}">
							<img src="${map.path}">
						</c:if>
						<c:if test="${empty map.path}">
						<img src="http://192.168.0.68:8080/zTeamProject/resources/uploads/no_pic.jpg">
						</c:if>
					</i>
					<em></em><span class='bo_cate_link'>${class_like}</span><b>${map.class_name}</b></a>
					</div>
				</c:forEach>
	   	</div>
	   	</form>
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
<!-- end section 4 -->
      <c:if test="${sessionScope.member_grade eq 1 or sessionScope.member_grade eq 2 or sessionScope.member_grade eq 3 or empty sessionScope.member_grade}">
      <div id="support" class="section wb">
         <div class="container">
            <div class="section-title text-center">
               <h3>고객센터</h3>
               <p class="lead">평일 9:00 ~ 6:00 고객센터 운영</p>
            </div>
            <!-- end title -->
            <div class="row">
               <div class="col-md-8 col-md-offset-2">
                  <div class="contact_form">
                     <div id="message"></div>
                     <form id="question" class="row" action="insertQuestion.do" name="question" method="post"  enctype="multipart/form-data">
                        <fieldset class="row-fluid">
                        <div class="col-xs-12">
                        <div class="col-md-6 col-sm-6">
                             문의유형 <select name="question_category" id="question_category" class="form-control " data-style="btn-white">
                                 <option value="사업자신청">사업자신청</option>
                                 <option value="유료회원신청">유료회원신청</option>
                                 <option value="강좌신고">강좌신고</option>
                                 <option value="모임신고">모임신고</option>
                                 <option value="리뷰신고">리뷰신고</option>
                                 <option value="기타문의">기타문의</option>
                            </select>
                            </div>
                            </div>
                            <c:if test="${empty sessionScope.member_grade}">
                            <input type="hidden" name='member_check' id='member_check' value='0' >
                            </c:if>
                            <c:if test="${sessionScope.member_grade eq 1 or sessionScope.member_grade eq 2 or sessionScope.member_grade eq 3}">
                            <input type="hidden" name='member_check' id='member_check' value='1' >
                            </c:if>
                            
                                 <div class="col-xs-12">
                                   제목 <input type="text" name="title" id="title" class="form-control" placeholder="제목을 입력해주세요">
                                  </div>
                                  <div class="col-xs-12">
                                  <c:if test="${empty sessionScope.member_grade}">
                                    이메일 <input type="email" name="email" id="email" class="form-control" placeholder="이메일을 입력해주세요">
                                 </c:if>
                                 <c:if test="${sessionScope.member_grade eq 1 or sessionScope.member_grade eq 2 or sessionScope.member_grade eq 3}">
                                    이메일 <input type="email" name="email" id="email" class="form-control" value="${sessionScope.email}" readonly="readonly">
                                 </c:if>
                                 </div>
                                  <div class="col-xs-12">
                                     내용 <textarea name="content" id="content" class="form-control" placeholder="내용을 입력해주세요"></textarea>
                                   </div>
                                   <div class=" col-xs-12">
                                   첨부파일 <input type='file' name="file" id="file" class="form-control"/>
                                  </div>
                                  <div class="col-md-6 col-sm-6">
                                     <button type="reset" name="q_delete_btn" id="q_delete_btn" class="q_delete_btn form-control">취소</button>
                                  </div>
                                  <div class="col-md-6 col-sm-6">
                                     <button type="submit" name="q_submit_btn" id="q_submit_btn" class="q_submit_btn form-control">보내기</button> 
                              </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      </c:if>
      <!-- end section -->
      <!-- footer -->
      <jsp:include page="../../footer.jsp"></jsp:include>
      <!-- end footer -->
      <!-- end copyrights -->
      
   </body>
</html>