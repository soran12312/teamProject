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

        
            <div id="" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/nomalBack.png');">
         <div class="container">
            
              
                  
                  <form name="" class="insert_lesson_frm " id="insert_lesson_frm" action="" method="">
                  	
                     	<input type="text" name="insert_lesson_title" class="insert_lesson_title" id="insert_lesson_title" placeholder="제목을 입력해주세요">
                  
                     <div class="insert_sample_img">
                     	<img src="./resources/uploads/agent.jpg">
                    	 <input type="file"  name="insert_lesson_img1" class="insert_lesson_img1" id="insert_lesson_img1">
                  	</div>
                  		
                  		
                    
 <!-- ===옵션=== --><div name="insert_lesson_option" class="insert_lesson_option" id="insert_lesson_option"> <!-- ====================옵션======================================= -->
 						<table>
 							<tr>
 								<td>빅카테고리</td>
 								<td><select name="insert_lesson_big_category" class="insert_lesson_big_category" id="insert_lesson_big_category">
 								<option value="요리">요리</option>
 								<option value="운동">운동</option>
 								<option value="공예">공예</option>
 								<option value="IT">IT</option>
 								<option value="게임">게임</option>
 								<option value="음악">음악</option>
 								<option value="교육">교육</option>
 								<option value="인테리어">인테리어</option>
 								<option value="기타">기타</option>
 								</select></td>
 							</tr>
                    		<tr>
                    			<td>가격 : </td> 
                    			<td><input type="text" name="insert_lesson_paid" class="insert_lesson_paid" id="insert_lesson_paid"></td>
                    			<td>기부하시나요? &nbsp;<input type="checkbox" name="insert_lesson_paid" class="insert_lesson_paid" id="insert_lesson_paid"></td>
                    		</tr>
                    		<tr>
                    			<td>지역 :&nbsp;</td>
                    			<td><select name="insert_lesson_location" class="insert_lesson_paid" id="insert_lesson_paid">
                    			<option>지역1</option><option>지역2</option><option>지역3</option>
                    		</select>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>수강인원</td>
                    			<td><input type="number" name="insert_lesson_person" class="insert_lesson_paid" id="insert_lesson_paid" min="1"></td>
                    			<td>명</td>
                    		</tr>
                    		<tr>
                    			<td>해쉬태그 :&nbsp;</td>
                    			<td><input type="text" name="insert_lesson_hash" class="insert_lesson_hash" id="insert_lesson_hash" placeholder="#품i"></td>
                    		</tr>
                    		<tr>
                    			<td>개강일 :&nbsp; </td>
                    			<td><input type="date" name="insert_lesson_date1" class="insert_lesson_date1" id="insert_lesson_date1"></td>
                    		</tr>
                    		<tr>
                    			<td>종강일 :&nbsp; </td>
                    			<td><input type="date" name="insert_lesson_date2" class="insert_lesson_date2" id="insert_lesson_date2"></td>
                    	</tr>
                    </table>
                    </div>
                    		 <textarea name="insert_lesson_content" id="insert_lesson_content" class="insert_lesson_content" placeholder="내용을 입력해주세요"></textarea></br>
                    
                    
                    
                    
                    	 <button type="submit" name="insert_lesson_submit" id="insert_lesson_submit" class="insert_lesson_submit">작성완료</button>
                  	
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