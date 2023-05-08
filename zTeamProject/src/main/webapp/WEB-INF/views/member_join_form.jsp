<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
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
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
   		$(".select_location").on('change',".addr1",function(){
   			//alert($(this).val());
   			if($(this).val()!="시,도"){
   				
   				var sel = $(this);
   				var param = { addr1 : $(this).val().trim() };
   				
   				$.ajax({
   					type	: 'post'
   					,data	: param
   					,dataType : 'json'
   					,url	: '/zTeamProject/selectAddr2.do'
   					,success	: function(result){
   						//alert(result);
   						//console.log(result);
   						
   						sel.nextAll().remove()
   						
   						var select = $('<select class = "addr2" name = "addr2" />')
   						var opt = $('<option value = "시,군,구" />')
   						opt.text('시,군,구');
   						select.append(opt);
   						for( row of result ){
   							console.log(row['addr2']);
   							var option = $('<option value = "'+row['addr2']+'" />');
   							option.text(row['addr2']);
   							select.append(option);
   						} // end of for
   						sel.parent().append(select);
   						
   					}
   					,error	: function(err){
   						alert('error');
   						console.log(err);
   					}
   		}); // end of ajax
   				
   			} // end of if
   			
   		});//end of on(지역1 셀렉트시 이벤트)
   		
   		$(".select_location").on('change','.addr2',function(){
   			//alert($(this).val());
   			if($(this).val()!="시,군,구"){
   				var sel = $(this);
   				var param = { addr2 : $(this).val().trim() };
   				
   				$.ajax({
   					type	: 'post'
   					,data	: param
   					,dataType : 'json'
   					,url	: '/zTeamProject/selectAddr3.do'
   					,success	: function(result){
   						//alert(result);
   						//console.log(result);
   						
   						sel.nextAll().remove()
   						
   						var select = $('<select class = "addr3" name = "addr3" />')
   						var opt = $('<option value = "법정동명" />')
   						opt.text('법정동명');
   						select.append(opt);
   						for( row of result ){
   							console.log(row['addr3']);
   							var option = $('<option value = "'+row['addr3']+'" />');
   							option.text(row['addr3']);
   							select.append(option);
   						} // end of for
   						sel.parent().append(select);
   						var location_number = $('<input type="hidden" name="location_number" id="location_number" />');
   						sel.parent().append(location_number);
   						
   					}
   					,error	: function(err){
   						alert('error');
   						console.log(err);
   					}
   		}); // end of ajax
   				
   			} // end of if
   			
   		});//end of on(지역2 셀렉트시 이벤트)
   		
   		$(".select_location").on('change','.addr3',function(){
   			//alert($(this).val());
   			if($(this).val()!="시,군,구"){
   				var sel = $(this);
   				var param = { 
   						addr1 : $(this).prev().prev().val().trim()
   						,addr2 : $(this).prev().val().trim()
   						,addr3 : $(this).val().trim() };
   				
   				$.ajax({
   					type	: 'post'
   					,data	: param
   					,dataType : 'json'
   					,url	: '/zTeamProject/selectLocNumByAddr.do'
   					,success	: function(result){
   						//alert(result);
   						//console.log(result);
   						
   						sel.next().val(result);
   						
   					}
   					,error	: function(err){
   						alert('error');
   						console.log(err);
   					}
   		}); // end of ajax
   				
   			} // end of if
   			
   		});//end of on(지역3 셀렉트시 이벤트)
   		
   		
		
	}); // end of $
	</script>
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
            						<input type="hidden" name="email" value="${member.email}">
				            		<input id="new_member_name" name="nickname" class="new_member_namel" value="${member.nickname}">
				            <h2 class="new_member_info_h2">자기소개</h2>
				            <div class='col-xs-12'>
				            		<textarea id="new_member_info" name="introduce" class="new_member_info form-control" ></textarea>
				            </div>
				            <div>
				            <h2 class="new_member_addr_h2">동네선택</h2>
				            </div>
				            <div id='select_location'>
				            <div>
				            	<span id="location1" class="select_location">
				            		<select id="addr1" name="addr1" class="addr1">
				            		<option>시,도</option>
				            		<c:forEach var="loc1" items="${list1}">
				            			<option value="${loc1.addr1}">${loc1.addr1}</option>
				            		</c:forEach>
				            		</select>
				            	</span>	
				            	
					            	<!-- <button type="button" id="new_member_plusbtn" name="new_member_plusbtn" class="new_member_plusbtn">+</button>
					            	<br/> -->
				       		</div>
				       		<div>
				       		<span id="location2" class="select_location">
				            		<select id="addr1" name="addr1" class="addr1">
				            		<option>시,도</option>
				            		<c:forEach var="loc1" items="${list1}">
				            			<option value="${loc1.addr1}">${loc1.addr1}</option>
				            		</c:forEach>
				            		</select>
				            	</span>	
				       		</div>
				       		<div>
				       		<span id="location3" class="select_location">
				            		<select id="addr1" name="addr1" class="addr1">
				            		<option>시,도</option>
				            		<c:forEach var="loc1" items="${list1}">
				            			<option value="${loc1.addr1}">${loc1.addr1}</option>
				            		</c:forEach>
				            		</select>
				            	</span>	
				       		</div>
				       		</div>
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
   <!-- <script src="resources/js/map.js"></script> -->
   </body>
</html>