<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<!-- saved from url=(0090)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&sfl=&stx=&sop=&wr_id=39&page=0 -->
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>질문답변</title>
<link rel="stylesheet" href="./resources/question/default.css">
<link rel="stylesheet" href="./resources/question/style.css">
<link rel="stylesheet" href="./resources/question/board.common.css">
<link rel="stylesheet" href="./resources/question/font-awesome.min.css">
<link rel="stylesheet" href="./resources/question/mobile.css">
<link rel="stylesheet" href="./resources/question/contents.css">
<link rel="stylesheet" href="./resources/question/featherlight.min.css">
<!--[if lte IE 8]><script src="http://sample.paged.kr/purewhite/js/html5.js"></script><![endif]-->
<script>
	var g5_url = "";
	var g5_bbs_url = "";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "";
	var g5_bo_table = "qna";
	var g5_sca = "";
	var g5_editor = "smarteditor2";
	var g5_cookie_domain = "";
</script>
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="./resources/question/jquery.menu.min.js"></script>
<script src="./resources/question/common.js"></script>
<script src="./resources/question/WEBsiting.js"></script>
<script src="./resources/question/wrest.js"></script>
<script src="./resources/question/placeholders.min.js"></script>
<script src="./resources/question/jquery.shuffleLetters.min.js"></script>
<script src="./resources/question/featherlight.min.js"></script>


<script type="text/javascript">

$(function(){
	
	
	// 답변 등록 버튼 클릭 시 실행되는 함수
	  function addAnswer() {
	    // 답변 등록 버튼 요소를 가져옴
	    const answerBtn = document.querySelector('.btn_b02');
	    // 답변 등록 버튼 요소를 클릭하면 실행될 함수 등록
	    answerBtn.addEventListener('click', () => {
	      // 답변 입력을 받을 텍스트 박스 요소 생성
	      const answerInput = document.createElement('textarea');
	      answerInput.setAttribute('id', 'answer-input');
	      answerInput.setAttribute('name', 'answer');
	      // 답변 입력 텍스트 박스를 답변목록 바로 위에 추가
	      const vcSection = document.querySelector('#bo_vc');
	      vcSection.parentNode.insertBefore(answerInput, vcSection);
	      
	      // 답변 제출 버튼 생성
	      const submitBtn = document.createElement('button');
	      submitBtn.setAttribute('id', 'answer-submit');
	      submitBtn.textContent = '답변 제출';
	      // 답변 입력 텍스트 박스 바로 아래에 답변 제출 버튼 추가
	      answerInput.parentNode.insertBefore(submitBtn, answerInput.nextSibling);
	      // 답변 제출 버튼 클릭 시 실행되는 함수 등록
	      submitBtn.addEventListener('click', () => {
	        // 입력된 답변 텍스트를 가져옴
	        const answerText = document.querySelector('#answer-input').value;
	        console.log(answerText);
	        
	        // 입력된 답변을 답변목록 아래에 보여줌
	        const emptyMsg = document.querySelector('#bo_vc_empty');
	        emptyMsg.innerHTML = `답변: ${answerText}`;
	        
	        
	        // question테이블의 answer_state를 1로 변경
	        // 여기서는 AJAX를 이용하여 서버에 요청하고 처리할 수 있습니다.
	        
	       
	        
	        // 답변 제출 후에는 답변 입력 텍스트 박스와 제출 버튼 요소를 제거함
	        answerInput.parentNode.removeChild(answerInput);
	        submitBtn.parentNode.removeChild(submitBtn);
	        
	      });
	    });
	  }
		
	
	
	addAnswer();
		

});




</script>



</head>
<body style="">
	<a id="topID"></a>
	<!-- 상단 시작 { -->
	<div id="hd" class="">
		<h1 id="hd_h1">답변이 없다면 접수완료로만 표시됩니다 (비밀번호0000) &gt; 질문답변</h1>

		<div id="skip_to_container">
			<a
				href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;sfl=&amp;stx=&amp;sop=&amp;wr_id=39&amp;page=0#ctWrap">본문
				바로가기</a>
		</div>

		<div id="tnb">
			

		</div>
		<a id="snbOpen"><b><i class="fa fa-bars" aria-hidden="true"></i>
				<span class="sound_only">사이드메뉴 열기</span></b></a>

			<div class="gnb_wrap">
					
				
				<ul id="gnb_1dul">
					<li class="gnb_1dli" style="z-index: 999"><a href=""
						target="_self" class="gnb_1da">ABOUT<u></u></a> <span class="bg">하위분류</span>
						<ul class="gnb_2dul">
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">인사말</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">회사소개</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">연혁</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">오시는 길</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">스타일 샘플</a></li>
						</ul></li>
					<li class="gnb_1dli" style="z-index: 998"><a href=""
						target="_self" class="gnb_1da">BUSINESS<u></u></a> <span
						class="bg">하위분류</span>
						<ul class="gnb_2dul">
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">사업분야</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">제품소개(갤러리형)</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">제품소개(웹진형)</a></li>
						</ul></li>
					<li class="gnb_1dli" style="z-index: 997"><a href=""
						target="_self" class="gnb_1da">게시판샘플<u></u></a> <span class="bg">하위분류</span>
						<ul class="gnb_2dul">
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">기본게시판</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">Q&amp;A게시판</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">FAQ게시판</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">웹진형게시판</a></li>
							<li class="gnb_2dli"><a href="" target="_self"
								class="gnb_2da">폼메일</a></li>
						</ul></li>

					<li class="gnb_1dli allSchBoxWr">
					
						
					
						
						<div id="allSchBox">
							<fieldset>
								<legend>사이트 내 전체검색</legend>
								<form name="fsearchbox" method="get" action=""
									onsubmit="return fsearchbox_submit(this);">
									<input type="hidden" name="sfl" value="wr_subject||wr_content">
									<input type="hidden" name="sop" value="and"> <label
										for="sch_stx" class="sound_only">검색어 필수</label> <input
										type="text" name="stx" id="sch_stx" class="topSchFocus"
										maxlength="20" placeholder="Search...">
									<button type="submit" id="sch_submit" value="검색">
										<i class="fa fa-search" aria-hidden="true"></i><span
											class="sound_only">검색</span>
									</button>
									<a id="allSchBoxClose"><i class="fa fa-close"
										aria-hidden="true"></i><i class="sound_only">전체검색 닫기</i></a>
								</form>
								<script>
									function fsearchbox_submit(f) {
										if (f.stx.value.length < 2) {
											alert("검색어는 두글자 이상 입력하십시오.");
											f.stx.select();
											f.stx.focus();
											return false;
										} /* 검색에 많은 부하가 걸리는 경우 이 주석을 제거하세요. */
										var cnt = 0;
										for (var i = 0; i < f.stx.value.length; i++) {
											if (f.stx.value.charAt(i) == ' ')
												cnt++;
										}
										if (cnt > 1) {
											alert("빠른 검색을 위하여 검색어에 공백은 한개만 입력할 수 있습니다.");
											f.stx.select();
											f.stx.focus();
											return false;
										}
										return true;
									}
								</script>
							</fieldset>
						</div>

					</li>
				</ul>
			</div>

			<p class="clb"></p>
		</nav>
	</div>
	<aside id="topSpacer"></aside>
	<aside id="sideBarCover"></aside>
	<!-- } 상단 끝 -->
	<hr>

	<!-- 콘텐츠 시작 { -->

	<div id="page_title" class="sbtImg subTopBg_03">
		<div class="page_title_in">
			<h2>
				<strong title="답변이 없다면 접수완료로만 표시됩니다 (비밀번호0000) &gt; 답변">답변</strong>
			</h2>
		</div>
	</div>

	<div id="ctWrap">

		<div id="container">

			<script src="resouces/question/viewimageresize.js"></script>

			<!-- 게시물 읽기 시작 { -->

			<article id="bo_v" style="width: 100%">
				<header>
					<h2 id="bo_v_title">
						<span class="qnaIco qnaIco3">
						<i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span> 
						
						<span class="bo_v_tit"> 답변이
							없다면 접수완료로만 표시됩니다 (비밀번호0000)</span>
					</h2>
				</header>

				<section id="bo_v_info">
					<h2>페이지 정보</h2>
					<span class="sound_only">작성자</span> <strong><span
						class="sv_guest">질문자명</span></strong> <span class="sound_only">조회</span><strong><i
						class="fa fa-eye" aria-hidden="true"></i> 72회</strong> <strong
						class="if_date"><span class="sound_only">작성일</span><i
						class="fa fa-clock-o" aria-hidden="true"></i> 18-01-31 16:30</strong>
				</section>

				<section id="bo_v_atc">
					<h2 id="bo_v_atc_title">본문</h2>


					<div id="bo_v_img"></div>

					<!-- 본문 내용 시작 { -->
					<div id="bo_v_con">
						<p>페이지디 반응형 홈페이지 테마의 Q&amp;A 반응형 게시판입니다.&nbsp;</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>질문답변 게시판 등록 테스트입니다.</p>
						<p>
							<br>
						</p>
						<p>질문게시판 게시판 설정안내</p>
						<p>
							<br>
						</p>
						<p>비밀글 사용 -&gt; 무조건</p>
						<p>
							<br>
						</p>
						<p>글쓰기 권한 1</p>
						<p>
							<br>
						</p>
						<p>글보기 권한 1</p>
						<p>
							<br>
						</p>
						<p>글답변 권한 10(게시판의 답변기능은 사용하지 않습니다.)</p>
						<p>
							<br>
						</p>
						<p>댓글 권한 1(작성자와 관리자만 확인 가능하며 댓글 기능으로 해당 게시글에 답변을 하실 수 있습니다.)</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>기타 게시판 관련 다른 설정은 운영하시는 홈페이지의 특성에 맞게 변경하여 사용하시기 바랍니다.</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>반응형 게시판은 접속하는 디바이스의 화면 크기에 따라 각각 알맞은 사이즈로 자동으로 변환되어 최적화된
							화면으로 보실 수 있습니다.</p>
						<p>웹사이팅에서 제작한 페이지디 반응형 홈페이지 테마를 이용하시면 본 테마에 반응형 갤러리 게시판이 포함되어
							있어 간단한 설정만으로 손쉽게 사용이 가능합니다. 페이지디 반응형 홈페이지 테마는 레이아웃 부터 각
							게시판(기본게시판, 질문답변 게시판, FAQ게시판, 웹진형 게시판, 갤러리게시판, 제품소개 게시판 등), 기타
							자주사용되는 대부분의 페이지가 모두 반응형으로 제작되어 있어 단기간에 고퀄리티 반응형 홈페이지 제작 진행이
							가능합니다.</p>
						<div>
							<br>
						</div>
						<div>
							단기간의 컨텐츠 작업만으로도 전혀다른 홈페이지로 변하는 마법같은 웹사이트 템플릿!
							<p>
								<br>
							</p>
							<p>단기간의 컨텐츠 작업만으로도 전혀다른 홈페이지로 변하는 마법같은 웹사이트 템플릿!</p>
							<p>
								<br>
							</p>
							<p>페이지디 반응형 홈페이지 테마는 기업소개 홈페이지, 회사소개 홈페이지, 음식점 홈페이지, 제품소개형
								홈페이지, 개인 홈페이지, 포트폴리오 사이트 등 다양한 홈페이지로의 변화가 가능합니다.</p>
						</div>
					</div>
					<!-- } 본문 내용 끝 -->



				</section>

				<div id="bo_v_share">

					<!--  추천 비추천 시작 { -->
					<!-- }  추천 비추천 끝 -->


				</div>




				<!-- 게시물 상단 버튼 시작 { -->
				<div id="bo_v_top">

					

					<ul class="bo_v_com">

						<li><a href="./admin_question" class="btn_b01 btn"><i class="fa fa-list"
								aria-hidden="true"></i> 목록</a></li>
						<li><a class="btn_b02 btn"><i
								class="fa fa-pencil" aria-hidden="true"></i> 답변등록</a></li>
					</ul>

					<!--         <ul class="bo_v_nb">
                        <li class="btn_next transOJ"> <a href="./board.php?bo_table=qna&amp;wr_id=36"><i class="fa fa-arrow-right" aria-hidden="true"></i> <span class="sound_only">다음글 </span> <b>질문드립니다(비밀번호0000) </b></a> </li>        </ul>
         -->
				</div>
				<!-- } 게시물 상단 버튼 끝 -->


				<script>
					// 글자수 제한
					var char_min = parseInt(0); // 최소
					var char_max = parseInt(0); // 최대
				</script>
				<!-- 답변 시작 { -->
				<hr class="dashHr">
				<button type="button" class="cmt_btn">
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 답변 <i
						class="fa fa-chevron-up" aria-hidden="true"></i><i
						class="fa fa-chevron-down" aria-hidden="true"></i>
				</button>
				
				
				
				<section id="bo_vc">
					<h2>답변목록</h2>
					<p id="bo_vc_empty">등록된 답변이 없습니다.</p>
				</section>
				<!-- } 답변 끝 -->

				<!-- } 답변 쓰기 끝 -->
				<!-- <script src="./resouces/question//md5.js"></script> -->
				
				
				  <ul class="bo_v_left">
						<li><a href="" class="btn_b01 btn"><i
								class="fa fa-pencil-square-o" aria-hidden="true"></i> 수정</a></li>
						<li><a href="" class="btn_b01 btn"
							onclick="del(this.href); return false;"><i
								class="fa fa-trash-o" aria-hidden="true"></i> 삭제</a></li>
					</ul>

			</article>
			<!-- } 게시판 읽기 끝 -->

		</div>
		<!-- // #container 닫음 -->

		<aside id="sideBar">
			<h2 class="sound_only">사이트 전체메뉴</h2>

			<!-- SNB // -->
			<ul id="snb">
				<!-- <li class="snbHome"><h2><a href="http://sample.paged.kr/purewhite"><b>HOME</b></a></h2></li> -->
				<li
					class="snb co_idgreeting  co_idgreeting co_idcompany bo_tablehistory co_idmap   hide"><h2>
						<a
							href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting"
							target="_self"><b>ABOUT</b> <sub>sample.paged.kr</sub></a>
					</h2> <em class="snb2dDown"><i class="fa fa-angle-down"></i><u
						class="fa fa-angle-up"></u></em>
					<ul class="snb2dul">
						<li class="snb2d snb2d_co_idgreeting"><a
							href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting"
							target="_self"><b><i class="fa fa-angle-right"></i> 인사말</b></a></li>
						<li class="snb2d snb2d_co_idcompany"><a
							href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=company"
							target="_self"><b><i class="fa fa-angle-right"></i> 회사소개</b></a></li>
						<li class="snb2d snb2d_bo_tablehistory"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=history"
							target="_self"><b><i class="fa fa-angle-right"></i> 연혁</b></a></li>
						<li class="snb2d snb2d_co_idmap"><a
							href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=map"
							target="_self"><b><i class="fa fa-angle-right"></i> 오시는 길</b></a></li>
						<li class="snb2d snb2d_"><a
							href="http://sample.paged.kr/purewhite/theme/pagedtheme/testPage.php"
							target="_self"><b><i class="fa fa-angle-right"></i> 스타일
									샘플</b></a></li>
					</ul></li>
				<li
					class="snb co_idbusiness  co_idbusiness bo_tableproduct_gallery bo_tableproduct_webzine  hide"><h2>
						<a
							href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business"
							target="_self"><b>BUSINESS</b> <sub>sample.paged.kr</sub></a>
					</h2> <em class="snb2dDown"><i class="fa fa-angle-down"></i><u
						class="fa fa-angle-up"></u></em>
					<ul class="snb2dul">
						<li class="snb2d snb2d_co_idbusiness"><a
							href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business"
							target="_self"><b><i class="fa fa-angle-right"></i> 사업분야</b></a></li>
						<li class="snb2d snb2d_bo_tableproduct_gallery"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery"
							target="_self"><b><i class="fa fa-angle-right"></i>
									제품소개(갤러리형)</b></a></li>
						<li class="snb2d snb2d_bo_tableproduct_webzine"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine"
							target="_self"><b><i class="fa fa-angle-right"></i>
									제품소개(웹진형)</b></a></li>
					</ul></li>



				<li
					class="snb sflwr_subject%7C%7Cwr_contentand&amp;stx    bo_tableqna1   sflwr_subject%7C%7Cwr_contentand&amp;stx  hide"><h2>
						<a
							href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&amp;sop=and&amp;stx=%EA%B2%8C%EC%8B%9C%ED%8C%90"
							target="_self"><b>기본기능</b> <sub>sample.paged.kr</sub></a>
					</h2> <em class="snb2dDown"><i class="fa fa-angle-down"></i><u
						class="fa fa-angle-up"></u></em>
					<ul class="snb2dul">
						<li class="snb2d snb2d_"><a
							href="http://sample.paged.kr/purewhite/bbs/login.php"
							target="_self"><b><i class="fa fa-angle-right"></i> 로그인</b></a></li>
						<li class="snb2d snb2d_"><a
							href="http://sample.paged.kr/purewhite/bbs/register.php"
							target="_self"><b><i class="fa fa-angle-right"></i> 회원가입</b></a></li>
						<li class="snb2d snb2d_bo_tableqna1"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=1"
							target="_self"><b><i class="fa fa-angle-right"></i>
									비밀번호확인</b></a></li>
						<li class="snb2d snb2d_"><a
							href="http://sample.paged.kr/purewhite/bbs/current_connect.php"
							target="_self"><b><i class="fa fa-angle-right"></i> 현재접속자</b></a></li>
						<li class="snb2d snb2d_"><a
							href="http://sample.paged.kr/purewhite/bbs/new.php"
							target="_self"><b><i class="fa fa-angle-right"></i> 새글</b></a></li>
						<li class="snb2d snb2d_sflwr_subject%7C%7Cwr_contentand&amp;stx"><a
							href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&amp;sop=and&amp;stx=%EA%B2%8C%EC%8B%9C%ED%8C%90"
							target="_self"><b><i class="fa fa-angle-right"></i> 전체검색</b></a></li>
					</ul></li>
				<li
					class="snb bo_tablethemeinfo  bo_tablethemeinfo bo_tablethemeinfo1 bo_tablethemeinfo2 bo_tablethemeinfo3  hide"><h2>
						<a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo"
							target="_self"><b>테마소개</b> <sub>sample.paged.kr</sub></a>
					</h2> <em class="snb2dDown"><i class="fa fa-angle-down"></i><u
						class="fa fa-angle-up"></u></em>
					<ul class="snb2dul">
						<li class="snb2d snb2d_bo_tablethemeinfo"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo"
							target="_self"><b><i class="fa fa-angle-right"></i> 테마안내</b></a></li>
						<li class="snb2d snb2d_bo_tablethemeinfo1"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&amp;wr_id=1"
							target="_self"><b><i class="fa fa-angle-right"></i> -
									테마소개</b></a></li>
						<li class="snb2d snb2d_bo_tablethemeinfo2"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&amp;wr_id=2"
							target="_self"><b><i class="fa fa-angle-right"></i> -
									게시판별 특이사항</b></a></li>
						<li class="snb2d snb2d_bo_tablethemeinfo3"><a
							href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&amp;wr_id=3"
							target="_self"><b><i class="fa fa-angle-right"></i> - 사이트
									제작절 차안내</b></a></li>
					</ul></li>
				<li class="snb noInfoPageTit hide"></li>
			</ul>
			<!-- // SNB -->


		</aside>

		<aside class="clb"></aside>

	</div>
	<!-- // #ctWrap 닫음 -->
	<!-- } 콘텐츠 끝 -->

	<hr>

	<!-- 하단 시작 { -->
	<footer id="footer">
		<dl>
			<dt>
				<img src="resources/images/classList/logo.png"
					alt="페이지디 홈페이지 템플릿 테마">
			</dt>
			<dd>
				<a
					data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/privacy.php .term_area"
					data-featherlight="iframe">개인정보처리방침</a> <a
					data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/term.php .term_area"
					data-featherlight-type="ajax">이용약관</a> <a
					data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/noEmail.php .term_area"
					data-featherlight-type="ajax">이메일주소 무단수집거부</a>
			</dd>
		</dl>
		<address>
			<span>서울 금천구 가산디지털 2로 101 한라원앤원타워 B동 3층 B강의실 Team.5랑캐</span> <em>|</em><span>
				Tel. 070-0000-0000</span> <em>|</em><span> Fax. 050-0000-0000</span> <em>|</em><span>
				E-mail. <a href="ch_db@naver.com">ch_db@naver.com</a>
			</span> <br>
			<span>본 샘플사이트를 베이스로 5조한테 제작요청 가능합니다.</span>
		</address>
		<p>
			<span>Copyright</span> © <b>sample.paged.kr</b> <span>All
				rights reserved.2023</span>
		</p>
	</footer>

	<button type="button" id="top_btn" class="fa fa-arrow-up"
		aria-hidden="true" style="display: none;">
		<span class="sound_only">페이지 상단으로 이동</span>
	</button>

	<!-- 현재위치 및 서브메뉴 활성화 설정// -->
	<script>
		$(function() {
			$('.snb.bo_tableqna, .snb .snb2d_bo_tableqna').addClass('active');
		});/*  보테이블 : bo_tableqna  */
		$(document)
				.ready(
						function() {
							if ($("#snb > li").is(".snb.active")) {
								$('.loc1D').text(
										$('#snb .bo_tableqna h2 a b').text());
								$('.loc2D').html(
										$('.snb2d_bo_tableqna a b').html());
								$('.faArr').html(
										'<i class="fa fa-angle-right"></i>');
								var index = $("#snb > li").index(
										"#snb > li.active");
								$("#page_title").addClass(
										"subTopBg_0"
												+ ($("#snb > li.bo_tableqna")
														.index() + 1));
							} else {
								$('.loc1D').text('질문답변');
								$('.noInfoPageTit')
										.html(
												'<h2><a><b>질문답변</b><sub>sample.paged.kr</sub></a></h2>');
								$('.noInfoPageTit').addClass('active');
								$('#page_title').addClass('subTopBg_00');
							}
						});
	</script>
	//현재위치 및 서브메뉴 활성화 설정
	<script>
		$(function() { /* 모바일용 메뉴바 */
			var articleMgnb = $("#snb li.snb");
			articleMgnb.addClass("hide");
			$("#snb li.active").removeClass("hide").addClass("show");
			$("#snb li.active .snb2dul").show();
			$(".snb2dDown").click(function() {
				var myArticle = $(this).parents("#snb li.snb");
				if (myArticle.hasClass("hide")) {
					articleMgnb.addClass("hide").removeClass("show");
					articleMgnb.find(".snb2dul").slideUp("fast");
					myArticle.removeClass("hide").addClass("show");
					myArticle.find(".snb2dul").slideDown("fast");
				} else {
					myArticle.removeClass("show").addClass("hide");
					myArticle.find(".snb2dul").slideUp("fast");
				}
			});
		});
	</script> 



	<!-- } 하단 끝 -->


	<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
	<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->





</body>
</html>