<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0063)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>품-i</title>
<link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon" />
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/style.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
<link rel="stylesheet" href="resources/css/classList/featherlight.min.css">
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

<script type="text/javascript">
$(function(){
	if(${sessionScope.email ne map.email}){ // 404에러 방지용(세션의 이메일과 게시글의 작성자 이메일이 다를 경우 버튼 생성되기때문에 같은 조건 걸어준다.)
		if(${map.current_member ge map.max_member}){ // 현재인원수가 최대인원수 이상일 경우
			alert("마감된 강좌입니다.");
		}else{ // 현재 인원수가 최대인원수보다 적을 경우
			$('.bo_v_com').on("click","#class_Join",function(){ // 강좌신청버튼 클릭 시
				var param = {"email" : "${sessionScope.email}"
							, "class_number" : "${map.class_number}"
							};
				
				$.ajax({
					type	: 'post'
					,data	: param
					,url	: '/zTeamProject/class_Join.do' // 강좌 신청
					,success	: function(result){
						alert(result); // 신청결과 경고창으로 출력
						location.href = '/zTeamProject/class_detail.do?class_number='+${map.class_number};
					}//이후 강좌상세페이지로 리다이렉팅(강좌 현재 신청인원 새로고침하기위해서)
					,error	: function(err){
						alert('error');
						console.log(err);
					}
				}); // end of ajax
			}); // end of on(강좌신청버튼 클릭이벤트)
		} // end of if(강좌 신청인원이 최대인원보다 적은지 확인)
	} // end of if(로그인 한 사람과 글 작성자가 다른 사람이면 true)
		
	if(${sessionScope.email eq map.email}){ // 404에러 방지용(세션의 이메일과 게시글의 작성자 이메일이 같을 경우 버튼 생성되기때문에 같은 조건 걸어준다.)
		$("#class_delete").click(function(){ // 강좌삭제 버튼 클릭 시
			
			if(confirm("정말 삭제하시겠습니까?")){ // 확인문구 출력 후 확인 시 삭제, 취소 시 삭제 안함
				alert("삭제되었습니다."); // 삭제 경고창 출력
				location.href = '/zTeamProject/class_delete.do?class_number='+${map.class_number}; // 강좌 삭제
			}
		});
		
	} // end of if(로그인 한 사람과 글 작성자가 같은 사람이면 true)
	

		// 원래 탬플릿에 있던 제이쿼리
	$("a.view_image").click(function() {
	        window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
	        return false;
	    });

	    // 이미지 리사이즈
	$("#bo_v_atc").viewimageresize();
	    
	
	function board_move(href)
	{
	    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
	}
	
	function board_move(href)
	{
	    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
	}
	
	// 글자수 제한
	var char_min = parseInt(0); // 최소
	var char_max = parseInt(0); // 최대
	
}); // end of $
</script>
</head>
<body style="">
<a id="topID"></a>
<!-- 상단 시작 { -->
<div id="hd" class="">
    <h1 id="hd_h1">갤러리 1 페이지</h1>

    <div id="skip_to_container"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery#ctWrap">본문 바로가기</a></div>

	<a id="snbOpen"><b><i class="fa fa-bars" aria-hidden="true"></i> <span class="sound_only">사이드메뉴 열기</span></b></a>

    <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
			<div id="logo">
				<a href="/zTeamProject/main_view.do"><img src="resources/images/classList/logo.png" ></a>
			</div>
            <ul id="gnb_1dul">
                <li class="gnb_1dli" style="z-index:999">
                    <a href="index.jsp" target="_self" class="gnb_1da">HOME<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:997">
                    <a href="/zTeamProject/class_list.do?currentPage=1" target="_self" class="gnb_1da">강좌<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:998">
                    <a href="/zTeamProject/guild_list.do?currentPage=1" target="_self" class="gnb_1da">커뮤니티<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:996">
                    <a href="/zTeamProject/review_list.do?currentPage=1" target="_self" class="gnb_1da">리뷰<u></u></a>
                </li> 
                <li class="gnb_1dli" style="z-index:996"> 
                    <a href="/zTeamProject/mypage.do" target="_self" class="gnb_1da">마이페이지<u></u></a>
                </li> 
                <li class="gnb_1dli" style="z-index:996">
                	<a data-scroll href="/zTeamProject/logout.do" target="_self" class="gnb_1da">로그아웃<u></u></a>
                </li>
            </ul>
        </div>

		<p class="clb"></p>
    </nav>
</div>
<aside id="topSpacer"></aside>
<aside id="sideBarCover"></aside>
<!-- } 상단 끝 --><hr>


<div id="page_title" class="sbtImg" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in" >
		<h2>
			<strong title="PURE WHITE &gt; 강좌">강좌</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">강좌</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 강좌상세</span></span>
		</h2>
	</div>
</div>

<div id="ctWrap">
<div id="container">

<!-- 게시물 읽기 시작 { -->

<article id="bo_v" style="width:100%">
    <header>
        <h2 id="bo_v_title">
                        <span class="bo_v_tit">
            ${map.class_name}</span>
        </h2>
    </header>
    
    <section id="bo_v_info">
        <strong class="if_date2"><i class="fa fa-eye" aria-hidden="true"></i> ${map.view_number}회</strong>
        <strong class="if_date2"><i class="fa fa-clock-o" aria-hidden="true"></i> ${map.writing_date}</strong>
        <strong class="if_date2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;현재인원 : ${map.current_member}명</strong>
        <strong class="if_date2">&nbsp;//&nbsp;&nbsp;&nbsp;&nbsp;최대 신청가능 인원 : ${map.max_member}명</strong>
    </section>
    

    <section id="bo_v_atc">
        <h2 id="bo_v_atc_title">본문</h2>

		
        <!-- 본문 내용 시작 { -->
        <div class="bo_v_left">${map.detail}</div>
        <!-- } 본문 내용 끝 -->
		<!-- 게시자 프로필 시작 { -->
		<div class="bo_v_right">   
        <c:if test="${not empty map.member_img_path}">
        <strong><img src="${map.member_img_path}" height="100px"></strong>
        </c:if>
        <c:if test="${empty map.member_img_path}">
        <strong><img src="http://192.168.0.68:8080/zTeamProject/resources/uploads/no_pic.jpg" height="100px"></strong>
        </c:if>
        <strong><span class="sv_member">작성자 : ${map.nickname}</span><br/><textarea readonly="readonly">${map.introduce}</textarea></strong>        
        </div> 
        <!-- 게시자 프로필 끝 } -->
        

    </section>



    
    
    
    <!-- 게시물 상세 하단 버튼 시작 { -->
    <div id="bo_v_top">        
        <ul class="bo_v_left"></ul>
        <ul class="bo_v_com">
        	<li><u class="if_date2"> #${map.class_hashtag}</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
 	  		<li><strong class="if_date2"><span class="sound_only">강좌기간</span><i class="fa fa-clock-o" aria-hidden="true"></i>기간 : ${map.start_date} ~ ${map.end_date} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></li>
           <!-- 좋아요 버튼 -->
           <li><a href="/zTeamProject/insertLike.do?class_number=${map.class_number}&email=${sessionScope.email}" class="btn_b01"><i class="fa-regular fa-heart"></i> ${map.class_like}</a></li>
           <c:if test="${sessionScope.email eq map.email}">
           <!-- 삭제하기 버튼 -->
           <li><a id="class_delete" class="btn_b01">삭제하기</a></li>
           </c:if>
           <c:if test="${sessionScope.email ne map.email}">
           <!-- 신고하기 버튼 -->
           <li><a href="/zTeamProject/main_view.do#support" class="btn_b01"><i class="fa-solid fa-handcuffs"></i> 신고하기</a></li>
           <!-- 강좌 신청 버튼 -->
           <li><a id='class_Join' class="btn_b01"><i class="fa fa-inbox"></i> 강좌신청</a></li>
           </c:if>
           <!-- 목록 보기 버튼 -->
           <li><a href="/zTeamProject/class_list.do?currentPage=1" class="btn_b01"><i class="fa fa-list" aria-hidden="true"></i> 목록</a></li>
        </ul>

        
    </div>
    <div id="bo_v_info"></div>
    <!-- 게시물 상세 하단 버튼 끝 } -->
    


	
</article>
<!-- } 게시판 읽기 끝 -->


</div><!-- // #container 닫음 -->
</div><!-- ctWrap end -->  
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
<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true" style="display: none;"><span class="sound_only">페이지 상단으로 이동</span></button>
<!-- 워프 버튼 끝 } -->

<!-- 상단 현재위치 및 서브메뉴 활성화 설정// -->
<script>
$(function(){$('.snb.bo_tablegallery, .snb .snb2d_bo_tablegallery').addClass('active');});/*  보테이블 : bo_tablegallery  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tablegallery h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tablegallery a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tablegallery").index() + 1) ); } else { $('.loc1D').text('강좌'); $('.noInfoPageTit').html('<h2><a><b>갤러리</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
<!-- //현재위치 및 서브메뉴 활성화 설정 -->
<script>$(function() { /* 모바일용 메뉴바 */ var articleMgnb = $("#snb li.snb"); articleMgnb.addClass("hide"); $("#snb li.active").removeClass("hide").addClass("show"); $("#snb li.active .snb2dul").show(); $(".snb2dDown").click(function(){ var myArticle = $(this).parents("#snb li.snb"); if(myArticle.hasClass("hide")){ articleMgnb.addClass("hide").removeClass("show"); articleMgnb.find(".snb2dul").slideUp("fast"); myArticle.removeClass("hide").addClass("show"); myArticle.find(".snb2dul").slideDown("fast"); } else { myArticle.removeClass("show").addClass("hide");myArticle.find(".snb2dul").slideUp("fast"); } }); });</script>
<!-- } 하단 끝 -->

</body>
</html>