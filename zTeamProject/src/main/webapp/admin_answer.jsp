<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0059)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>질문답변 1 페이지 | 페이지디 홈페이지 템플릿 테마</title>
<link rel="stylesheet" href="resources/admin/default.css">
<link rel="stylesheet" href="resources/admin/style.css">
<link rel="stylesheet" href="resources/admin/board.common.css">
<link rel="stylesheet" href="resources/admin/font-awesome.min.css">
<link rel="stylesheet" href="resources/admin/mobile.css">
<link rel="stylesheet" href="resources/admin/contents.css">
<link rel="stylesheet" href="resources/admin/featherlight.min.css">
<!--[if lte IE 8]><script src="http://sample.paged.kr/purewhite/js/html5.js"></script><![endif]-->
<script>var g5_url = "http://sample.paged.kr/purewhite"; var g5_bbs_url = "http://sample.paged.kr/purewhite/bbs"; var g5_is_member = ""; var g5_is_admin = ""; var g5_is_mobile = ""; var g5_bo_table = "qna"; var g5_sca = ""; var g5_editor = "smarteditor2"; var g5_cookie_domain = "";</script>
<script src="resources/admin/jquery-1.11.0.min.js"></script>
<script src="resources/admin/jquery.menu.min.js"></script>
<script src="resources/admin/common.js"></script>
<script src="resources/admin/WEBsiting.js"></script>
<script src="resources/admin/wrest.js"></script>
<script src="resources/admin/placeholders.min.js"></script>
<script src="resources/admin/jquery.shuffleLetters.min.js"></script>
<script src="resources/admin/featherlight.min.js"></script>
</head>
<body>
<a id="topID"></a>
<!-- 상단 시작 { -->
<div id="hd" class="scDown">
    <h1 id="hd_h1">질문답변 1 페이지</h1>

    <div id="skip_to_container"><a href="">본문 바로가기</a></div>

    <div id="tnb">
        <ul>
			<!-- 해당 URL링크를 삽입해 주세요 // 해당사항 없을 시 제거해 주시기 바랍니다. -->
            <li><a href=""><b><i class="tnbIco fa fa-facebook-square" aria-hidden="true"></i> <span class="sound_only">페이스북</span></b></a></li>
            <li><a href=""><b><i class="tnbIco fa fa-twitter-square" aria-hidden="true"></i> <span class="sound_only">트위터</span></b></a></li>
            <li><a href=""><b><i class="tnbIco fa fa-instagram" aria-hidden="true"></i> <span class="sound_only">인스타그램</span></b></a></li>
            <li><a href=""><b><i class="fa fa-link" aria-hidden="true"></i> BLOG</b></a></li>
                        <li><a href=""><b><i class="fa fa-user-plus" aria-hidden="true"></i> JOIN</b></a></li>
            <li><a href=""><b><i class="fa fa-power-off" aria-hidden="true"></i> LOGIN</b></a></li>
                        <li><a href="" onclick="javascript:addBookmark();"><b><i class="fa fa-bookmark" aria-hidden="true"></i> Bookmark</b></a></li>

        </ul>
  
    </div>
	<a id="snbOpen"><b><i class="fa fa-bars" aria-hidden="true"></i> <span class="sound_only">사이드메뉴 열기</span></b></a>

    <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
			<div id="logo">
				<a href=""><img src="resources/images/logos/logo.png" alt="페이지디 홈페이지 템플릿 테마"></a>
			</div>
            <ul id="gnb_1dul">
                                <li class="gnb_1dli" style="z-index:999">
                    <a href="" target="_self" class="gnb_1da">ABOUT<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">인사말</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">회사소개</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">연혁</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">오시는 길</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">스타일 샘플</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:998">
                    <a href="" target="_self" class="gnb_1da">BUSINESS<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">사업분야</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">제품소개(갤러리형)</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">제품소개(웹진형)</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:997">
                    <a href="" target="_self" class="gnb_1da">게시판샘플<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">기본게시판</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">Q&amp;A게시판</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">FAQ게시판</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">웹진형게시판</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">폼메일</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:996">
                    <a href="" target="_self" class="gnb_1da">갤러리샘플<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">갤러리게시판(기본)</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">갤러리(가로길게2단)</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">갤러리게시판(박스형)</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">갤러리게시판(박스-세로길게4단)</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:995">
                    <a href="" target="_self" class="gnb_1da">기본기능<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">로그인</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">회원가입</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">비밀번호확인</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">현재접속자</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">새글</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">전체검색</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:994">
                    <a href="" target="_self" class="gnb_1da">테마소개<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">테마안내</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">- 테마소개</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">- 게시판별 특이사항</a></li>
                                            <li class="gnb_2dli"><a href="" target="_self" class="gnb_2da">- 사이트 제작절 차안내</a></li>
                    </ul>
                </li>
                				<li class="gnb_1dli allSchBoxWr">
					<button type="button" id="btnSchbox" title="전체검색 열기"><i class="fa fa-search"></i></button>

					<div id="allSchBox">
						<fieldset>
							<legend>사이트 내 전체검색</legend>
							<form name="fsearchbox" method="get" action="http://sample.paged.kr/purewhite/bbs/search.php" onsubmit="return fsearchbox_submit(this);">
								<input type="hidden" name="sfl" value="wr_subject||wr_content">
								<input type="hidden" name="sop" value="and">
								<label for="sch_stx" class="sound_only">검색어 필수</label>
								<input type="text" name="stx" id="sch_stx" class="topSchFocus" maxlength="20" placeholder="Search...">
								<button type="submit" id="sch_submit" value="검색"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
								<a id="allSchBoxClose"><i class="fa fa-close" aria-hidden="true"></i><i class="sound_only">전체검색 닫기</i></a>
							</form>
							<script> function fsearchbox_submit(f) { if (f.stx.value.length < 2) { alert("검색어는 두글자 이상 입력하십시오."); f.stx.select(); f.stx.focus(); return false; } /* 검색에 많은 부하가 걸리는 경우 이 주석을 제거하세요. */ var cnt = 0; for (var i=0; i<f.stx.value.length; i++) { if (f.stx.value.charAt(i) == ' ') cnt++; } if (cnt > 1) { alert("빠른 검색을 위하여 검색어에 공백은 한개만 입력할 수 있습니다."); f.stx.select(); f.stx.focus(); return false; } return true; } </script>
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
<!-- } 상단 끝 --><hr>

<!-- 콘텐츠 시작 { -->

<div id="page_title" class="sbtImg subTopBg_03">
	<div class="page_title_in">
		<h2>
			<strong title="질문답변 1 페이지">질문답변</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">게시판샘플</span> <span class="loc2D"><i class="fa fa-angle-right"></i> Q&amp;A게시판</span></span>
		</h2>
	</div>
</div>

<div id="ctWrap">

	<div id="container">

<!-- 게시판 목록 시작 { -->
<div id="bo_list" style="width:100%">


    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
    <div id="bo_btn_top">
        <div id="bo_list_total">
            <span><i class="fa fa-file-o"></i> Total 20 /</span>
            1 page
        </div>

                <ul class="btn_bo_user">
            <li><a href="" class="btn_b01 btn"><i class="fa fa-rss" aria-hidden="true"></i> RSS</a></li>                        <li><a href="http://sample.paged.kr/purewhite/bbs/write.php?bo_table=qna" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 답변등록</a></li>        </ul>
            </div>
    <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    <!-- 게시판 카테고리 시작 { -->
        <!-- } 게시판 카테고리 끝 -->

    <form name="fboardlist" id="fboardlist" action="" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="qna">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="sst" value="wr_num, wr_reply">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">

    <h2 class="sound_only">질문답변 목록</h2>
    <div class="likeTbl">
        <ul>
        <li class="likeTblTr likeTblTh">
                        <div class="mvInlineN">상태</div>
            <div>제목</div>
            <div class="mvInlineN">작성자</div>
            <div class="mvInlineN td_num"><a href="">문의유형 <i class="fa fa-sort" aria-hidden="true"></i></a></div>
                                    <div class="mvInlineN td_datetime"><a href="">날짜  <i class="fa fa-sort" aria-hidden="true"></i></a></div>
        </li>
                <li class="bo_notice likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
				 
					<span class="qnaIco qnaIco1"><i class="fa fa-bullhorn" aria-hidden="true"></i> 공지사항</span>
				            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                                        질문답변 게시판 이용안내                       
						<em>
							<i class="fa fa-link" aria-hidden="true"></i>						</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_member">웹사이팅</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 3591</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 02-06</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco3"><i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        답변이 없다면 접수완료로만 표시됩니다 (비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 72</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문드립니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 69</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문게시판 글 등록 답변이 있다면 답변완료로 표시됩니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 29</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문드립니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 23</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문게시판 글 등록 답변이 있다면 답변완료로 표시됩니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 23</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문드립니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 18</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문게시판 글 등록 답변이 있다면 답변완료로 표시됩니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 22</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco3"><i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        답변이 없다면 접수완료로만 표시됩니다 (비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 19</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco3"><i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        페이지디 반응형 샘플사이트로 홈페이지 만들고 싶어요!                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">홍길동</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 19</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=22">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문드립니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 17</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=20">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문게시판 글 등록 답변이 있다면 답변완료로 표시됩니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 15</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco3"><i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&amp;wr_id=19">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        답변이 없다면 접수완료로만 표시됩니다 (비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 18</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco3"><i class="fa fa-spinner" aria-hidden="true"></i> 접수완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        페이지디 반응형 샘플사이트로 홈페이지 만들고 싶어요!                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">홍길동</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 19</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                <li class=" likeTblTr likeTblTd">
                        <div class="mvInlinev td_num2">
														<span class="qnaIco qnaIco2"><i class="fa fa-smile-o" aria-hidden="true"></i> 답변완료</span>
									            </div>

            <div class="td_subject" style="padding-left:0px">
                                <div class="bo_tit">
                    
                    <a href="">
                                                <i class="fa fa-lock" aria-hidden="true"></i>                        질문드립니다(비밀번호0000)                       
						<em>
													</em>
                    </a>
                </div>

            </div>
			<span class="onlyMvV" style="padding-left:0px"></span>
            <div class="mvInlinev td_name sv_use"><span class="sv_guest">질문자명</span></div>
            <div class="mvInlinev td_num"><i class="fa fa-eye"></i> 18</div>
                                    <div class="mvInlinev td_datetime"><i class="fa fa-clock-o"></i> 01-31</div>

        </li>
                </ul>
            </div>

        <div class="bo_fx">
                <ul class="btn_bo_user">
                                    <li><a href="" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 답변등록</a></li>        </ul>
            </div>
    
    </form>
     
       <!-- 게시판 검색 시작 { -->
    <fieldset id="bo_sch">
        <legend>게시물 검색</legend>

        <form name="fsearch" method="get">
        <input type="hidden" name="bo_table" value="qna">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sop" value="and">
        <label for="sfl" class="sound_only">검색대상</label>
        <select name="sfl" id="sfl">
            <option value="wr_subject||wr_content">제목+내용</option>
            <option value="wr_subject">제목</option>
            <option value="wr_content">내용</option>
            <option value="mb_id,1">회원아이디</option>
            <!-- <option value="mb_id,0">회원아이디(코)</option> -->
            <option value="wr_name,1">작성자</option>
            <!-- <option value="wr_name,0">작성자(코)</option> -->
        </select>
        <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
        <input type="text" name="stx" value="" required="" id="stx" class="sch_input" size="25" maxlength="20" placeholder="검색어를 입력해주세요">
        <button type="submit" value="검색" class="sch_btn"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
        </form>
    </fieldset>
    <!-- } 게시판 검색 끝 -->   
</div>




<!-- 페이지 -->
<nav class="pg_wrap"><span class="pg"><span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
<a href="" class="pg_page">2<span class="sound_only">페이지</span></a>
<a href="" class="pg_page pg_end">맨끝</a>
</span></nav>

<!-- } 게시판 목록 끝 -->


    </div><!-- // #container 닫음 -->

	<aside class="clb"></aside>

</div><!-- // #ctWrap 닫음 -->
<!-- } 콘텐츠 끝 -->

<hr>

<!-- 하단 시작 { -->
<footer id="footer">
    <dl>
        <dt><img src="./질문답변 1 페이지 _ 페이지디 홈페이지 템플릿 테마_files/footerLogo.png" alt="페이지디 홈페이지 템플릿 테마"></dt>
        <dd>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/privacy.php .term_area">개인정보처리방침</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/term.php .term_area" data-featherlight-type="ajax">이용약관</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/noEmail.php .term_area" data-featherlight-type="ajax">이메일주소 무단수집거부</a>
        </dd>
    </dl>
	<address>
		<span>서울 관악구 조원중앙로 38-1한별빌딩</span> 
		 <em>|</em><span> Tel. 070-7558-6420</span> 
		 <em>|</em><span> Fax. 050-4156-1305</span> 
		 <em>|</em><span> E-mail. <a href="">admin@websiting.co.kr</a></span> 
		<br><span>본 샘플사이트를 베이스로 페이지디 <a href="" target="_blank">paged.kr</a> 에서 제작요청 가능합니다.</span>	</address>
	<p><span>Copyright</span> © <b>sample.paged.kr</b> <span>All rights reserved.</span></p>
</footer>

<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true" style="display: block;"><span class="sound_only">페이지 상단으로 이동</span></button>

<!-- 현재위치 및 서브메뉴 활성화 설정// -->
<script>
$(function(){$('.snb.bo_tableqna, .snb .snb2d_bo_tableqna').addClass('active');});/*  보테이블 : bo_tableqna  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tableqna h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tableqna a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tableqna").index() + 1) ); } else { $('.loc1D').text('질문답변'); $('.noInfoPageTit').html('<h2><a><b>질문답변</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
<!-- //현재위치 및 서브메뉴 활성화 설정 -->
<script>$(function() { /* 모바일용 메뉴바 */ var articleMgnb = $("#snb li.snb"); articleMgnb.addClass("hide"); $("#snb li.active").removeClass("hide").addClass("show"); $("#snb li.active .snb2dul").show(); $(".snb2dDown").click(function(){ var myArticle = $(this).parents("#snb li.snb"); if(myArticle.hasClass("hide")){ articleMgnb.addClass("hide").removeClass("show"); articleMgnb.find(".snb2dul").slideUp("fast"); myArticle.removeClass("hide").addClass("show"); myArticle.find(".snb2dul").slideDown("fast"); } else { myArticle.removeClass("show").addClass("hide");myArticle.find(".snb2dul").slideUp("fast"); } }); });</script>



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





</body></html>