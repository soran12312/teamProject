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
<script type="text/javascript">
$(function(){
	
	$(".loc").hover(function(){
		$(this).css('cursor','pointer');
	});
	
	$(".locDiv").on('click','a',function(){ // 관심지역 클릭 시
		
		var clk = $(this);
		
		$.ajax({
			type	: 'post'
			,dataType : 'json'
			,url	: '/zTeamProject/selectAddr1.do'
			,success	: function(result){
				//alert(result);
				//console.log(result);
				
				var select = $('<select class = "addr1" name = "addr1" />')
				var opt = $('<option value = "시,도" />')
				opt.text('시,도');
				select.append(opt);
				for( row of result ){
					console.log(row['addr1']);
					var option = $('<option value = "'+row['addr1']+'" />');
					option.text(row['addr1']);
					select.append(option);
				} // end of for
				clk.parent().append(select); // DB에서 시,도 정보 셀렉트박스 옵션에 담아 화면에 출력
				clk.remove(); // 원래 존재하던 관심지역 요소제거
			}
			,error	: function(err){
				alert('error');
				console.log(err);
			}
}); // end of ajax
		
		
	}); // end of on(지역 a태그 최초 클릭 시)
	
	$(".locDiv").on('change',".addr1",function(){
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
	
	$(".locDiv").on('change','.addr2',function(){
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
					var num = sel.parent().next().attr("name").replace('location_number','');
					//alert(num);
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
					
				}
				,error	: function(err){
					alert('error');
					console.log(err);
				}
	}); // end of ajax
			
		} // end of if
		
	});//end of on(지역2 셀렉트시 이벤트)
	
	$(".locDiv").on('change','.addr3',function(){
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
					
					sel.parent().next().next().val(result);
					
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
                <button class="submitModifyBtn btn btn-go" type="submit" onclick="if(confirm('정말 변경하시겠습니까?') == false) {return false;}"><i class="far fa-edit"></i> 변경</button>
                <button class="cleModifyBtn btn btn-back" type="button" onclick="history.back();"><i class="fas fa-undo"></i> 취소</button>
              </div>
            </div>
		
            <div class="section-MyPage-body__cell">
             <div class="container"></div>
     		  <div id="Tab" class="container">	
			   <ul class="nav nav-tabs">
				<li class="active">
        		 <a href="#1" data-toggle="tab">강좌이용정보</a>
				</li>
				<li>
				 <a href="#2" data-toggle="tab">커뮤니티</a>
				</li>
				<li>
				 <a href="#3" data-toggle="tab">리뷰</a>
				</li>
				<li>
				 <a href="#4" data-toggle="tab">나의문의</a>
				</li>
			   </ul>

				<div class="tab-content ">
		 			<div class="tab-pane active" id="1">
          				<h3>&#62;내가 개설한 강좌</h3><br/>
          				<table>
          					<thead>
          						<tr>
          							<td>No.</td><td>작성일</td><td>강좌명</td>
          						</tr>
          					</thead>
          				</table>
					</div>
					<div class="tab-pane" id="2">
          				<h3>2</h3>
					</div>
         			<div class="tab-pane" id="3">
          				<h3>3</h3>
		 			</div>
		 			<div class="tab-pane" id="4">
          				<h3>4</h3>
		 			</div>
	    		</div>
  			  </div>
            </div>
          </div>
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