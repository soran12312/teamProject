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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
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
<script src="resources/js/admin_answer.js"></script>
</head>
<body>
<body class="realestate_version">
      <jsp:include page="../../new_header2.jsp"></jsp:include>
     
<aside id="topSpacer"></aside>
<aside id="sideBarCover"></aside>
<!-- } 상단 끝 --><hr>

<!-- 콘텐츠 시작 { -->

<div id="page_title" class="sbtImg" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="문의게시판">문의게시판</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D"> 문의게시판</span>
		</h2>
	</div>
</div>
     
<table id="question">
    <thead>
        <tr>
            <td style="padding:2px 10px 2px 10px;">No.</td>
            <td style="padding:2px 10px 2px 10px;">카테고리</td>
            <td style="padding:2px 10px 2px 10px;">제목</td>
            <td style="padding:2px 10px 2px 10px;">작성일</td>
            <td style="padding:2px 10px 2px 10px;">답변상태</td>           
        </tr>
    </thead>
    <tbody>
        <c:forEach var="question" items="${questionList}" varStatus="status">
            <tr class='question'>
                <td style="padding:2px 10px 2px 10px;">${question.question_number}</td>
                <td style="padding:2px 10px 2px 10px;">${question.question_category}</td>
                <td style="padding:2px 10px 2px 10px;">${question.title}</td>
                <td style="padding:2px 10px 2px 10px;">${question.writing_date}</td>
                <c:if test="${question.answer_state eq 0}">
                    <td style="padding:2px 10px 2px 10px;">처리중</td>
                </c:if>
                <c:if test="${question.answer_state eq 1}">
                    <td style="padding:2px 10px 2px 10px;">답변완료</td>
                </c:if>
                <td style="padding:2px 10px 2px 10px;">
                    <a href="javascript:void(0);" onclick="showContent(${status.index})">수정</a>
                </td>
            </tr>
            <tr id="content_${status.index}" style="border:1px solid black; display:none;">
                <td style="padding:2px 10px 2px 10px;" colspan='6'>
                    <form action="edit" method="post">
                        <input type="hidden" name="questionNumber" value="${question.question_number}">
                        <textarea name="content">${question.content}</textarea>
                        <button type="submit">저장</button>
                        <button type="button" onclick="hideContent(${status.index})">취소</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
      					
<div id="editFormContainer" style="display: none;">
  <h2>답변하기</h2>
   <form id="editForm">
    <input type="hidden" id="editQuestionNumber" />
    <label for="editTitle">제목</label>
    <input type="text" id="editTitle" />
    <label for="editContent">내용</label>
    <textarea id="editContent"></textarea>
    <button type="button" onclick="saveQuestion()">저장</button>
    <button type="button" onclick="cancelEdit()">취소</button>
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
     
   </body>

</body>
</html>