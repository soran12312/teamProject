<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <!-- Site Metas -->
   <title>품-i</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
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

   
   <!-- Modernizer for Portfolio -->
   <script src="resources/js/modernizer.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   <![endif]-->
   </head>
   <body class="realestate_version">
      <!-- LOADER -->
      <div id="preloader">
         <img class="preloader" src="resources/images/loaders/loader-realestate.gif" alt="">
      </div>
      <!-- end loader -->
      <!-- END LOADER -->
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
                     <li><a data-scroll href="#features">오늘의 장인<span class="hidden-xs">*</span></a></li>
                     <li><a data-scroll href="#agent">오늘의 리뷰</a></li>
                     <li><a data-scroll href="#gallery">오늘의 기부</a></li>
                     <li><a data-scroll href="#testimonials">오늘의 수업</a></li>
                     <li><a data-scroll href="#support">고객센터</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header><!--=====END of header========================================================================================================= -->
      <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/MainBack.png');">
         <div class="container">
            <div class="row">
            <div class="col-md-6 col-sm-12">
                  <div class="big-tagline clearfix">
                     <h2 id='main_info' class='main_info'>
                     회원정보를 알려주세요 </br>
                     동네정보를 데려올게요!</h2>
                  </div>
               </div>
               <div class="col-md-6 wow slideInRight hidden-xs hidden-sm">
                  <div class="contact_form new_member_form">
                     <form id="new_member_form " name="new_member_form" class="new_member_form row  method="post">
                        <fieldset class="row-fluid">
                        	<div class="new_member_form_div">
            				<h2 class="new_member_name_h2">닉네임</h2>
				            		<input id="new_member_name" name="new_member_name" class="new_member_name ">
				            <h2 class="new_member_info_h2">자기소개</h2>
				            		<textarea id="new_member_info"name="new_member_info"class="new_member_info col-lg-12 col-md-12 col-sm-12 col-xs-12" ></textarea>
				            <h2 class="new_member_addr_h2">동네선택</h2>
				            	
				            		<select id="new_member_addr1" name="new_member_addr1" class="new_member_addr1">
				            			<option>addr1</option>
				            		</select>
				            		<select id="new_member_addr2" name="new_member_addr2" class="new_member_addr2">
				            			<option>addr2</option>
				            		</select>
				            		<select id="new_member_addr3" name="new_member_addr3" class="new_member_addr3">
				            			<option>addr3</option>
				            		</select>
				            	
					            	<button type="button" id="new_member_plusbtn" name="new_member_plusbtn" class="new_member_plusbtn">+</button>
					            	<br/>
				       
				           <button  type="submit" name="new_member_submit" class="new_member_submit" id="new_member_submit">가입하기</button>
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
        
            <div id="" class="parallax first-section new_member_div" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/nomalBack.png');">
    		 <div class="container">
            <form id="new_member_form" name="new_member_form" class="new_member_form">
            	<div>
            	<h2 class="new_member_name_h2">닉네임</h2>
            	</div>
            		<input id="new_member_name" name="new_member_name" class="new_member_name">
            	
            	<h2 class="new_member_info_h2">자기소개</h2>
            	<textarea id="new_member_info"name="new_member_info"class="new_member_info"></textarea>
            	
            	<h2 class="new_member_addr_h2">동네선택</h2>
            		<select id="new_member_addr1" name="new_member_addr1" class="new_member_addr1">
            			<option>addr1</option>
            		</select>
            		<select id="new_member_addr2" name="new_member_addr2" class="new_member_addr2">
            			<option>addr2</option>
            		</select>
            		<select id="new_member_addr3" name="new_member_addr3" class="new_member_addr3">
            			<option>addr3</option>
            		</select>
            	<br/>
            	<button  type="submit" name="new_member_submit" class="new_member_submit" id="new_member_submit">가입하기</button>
            </form>
           </div>		
</div>
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
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
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
</html>