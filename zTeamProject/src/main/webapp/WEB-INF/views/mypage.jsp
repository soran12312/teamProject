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
<script src="resources/js/mypage.js"></script>
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
			<strong title="마이페이지">마이페이지</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D"> 마이페이지</span>
		</h2>
	</div>
</div>
      
 <div class="section-MyPage min-height-50vh flex flex-ai-c ">
        

          
          <form name="form" action="modify_member.do" method="POST" enctype="multipart/form-data">
          <input type="hidden" name="email" value="${sessionScope.email}">   
          <div class="flex flex-jc-c">        
              <div class=MyPage_cell__title>
              	<div>
              	<c:if test="${empty sessionScope.path}">
              	<img src="resources/images/classList/noimage.jpg" width="150px" height="150px" alt=""/>
              	<input type="hidden" name='img_check' value='0'>
              	</c:if>
              	<c:if test="${not empty sessionScope.path}">
              	<img src="${sessionScope.path}" width="150px" height="150px" alt=""/>
              	<input type="hidden" name='img_check' value='1'>
              	</c:if>
              	</div>
              	<br/>
              	<input type="file" name="file">
              	<br/>
              	<span>${sessionScope.email}</span>
              	<br/>
              	<br/>
                <span>자기소개</span>
                <div class=MyPage_cell__body>
                  <textarea id="introduce" name='introduce' >${sessionScope.introduce}</textarea>
                </div>
                <br/>
                <c:if test="${sessionScope.member_grade eq 1}">
                <span>일반회원</span>
                </c:if>
                <c:if test="${sessionScope.member_grade eq 2}">
                <span>사업자회원</span>
                </c:if>
                <c:if test="${sessionScope.member_grade eq 3}">
                <span>유료회원</span>
                </c:if>
              </div>            
            <div class="section-MyPage-body__cell">
              
              <div class="MyPage_cell__title">
                <span>닉네임</span>
                <div>
                  <input name="nickname" type="text" maxlength="50" value="${sessionScope.nickname}">
                </div>
              </div>
				<input type="hidden" name="mod_location">
              <div class=MyPage_cell__title>
                <span>관심지역</span>
                <c:forEach var="LocationVO" items="${sessionScope.locList}" varStatus="status">
	                <div class='locDiv'><a class='loc${status.count}' name='loc${status.count}'>${LocationVO.addr3}</a></div>
	                <input type="hidden" class='interest_location_number${status.count}' name='interest_location_number${status.count}' value="${LocationVO.interest_location_number}">
	                <input type="hidden" name="location_number${status.count}" class="location_number${status.count}" />
	                <br/>
                </c:forEach>
              </div>
              <div class="section-MyPage-body__option flex flex-jc-fe flex-ai-fe">
                <button class="submitModifyBtn btn btn-go" type="submit" onclick="if(confirm('정말 변경하시겠습니까?') == false) {return false;}else{alert('수정되었습니다. 다시 로그인 해주세요')}"><i class="far fa-edit"></i> 변경</button>
                <button class="cleModifyBtn btn btn-back" type="button" onclick="history.back();"><i class="fas fa-undo"></i> 취소</button>
              </div>
            </div>
            </div>
		</form>
            <div class="section-MyPage-body__cell">
             <div class="container"></div>
     		  <div id="Tab" class="container">	
			   <ul class="nav nav-tabs">
				<li class="active">
        		 <a value="#1" data-toggle="tab">강좌이용정보</a>
				</li>
				<li>
				 <a value="#2" data-toggle="tab">커뮤니티</a>
				</li>
				<li>
				 <a value="#3" data-toggle="tab">리뷰</a>
				</li>
				<li>
				 <a value="#4" data-toggle="tab">나의문의</a>
				</li>
			   </ul>

				<div class="tab-content ">
		 			<div class="tab-pane active" id="1"><br/>
          				<h3>&#62; 내가 개설한 강좌</h3><br/>
          				<table id="my_class">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td><td style="padding:2px 10px 2px 10px;">작성일</td><td style="padding:2px 10px 2px 10px;">강좌명</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="ClassVO" items="${my_class}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;">${ClassVO.writing_date}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/class_detail.do?class_number=${ClassVO.class_number}">${ClassVO.class_name}</a></td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="delete_my_class btn">삭제하기</button>
          								<input type="hidden" value="${ClassVO.class_number}">
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
          				<br/>
          				<h3>&#62; 관심강좌(좋아요)</h3><br/>
          				<table id="my_like">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td><td style="padding:2px 10px 2px 10px;">좋아요 한 날짜</td><td style="padding:2px 10px 2px 10px;">강좌명</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="map" items="${my_like}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;">${map.like_date}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/class_detail.do?class_number=${map.class_number}">${map.class_name}</a></td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="cancel_like btn">좋아요취소</button>
          								<input type="hidden" value="${map.like_number}">
          							</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="class_join btn">강좌신청</button>
          								<input type="hidden" value="${map.class_number}">
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
          				<br/>
          				<h3>&#62; 내가 수강신청한 강좌</h3><br/>
          				<table id="prev_class">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td><td style="padding:2px 10px 2px 10px;">기간</td><td style="padding:2px 10px 2px 10px;">강좌명</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="map" items="${prev_class}" varStatus="status">
          					<c:if test="${map.class_state eq 1}">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;">${map.start_date} ~ ${map.end_date}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/class_detail.do?class_number=${map.class_number}">${map.class_name}</a></td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="cancel_join btn">수강취소</button>
          								<input type="hidden" value="${map.class_join_number}">
          								<input type="hidden" value="${map.class_number}">
          							</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<a class="btn" href="/zTeamProject/review_form.do?class_number=${map.class_number}">리뷰작성</a>
          							</td>
          						</tr>
          					</c:if>
          					<c:if test="${map.class_state eq 0}">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;"><del>${map.start_date} ~ ${map.end_date}</del></td>
          							<td style="padding:2px 10px 2px 10px;"><del>${map.class_name}</del></td>
          						</tr>
          					</c:if>
          					</c:forEach>
          					</tbody>
          				</table>
					</div>
					<div class="tab-pane" id="2"><br/>
          				<h3>&#62; 내가 개설한 커뮤니티</h3><br/>
          				<table id="my_guild">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td>
          							<td style="padding:2px 10px 2px 10px;">커뮤니티명</td>
          							<td style="padding:2px 10px 2px 10px;">인원</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="GuildVO" items="${my_guild}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/guild_detail.do?guild_number=${GuildVO.guild_number}">${GuildVO.guild_name}</a></td>
          							<td style="padding:2px 10px 2px 10px;">${GuildVO.current_member} / ${GuildVO.max_member}</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="delete_my_guild btn">삭제하기</button>
          								<input type="hidden" value="${GuildVO.guild_number}">
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
          				<br/>
          				<h3>&#62; 관심커뮤니티(좋아요)</h3><br/>
          				<table id="like_guild">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td>
          							<td style="padding:2px 10px 2px 10px;">좋아요 한 날짜</td>
          							<td style="padding:2px 10px 2px 10px;">커뮤니티명</td>
          							<td style="padding:2px 10px 2px 10px;">인원</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="map" items="${like_guild}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;">${map.like_date}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/guild_detail.do?guild_number=${map.guild_number}">${map.guild_name}</a></td>
          							<td style="padding:2px 10px 2px 10px;">${map.current_member} / ${map.max_member}</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="cancel_guild_like btn">좋아요취소</button>
          								<input type="hidden" value="${map.like_number}">
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
          				<br/>
          				<h3>&#62; 내가 가입한 커뮤니티</h3><br/>
          				<table id="join_guild">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td>
          							<td style="padding:2px 10px 2px 10px;">커뮤니티명</td>
          							<td style="padding:2px 10px 2px 10px;">인원</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="map" items="${join_guild}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/guild_detail.do?guild_number=${map.guild_number}">${map.guild_name}</a></td>
          							<td style="padding:2px 10px 2px 10px;">${map.current_member} / ${map.max_member}</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="cancel_guild_join btn">탈퇴하기</button>
          								<input type="hidden" value="${map.guild_join_number}">
          								<input type="hidden" value="${map.guild_number}">
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
					</div>
         			<div class="tab-pane" id="3"><br/>
          				<h3>&#62; 내가 쓴 리뷰</h3><br/>
          				<table id="my_review">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td>
          							<td style="padding:2px 10px 2px 10px;">제목</td>
          							<td style="padding:2px 10px 2px 10px;">작성일</td>
          							<td style="padding:2px 10px 2px 10px;">조회수</td>
          							<td style="padding:2px 10px 2px 10px;">좋아요</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="map" items="${my_review}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/review_detail.do?review_number=${map.review_number}">${map.title}</a></td>
          							<td style="padding:2px 10px 2px 10px;">${map.writing_date}</td>
          							<td style="padding:2px 10px 2px 10px;">${map.view_number}</td>
          							<td style="padding:2px 10px 2px 10px;">${map.review_like}</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="delete_review btn">삭제하기</button>
          								<input type="hidden" value="${map.review_number}">
          							</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<a class="btn" href="/zTeamProject/class_detail.do?class_number=${map.class_number}">강좌보러가기</a>
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
          				<br/>
          				<h3>&#62; 좋아요 누른 리뷰</h3><br/>
          				<table id="like_review">
          					<thead>
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">No.</td>
          							<td style="padding:2px 10px 2px 10px;">제목</td>
          							<td style="padding:2px 10px 2px 10px;">작성일</td>
          						</tr>
          					</thead>
          					<tbody>
          					<c:forEach var="map" items="${like_review}" varStatus="status">
          						<tr>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;"><a href="/zTeamProject/review_detail.do?review_number=${map.review_number}">${map.title}</a></td>
          							<td style="padding:2px 10px 2px 10px;">${map.writing_date}</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<button class="cancel_like btn">좋아요취소</button>
          								<input type="hidden" value="${map.like_number}">
          							</td>
          							<td style="padding:2px 10px 2px 10px;">
          								<a class="btn" href="/zTeamProject/class_detail.do?class_number=${map.class_number}">강좌보러가기</a>
          							</td>
          						</tr>
          					</c:forEach>
          					</tbody>
          				</table>
		 			</div>
		 			<div class="tab-pane" id="4"><br/>
          				<h3>&#62; 나의 문의</h3><br/>
          				<table id="my_question">
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
          					<c:forEach var="QuestionVO" items="${my_question}" varStatus="status">
          						<tr class='question'>
          							<td style="padding:2px 10px 2px 10px;">${status.count}</td>
          							<td style="padding:2px 10px 2px 10px;">${QuestionVO.question_category}</td>
          							<td style="padding:2px 10px 2px 10px;">${QuestionVO.title}</td>
          							<td style="padding:2px 10px 2px 10px;">${QuestionVO.writing_date}</td>
          							<c:if test="${QuestionVO.answer_state eq 0}"><td style="padding:2px 10px 2px 10px;">처리중</td></c:if>
          							<c:if test="${QuestionVO.answer_state eq 1}"><td style="padding:2px 10px 2px 10px;">답변완료</td></c:if>
          						</tr>
          						<tr hidden style="border:1px solid black;"><td style="padding:2px 10px 2px 10px;" colspan='5' >${QuestionVO.content}</tr>
          					</c:forEach>
          					</tbody>
          				</table>
		 			</div>
	    		</div>
  			  </div>
            </div>
          
        
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