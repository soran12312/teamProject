<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>품-i</title>
    
    <!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon" />
<link rel="stylesheet" href="resources/css/summernote/summernote-lite.css">	
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="resources/new_Css_Sibal.css">
   <!-- 소스 다운 -->
<script src="https://unpkg.com/@yaireo/tagify"></script>
<!-- 폴리필 (구버젼 브라우저 지원) -->
<script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
<script src="resources/js/class_form.js"></script>
    

</head>
<body class="main">

<%--<jsp:include page="new_header2.jsp"></jsp:include>--%>

<div class = "background">
	      <div class="background_img">
	      <div class="main_info_div">
	      
<form class="insert_lesson_frm " id="insert_lesson_frm" action="/zTeamProject/class_insert.do" method="post" >
                  	
                     	<input type="text" name="class_name" class="class_name" id="class_name" placeholder="제목을 입력해주세요" required>
                  
                  <input type="hidden" name='email' value="${sessionScope.email}">
                    
 			<!-- ===옵션=== -->
 			<div name="insert_lesson_option" class="insert_lesson_option" id="insert_lesson_option"> 
 			<!-- ====================옵션======================================= -->
 						<table>
 							<tr>
 								<td>카테고리</td>
 								<td><select name="category_number" class="category_number" id="category_number">
 								<option value="1">요리</option>
 								<option value="2">운동</option>
 								<option value="3">공예</option>
 								<option value="4">IT</option>
 								<option value="5">게임</option>
 								<option value="6">음악</option>
 								<option value="7">교육</option>
 								<option value="8">인테리어</option>
 								<option value="9">기타</option>
 								</select></td>
 							</tr> 
                    		<tr>
                    			<td>가격 : </td> 
                    			<td><input type="text" name="price" class="price" id="price" required></td>
                    			<td>기부하시나요? &nbsp;<input type="checkbox" class="insert_lesson_paid" id="free"></td>
                    			<td><input type="hidden" name="path" id="path"></td>
                    		</tr>
                    		<tr>
                    			<td>지역 :&nbsp;</td>
                    			<td class='select_location' colspan="2">
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>수강인원</td>
                    			<td><input type="number" name="max_member" class="max_member" id="max_member" min="1" required></td>
                    			<td>명</td>
                    		</tr>
                    		<tr>
                    			<td>해쉬태그 :&nbsp;</td>
                    			<td colspan="2"><input type="text" name="hashtag" class="hashtag" id="hashtag" placeholder="태그입력 후 엔터"></td>
                    		</tr>
                    		<tr>
                    			<td>개강일 :&nbsp; </td>
                    			<td><input type="date" name="start_date" class="start_date" id="start_date" required></td>
                    		</tr>
                    		<tr>
                    			<td>종강일 :&nbsp; </td>
                    			<td><input type="date" name="end_date" class="end_date" id="end_date" required></td>
                    	</tr>
                    </table>
                    </div>
                    		 <textarea id="summernote" class="summernote" placeholder="내용을 입력해주세요"></textarea></br>
                    <textarea id="detail" name="detail" style="display: none;"></textarea>
                    
                    	 <button type="submit" name="insert_lesson_submit" id="insert_lesson_submit" class="insert_lesson_submit"  onclick="$('#detail').val($('#summernote').summernote('code'));">작성완료</button>
                  	
                   </form>
                   </div>
                   </div>
                   </div>

<jsp:include page="../../new_footer.jsp"></jsp:include>

</body>
</html>