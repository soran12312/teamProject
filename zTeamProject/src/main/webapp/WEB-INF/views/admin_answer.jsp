<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0059)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>질문답변</title>
<link rel="stylesheet" href="resources/admin/default.css">
<link rel="stylesheet" href="resources/admin/style.css">
<link rel="stylesheet" href="resources/admin/board.common.css">
<link rel="stylesheet" href="resources/admin/font-awesome.min.css">
<link rel="stylesheet" href="resources/admin/mobile.css">
<link rel="stylesheet" href="resources/admin/contents.css">
<link rel="stylesheet" href="resources/admin/featherlight.min.css">


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
<body class="realestate_version">
<!-- 상단 시작 { -->
<header class="header header_style_01">
         <nav class="megamenu navbar navbar-default" data-spy="affix">
            <div class="container-fluid">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="index-real-estate.html"><img src="resources/images/logos/logo.png" width="220" alt="image" /></a>
               </div>
               <div id="navbar" class="navbar-collapse collapse">
                  <ul class="nav navbar-nav navbar-right">
                     <li><a data-scroll href="#home">Home</a></li>
                     <li><a data-scroll href="#features">오늘의 장인<span class="hidden-xs">*</span></a></li>
                     <li><a data-scroll href="#agent">오늘의 리뷰</a></li>
                     <li><a data-scroll href="#gallery">오늘의 기부</a></li>
                     <li><a data-scroll href="#testimonials">오늘의 수업</a></li>
                     <li><a data-scroll href="#support">고객센터</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header><hr/>
      
      <aside id="topSpacer"></aside>
	  <aside id="sideBarCover"></aside>

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
<!-- ======= Footer ======= -->
  <footer id="footer" class="footer">  
  
  
  
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
  </footer>
<!-- } 하단 끝 -->

<a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
<!-- ALL JS FILES -->
<script src="resources/js/all.js"></script>
<!-- ALL PLUGINS -->
<script src="resources/js/custom.js"></script>
<script src="resources/js/portfolio.js"></script>
<script src="resources/js/hoverdir.js"></script>    
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
<!-- MAP & CONTACT -->
<script src="resources/js/map.js"></script>


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