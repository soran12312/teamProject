<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="resources/js/jquery-1.11.0.min.js"></script>
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
</head>

<body class="realestate_version">
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
                     <li><a data-scroll href="#features">강좌게시판<span class="hidden-xs">*</span></a></li>
                     <li><a data-scroll href="#agent">커뮤니티게시판</a></li>
                     <li><a data-scroll href="#gallery">리뷰게시판</a></li>
                     <li><a data-scroll href="#mypage">관리자페이지</a></li>
                  </ul>
               </div>
            </div>
         </nav>
      </header>
<aside id="topSpacer"></aside>
<aside id="sideBarCover"></aside>
<!-- } 상단 끝 --><hr>

<!-- 콘텐츠 시작 { -->

<div id="page_title" class="sbtImg" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="커뮤니티 리스트">커뮤니티 리스트</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">커뮤니티</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 커뮤니티 리스트</span></span>
		</h2>
	</div>
</div>

<div id="ctWrap">

<div id="container">


<!-- 게시판 목록 시작 { -->
<div id="bo_gall" style="width:100%">


    <!-- 게시판 페이지 정보 및 버튼 시작 { -->

    <!-- } 게시판 페이지 정보 및 버튼 끝 -->

    <!-- 게시판 카테고리 시작 { -->
    <!-- } 게시판 카테고리 끝 -->

    <form name="fboardlist"  id="fboardlist" action="./board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="product_webzine">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sst" value="wr_num, wr_reply">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">


    <h2 class="sound_only">제품소개(웹진형) 목록</h2>
	

    <ul id="gall_ul" class="gall_row">
                <li class="gall_li col-gn-1 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    9                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=21">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-12_copy_20_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=21" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=21" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    8                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=20">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-3067655493_BLOfiKIV_a5c47c728addc1f4809ca0d6fa9a172bed9b4516_300x300.jpg" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=20" class="bo_tit">
                            높이가 각각 다른 이미지                                                     </a>
						<div class="gall_textMv">
							<em>
								상세페이지에서 이미지 슬라이드는 이미지의 세로 길이에 따라 높이가 자동으로 조절됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=20" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    7                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=19">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-14_copy_18_12_copy_14_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=19" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=19" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    6                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=18">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-13_copy_17_12_copy_13_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=18" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=18" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    5                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=17">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-31261188_8XYeFhzH_941e42ffa8e6f19a7116841327f3963b0e09a8bd_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=17" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=17" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    4                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=16">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-13_copy_15_12_copy_13_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=16" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=16" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    3                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=15">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-12_copy_14_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=15" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=15" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    2                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=14">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-12_copy_13_31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=14" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=14" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
                <li class="gall_li col-gn-1 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    1                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=13">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="http://sample.paged.kr/purewhite/data/file/product_webzine/thumb-31261188_nmf5YP0i_0393cce4b019c7f1948815a695ce3d407536d9fc_300x300.png" alt="" ></i>                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;sca=%EB%B6%84%EB%A5%981" class="bo_cate_link">분류1</a>
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=13" class="bo_tit">
                            제품명 영역입니다                                                     </a>
						<div class="gall_textMv">
							<em>
								제품간략소개를 여분필드1에 100자 이내로 입력하여 작성하시면 이곳에 출력됩니다.							</em>
							<a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine&amp;wr_id=13" class="btn_b02"><i class="fa fa-search-plus"></i> 자세히 보기</a>
						</div>

					</div>
				</div>
            </div>
        </li>
            </ul>
    
    
    </form>
     
       <!-- 게시판 검색 시작 { -->
    <fieldset id="bo_sch">
        <legend>게시물 검색</legend>

        <form name="fsearch" method="get">
        <input type="hidden" name="bo_table" value="product_webzine">
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
        <input type="text" name="stx" value="" required id="stx" class="sch_input" size="25" maxlength="20" placeholder="검색어를 입력해주세요">
        <button type="submit" value="검색" class="sch_btn"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
        </form>
    </fieldset>
    <!-- } 게시판 검색 끝 -->
            <ul class="btn_bo_user">
            	<li>
            		<button href="./write.php?bo_table=gallery2" class="btn_b02"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</button>
            	</li>
            </ul>
    
	<nav class="pg_wrap">
    	<span class="pg"><a href="./board.php?bo_table=qna&amp;page=1" class="pg_page pg_start">처음</a>
	    	<span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
				<a href="./board.php?bo_table=qna&amp;page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
				<a href="./board.php?bo_table=qna&amp;page=2" class="pg_page pg_end">맨끝</a>
		</span>
	</nav>
    
    
        
</div>
</div>




<!-- 페이지 -->
<!-- } 게시판 목록 끝 -->


    </div><!-- // #container 닫음 -->


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
      <!-- ALL JS FILES -->
      <script src="resources/js/all.js"></script>
      <!-- ALL PLUGINS -->
      <script src="resources/js/custom.js"></script>
      <script src="resources/js/portfolio.js"></script>
      <script src="resources/js/hoverdir.js"></script>    
      <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
      <!-- MAP & CONTACT -->
      <script src="resources/js/map.js"></script>
   </body>

<!-- 현재위치 및 서브메뉴 활성화 설정// -->
<script>
$(function(){$('.snb.bo_tableproduct_webzine, .snb .snb2d_bo_tableproduct_webzine').addClass('active');});/*  보테이블 : bo_tableproduct_webzine  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tableproduct_webzine h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tableproduct_webzine a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tableproduct_webzine").index() + 1) ); } else { $('.loc1D').text('커뮤니티'); $('.noInfoPageTit').html('<h2><a><b>제품소개(웹진형)</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
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

</body>
</html>

<!-- 사용스킨 : theme/product -->
