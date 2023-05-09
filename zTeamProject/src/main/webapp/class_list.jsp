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

<div id="page_title" class="sbtImg subTopBg_04" style="background-image:url('resources/uploads/MainBack.png');">
	<div class="page_title_in">
		<h2>
			<strong title="강좌 페이지">강좌</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D">강좌</span> <span class="loc2D"><i class="fa fa-angle-right"></i> 강좌 게시판</span></span>
		</h2>
	</div>
</div>



<div id="ctWrap">

<div id="container">

<!-- 게시판 목록 시작 { -->
<div id="bo_gall" style="width:100%">


    <!-- 게시판 페이지 정보 및 버튼 시작 { -->
  <div id="bo_btn_top">
        <div id="bo_list_total">
            
        <select name="" id="" >
            <option value="">카테고리</option>
            <option value="">요리</option>
            <option value="">공예</option>
            <option value="">IT</option>
            <option value="">게임</option>
            <option value="">음악</option>
            <option value="">교육</option>
            <option value="">인테리어</option>
            <option value="">기타</option>
        </select>
        </div>

            <ul class="btn_bo_user">
            	<li>
            		<a href="./write.php?bo_table=gallery2" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a>
            	</li>
            </ul>
            </div>
    <!-- } 게시판 페이지 정보 및 버튼 끝 -->


    <!-- 게시판 카테고리 시작 { -->
        
    <!-- } 게시판 카테고리 끝 -->

    <form name="fboardlist" id="fboardlist" action="http://sample.paged.kr/purewhite/bbs/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
    <input type="hidden" name="bo_table" value="gallery">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sst" value="wr_num, wr_reply">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">


    <h2 class="sound_only">갤러리 목록</h2>
	

    <ul id="gall_ul" class="gall_row">
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                                    </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="classContent.jsp">
						<em class="iconPs bo_tit">
															<i class="fa fa-bullhorn icoNotice"> 공지</i> 
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-31261188_xmOe0WFw_a0da36d000ebde0a2d70f85502ec5811f750a8b9_300x230.jpg"  alt="" title=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1466							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-06</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="classContent.jsp" class="bo_tit">
                            갤러리게시판 공지사항입니다                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    14                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=16">
						<em class="iconPs bo_tit">
							                            <i class="fa fa-youtube-play fts13px"><span class="sound_only">유투브영상</span></i> 						</em>
						<i class="youtube_img"><sup style="background-image:URL(https://img.youtube.com/vi/y1yFiotx3qk/sddefault.jpg"  alt="유투브영상링크 샘플"></sup><sub><i class="imgAr"><img src="resources/images/classList/imageSpacer.php" alt="youtube image spacer" title=""></i></sub></i>
														<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 953							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-12</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=16" class="bo_tit">
                            유투브영상링크 샘플                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    13                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=14">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-1982125119_aY3uLPKx_0346bdfd1558c859366f41cb4642cd574f12e28b_300x230.jpg"  alt="" title=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1333							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=14" class="bo_tit">
                            페이지디 반응형 홈페이지 테마                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    12                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=13">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-1982125119_syHIplMt_39724b805dc1142318f434818b62ab4b2d749151_300x230.jpg" alt="" title=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1449							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-06</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=13" class="bo_tit">
                            갤러리게시판                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    11                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=12">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-1982125119_EJGhABMS_ba51458c12b3dde59e5647c6d94dd9e46273b479_300x230.jpg" alt="" title=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1297							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=12" class="bo_tit">
                            갤러리 게시판입니다                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    10                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=11">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-5_copy_11_31261188_OuepdXZy_3e7d4d615d0ad144794a1ba0f2f8763f19e143ac_300x230.jpg" alt="" title=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1272							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-06</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=11" class="bo_tit">
                            PURE WHITE                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    9                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=10">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-1982125119_afh3PDjx_bc4bf409963c6666ca6e95483aa9f06ebe974bf8_300x230.jpg" alt=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1324							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=10" class="bo_tit">
                            갤러리 등록 테스트                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    8                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=9">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-31261188_ZpGtIQrH_6539ff08f5411c45ddde854bafe446429c743ab2_300x230.jpg" alt=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1308							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=9" class="bo_tit">
                            갤러리게시판                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    7                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=8">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-1982125119_B5vKMApt_0706c623c9b17633ecc1cc0022d6faf86aed3160_300x230.jpg" alt=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1297							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=8" class="bo_tit">
                            페이지디 반응형 홈페이지 테마                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    6                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=6">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-2_copy_6_31261188_zdwi2F59_d84ab7973bb3568bc59463298e8adfa0bec185f5_300x230.jpg" alt="" title=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1798							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=6" class="bo_tit">
                            갤러리 게시판입니다                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    5                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=5">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-1982125119_iHDFEPZA_73635ec976f1c7dbed84f6d1e76c6f5dd13ae3fb_300x230.jpg" alt=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1301							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-06</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=5" class="bo_tit">
                            PURE WHITE                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    4                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=4">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-31261188_vniU54eA_caeae717cdd24c50096bc2e1b210aa11c3318770_300x230.jpg" alt=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1268							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=4" class="bo_tit">
                            갤러리 등록 테스트                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 box_clear gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    3                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=3">
						<em class="iconPs bo_tit"></em>
						<i class="imgAr"><img src="resources/images/classList/noimage.jpg" alt="이미지 없음" title=""></i>
							<b>no image</b>
								<em class="gall_info">
									<span class="sound_only">조회 </span>
									<i class="fa fa-eye" aria-hidden="true"></i> 1299							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-06</span>
									<u><span class="sound_only">작성자 </span>웹사이팅</u>
								</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                      <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=3" class="bo_tit">이미지가 없는경우</a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    2                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=2">
						<em class="iconPs bo_tit">
							                            						</em>
						<i class="imgAr"><img src="resources/images/classList/thumb-31261188_zdwi2F59_d84ab7973bb3568bc59463298e8adfa0bec185f5_300x230.jpg" alt=""></i>						<em class="gall_info">
							<span class="sound_only">조회 </span><i class="fa fa-eye" aria-hidden="true"></i> 1333							<span class="gall_date"><span class="sound_only">작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-07</span>
							<u><span class="sound_only">작성자 </span>웹사이팅</u>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                                                <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=2" class="bo_tit">
                            갤러리게시판                                                     </a>
                    </div>
                </div>
            </div>
        </li>
                <li class="gall_li col-gn-3 gallWST">
            <div class="gall_box">
                <div class="gall_chk">
                                <span class="sound_only">
                    1                </span>
                </div>
                <div class="gall_con">
                    <div class="gall_boxa">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=1">
						<em class="iconPs bo_tit"></em>
						<i class="imgAr"><img src="resources/images/classList/noimage.jpg" alt="이미지 없음"></i><b> no image </b>
						<em class="gall_info">
							<i class="fa fa-eye" aria-hidden="true"></i> 1328 <span class="gall_date"> 작성일 </span><i class="fa fa-clock-o" aria-hidden="true"></i> 02-06</span>
						</em>
                        </a>
                    </div>
                    <div class="gall_text_href">
                        <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery&amp;wr_id=1" class="bo_tit">이미지 없음, 링크 있음</a>
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
        <input type="hidden" name="bo_table" value="gallery">
        <input type="hidden" name="sca" value="">
        <input type="hidden" name="sop" value="and">
        <select name="sfl2" id="sfl2">
            <option value="wr_subject||wr_content">작성자</option>
            <option value="wr_subject">제목</option>
            <option value="wr_content">해쉬 태그</option>
        </select>
        <input type="text" name="stx" value="" required id="stx" class="sch_input" size="25" maxlength="20" placeholder="검색어를 입력해주세요">
        <button type="submit" value="검색" class="sch_btn"><i class="fa fa-search" aria-hidden="true"></i><span class="sound_only">검색</span></button>
        </form>
        

    </fieldset>
    
            <ul class="btn_bo_user">
            	<li>
            		<a href="./write.php?bo_table=gallery2" class="btn_b02 btn"><i class="fa fa-pencil" aria-hidden="true"></i> 글쓰기</a>
            	</li>
            </ul>
    
<nav class="pg_wrap">
    <span class="pg"><a href="./board.php?bo_table=qna&amp;page=1" class="pg_page pg_start">처음</a>
	    <span class="sound_only">열린</span><strong class="pg_current">1</strong><span class="sound_only">페이지</span>
		<a href="./board.php?bo_table=qna&amp;page=2" class="pg_page">2<span class="sound_only">페이지</span></a>
		<a href="./board.php?bo_table=qna&amp;page=2" class="pg_page pg_end">맨끝</a>
	</span>
</nav>


    
    <!-- } 게시판 검색 끝 -->   
</div>
</div>
</div>
</body>


<!-- 페이지 -->


<!-- } 게시판 목록 끝 -->



<!-- 하단 시작 { -->
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
$(function(){$('.snb.bo_tablegallery, .snb .snb2d_bo_tablegallery').addClass('active');});/*  보테이블 : bo_tablegallery  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tablegallery h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tablegallery a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tablegallery").index() + 1) ); } else { $('.loc1D').text('강좌'); $('.noInfoPageTit').html('<h2><a><b>갤러리</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
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