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
<script src="resources/js/guild_form.js"></script>    
   
</head>
<body class="main">

<%--<jsp:include page="new_header2.jsp"></jsp:include>--%>

<div class = "background">
	      <div class="background_img">
	      <div class="main_info_div">
	      
<form class="insert_guild_frm " id="insert_guild_frm" action="/zTeamProject/guild_insert.do" method="post" >
                  	
                     	<input type="text" name="guild_name" class="guild_name" id="guild_name" placeholder="제목을 입력해주세요" required>
                  
                  <input type="hidden" name='email' value="${sessionScope.email}">
                    
 			<!-- ===옵션=== -->
 			<div name="insert_guild_option" class="insert_guild_option" id="insert_guild_option"> 
 			<!-- ====================옵션======================================= -->
 						<table>
                    		<tr>
                    			<td>지역 :&nbsp;</td>
                    			<td class='select_location' colspan="2"></td>
                    		</tr>
                    		<tr>
                    			<td>모임인원</td>
                    			<td><input type="number" name="max_member" class="max_member" id="max_member" min="1" required></td>
                    			<td>명</td>
                    			<td><input type="hidden" name="path" id="path"></td>
                    		</tr>
                    </table>
                    </div>
                    		 <textarea id="summernote" class="summernote" placeholder="내용을 입력해주세요"></textarea></br>
                    <textarea id="detail" name="detail" style="display: none;"></textarea>
                    
                    	 <button type="submit" name="insert_guild_submit" id="insert_guild_submit" class="insert_guild_submit" onclick="$('#detail').val($('#summernote').summernote('code'));">작성완료</button>
                  	
                   </form>
                   </div>
                   </div>
                   </div>

<!-- 하단 시작 { -->
<footer id="footer">
    <dl>
        <dt><img src="resources/images/classList/logo.png" alt=""></dt>
        <dd>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/privacy.php .term_area">개인정보처리방침</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/term.php .term_area" data-featherlight-type="ajax">이용약관</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/noEmail.php .term_area" data-featherlight-type="ajax">이메일주소 무단수집거부</a>
        </dd>
    </dl>
	<address>
		<span>서울 금천구 가산디지털 2로 101 한라원앤원타워 B동 3층 B강의실 Team.5랑캐</span>
		 <em>|</em><span> Tel. 070-0000-0000</span> 
		 <em>|</em><span> Fax. 050-0000-0000</span> 
		 <em>|</em><span> E-mail. <a href="ch_db@naver.com">ch_db@naver.com</a></span> 
		<br><span>본 샘플사이트를 베이스로 5조한테 제작요청 가능합니다.</span>	</address>
	<p><span>Copyright</span> © <b>sample.paged.kr</b> <span>All rights reserved.2023</span></p>
</footer>
<!-- 워프 버튼 시작 { -->
<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true" style="display: none;"></button>
<!-- 워프 버튼 끝 } -->
<!-- 하단 끝 -->

</body>
</html>