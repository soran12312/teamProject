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
   <link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon" />
   <!-- Site CSS -->
   <link rel="stylesheet" href="resources/new_Css_Sibal.css">
	
   <!-- Modernizer for Portfolio -->
   <script src="resources/js/modernizer.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   <![endif]-->
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   <script src="resources/js/member_join_form.js"></script>

   </head>
   <body class="main">
       <!-- header -->
   <jsp:include page="../../new_header.jsp"></jsp:include>
   <!-- end header --><!--=====END of header========================================================================================================= -->
      <div class = "background">
	      <div class="background_img">
	      	<div class="main_info_div">
                     <h2 id='main_info' class='main_info'>
                     회원정보를 알려주세요 </br>
                     동네정보를 데려올게요!</h2>
            
            	<form id="new_member_form " name="new_member_form" class="new_member_form"  method="post" action="/zTeamProject/insertMember.do">
                        	<div class="new_member_form_div">
            				<h2 class="new_member_name_h2">닉네임</h2>
            						<input type="hidden" name="email" value="${member.email}">
				            		<input id="new_member_name" name="nickname" class="new_member_namel" value="${member.nickname}" required>
				            <h2 class="new_member_info_h2">자기소개</h2>
				            <div>
				            		<textarea id="new_member_info" name="introduce" class="new_member_info form-control" required></textarea>
				            </div>
				            <div>
				            <h2 class="new_member_addr_h2">동네선택</h2>
				            </div>
				            <div id='select_location'>
				            <div>
				            	<span id="location1" class="select_location" value="1">
				            		<select id="addr1" name="addr1" class="addr1">
				            		<option>시,도</option>
				            		<c:forEach var="loc1" items="${list1}">
				            			<option value="${loc1.addr1}">${loc1.addr1}</option>
				            		</c:forEach>
				            		</select>
				            	</span>
				       		</div>
				       		<div>
				       		<span id="location2" class="select_location" value="2">
				            		<select id="addr1" name="addr1" class="addr1">
				            		<option>시,도</option>
				            		<c:forEach var="loc1" items="${list1}">
				            			<option value="${loc1.addr1}">${loc1.addr1}</option>
				            		</c:forEach>
				            		</select>
				            	</span>	
				       		</div>
				       		<div>
				       		<span id="location3" class="select_location" value="3">
				            		<select id="addr1" name="addr1" class="addr1">
				            		<option>시,도</option>
				            		<c:forEach var="loc1" items="${list1}">
				            			<option value="${loc1.addr1}">${loc1.addr1}</option>
				            		</c:forEach>
				            		</select>
				            	</span>	
				       		</div>
				       		</div>
				           <button  type="submit" name="new_member_submit" class="new_member_submit" id="new_member_submit" onclick='if($(".location_number").length != 3){alert("관심지역을 선택해주세요");return false;}'>가입하기</button>
							</div>                       
                     </form>
            </div>
	      </div>
	      </div>
        
    
       <jsp:include page="../../new_footer.jsp"></jsp:include>

      <!-- end copyrights -->
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      
   </body>
</html>