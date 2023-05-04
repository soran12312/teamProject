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

        
            <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/nomalBack.png');">
         <div class="container">
            
              
                  
                  <form name="insert_review_frm" class="insert_review_frm" id="insert_review_frm" action="" method="">
                  	
                     	<input type="text" name="insert_review_title" class="insert_review_title" id="insert_review_title" placeholder="제목을 입력해주세요">
                  
                     <div class="insert_sample_img">
                     	<img src="./resources/uploads/agent.jpg">
                    	 <input type="file"  name="insert_review_img1" class="insert_review_img1" id="insert_review_img1">
                  	</div>
                  		
                  		
                    
 <!-- ===옵션=== --><div name="insert_review_option" class="insert_review_option" id="insert_review_option"> <!-- ====================옵션======================================= -->
 						<table>
                    		<tr>
                    			<td></td>
                    		</tr>
                     </table>
                    </div>
                    		 <textarea name="insert_review_content" id="insert_review_content" class="insert_review_content" placeholder="강좌는 어땠나요?"></textarea></br>
                     <button type="submit" name="insert_review_submit" id="insert_review_submit" class="insert_review_submit">작성완료</button>	
                   </form>
                 
         
         </div><!-- end container -->
      </div>
      -->
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