<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>품-i</title>
    
    <!-- include libraries(jQuery, bootstrap) -->
    <link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon" />
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <link rel="stylesheet" href="resources/css/summernote/summernote-lite.css">	
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>

    <link rel="stylesheet" href="resources/new_Css_Sibal.css">
    
    <!-- 소스 다운 -->
<script src="https://unpkg.com/@yaireo/tagify"></script>
<!-- 폴리필 (구버젼 브라우저 지원) -->
<script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
<script src="resources/js/review_form.js"></script>
</head>
<body class="main">

<%--<jsp:include page="new_header2.jsp"></jsp:include>--%>

<div class = "background">
	      <div class="background_img">
	      <div class="main_info_div">
	      
<form class="insert_review_frm " id="insert_review_frm" action="/zTeamProject/review_insert.do" method="post" >
                  	
                     	<input type="text" name="title" class="title" id="title" placeholder="제목을 입력해주세요" required>
                  
                  <input type="hidden" name='email' value="${sessionScope.email}">
                  <input type="hidden" name='class_number' value="${param.class_number}">
                  <input type="hidden" name="path" id="path">
 			<!-- ===옵션=== -->
 			<div name="insert_review_option" class="insert_review_option" id="insert_review_option"> 
 			<!-- ====================옵션======================================= -->
 						
                    </div>
                    		 <textarea id="summernote" class="summernote" placeholder="내용을 입력해주세요"></textarea></br>
                    <textarea id="review_content" name="review_content" style="display: none;"></textarea>
                    
                    	 <button type="submit" name="insert_review_submit" id="insert_review_submit" class="insert_review_submit"  onclick="$('#review_content').val($('#summernote').summernote('code'));">작성완료</button>
                  	
                   </form>
                   </div>
                   </div>
                   </div>

<!-- 하단 시작 { -->
<jsp:include page="../../new_footer.jsp"></jsp:include>
<!-- 워프 버튼 시작 { -->
<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true" style="display: none;"><span class="sound_only">페이지 상단으로 이동</span></button>
<!-- 워프 버튼 끝 } -->
<!-- 하단 끝 -->
</body>
</html>