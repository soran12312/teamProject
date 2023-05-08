<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0063)http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<title>클래스 등록 페이지 | 페이지디 홈페이지 템플릿 테마</title>
<link rel="stylesheet" href="resources/css/classList/default.css">
<link rel="stylesheet" href="resources/css/classList/style.css">
<link rel="stylesheet" href="resources/css/classList/board.common.css">
<link rel="stylesheet" href="resources/css/classList/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/classList/mobile.css">
<link rel="stylesheet" href="resources/css/classList/contents.css">
<!--==========FONT Awesome PRO 5==========-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro@4cac1a6/css/all.css" />
<!--[if lte IE 8]><script src="http://sample.paged.kr/purewhite/js/html5.js"></script><![endif]-->
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/js/jquery.menu.min.js"></script>
<script src="resources/js/common.js"></script>
<script src="resources/js/WEBsiting.js"></script>
<script src="resources/js/wrest.js"></script>
<script src="resources/js/placeholders.min.js"></script>
<script src="resources/js/jquery.shuffleLetters.min.js"></script>
<script src="resources/js/featherlight.min.js"></script>
<script src="https://kit.fontawesome.com/d3610539ab.js" crossorigin="anonymous"></script>
</head>
<a id="topID"></a>
<!-- 상단 시작 { -->
<div id="hd">
    <h1 id="hd_h1">클래스 등록</h1>

    <div id="skip_to_container"><a href="#ctWrap">본문 바로가기</a></div>

    <div id="tnb">
        <ul>
			<!-- 해당 URL링크를 삽입해 주세요 // 해당사항 없을 시 제거해 주시기 바랍니다. -->
            <li><a href="#"><b><i class="tnbIco fa fa-facebook-square" aria-hidden="true"></i> <span class="sound_only">페이스북</span></b></a></li>
            <li><a href="#"><b><i class="tnbIco fa fa-twitter-square" aria-hidden="true"></i> <span class="sound_only">트위터</span></b></a></li>
            <li><a href="#"><b><i class="tnbIco fa fa-instagram" aria-hidden="true"></i> <span class="sound_only">인스타그램</span></b></a></li>
            <li><a href="#"><b><i class="fa fa-link" aria-hidden="true"></i> BLOG</b></a></li>
                        <li><a href="http://sample.paged.kr/purewhite/bbs/register.php"><b><i class="fa fa-user-plus" aria-hidden="true"></i> JOIN</b></a></li>
            <li><a href="http://sample.paged.kr/purewhite/bbs/login.php"><b><i class="fa fa-power-off" aria-hidden="true"></i> LOGIN</b></a></li>
                        <li><a href="#" onclick="javascript:addBookmark();"><b><i class="fa fa-bookmark" aria-hidden="true"></i> Bookmark</b></a></li>

        </ul>
  
    </div>
	<a id="snbOpen"><b><i class="fa fa-bars" aria-hidden="true"></i> <span class="sound_only">사이드메뉴 열기</span></b></a>

    <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
			<div id="logo">
				<a href="http://sample.paged.kr/purewhite"><img src="http://sample.paged.kr/purewhite/theme/pagedtheme/img/logo.png" alt="페이지디 홈페이지 템플릿 테마"></a>
			</div>
            <ul id="gnb_1dul">
                                <li class="gnb_1dli" style="z-index:999">
                    <a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting" target="_self" class="gnb_1da">ABOUT<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting" target="_self" class="gnb_2da">인사말</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=company" target="_self" class="gnb_2da">회사소개</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=history" target="_self" class="gnb_2da">연혁</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=map" target="_self" class="gnb_2da">오시는 길</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/theme/pagedtheme/testPage.php" target="_self" class="gnb_2da">스타일 샘플</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:998">
                    <a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business" target="_self" class="gnb_1da">BUSINESS<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business" target="_self" class="gnb_2da">사업분야</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery" target="_self" class="gnb_2da">제품소개(갤러리형)</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine" target="_self" class="gnb_2da">제품소개(웹진형)</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:997">
                    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" target="_self" class="gnb_1da">게시판샘플<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" target="_self" class="gnb_2da">기본게시판</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna" target="_self" class="gnb_2da">Q&A게시판</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq" target="_self" class="gnb_2da">FAQ게시판</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=webzine" target="_self" class="gnb_2da">웹진형게시판</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/write.php?bo_table=form" target="_self" class="gnb_2da">폼메일</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:996">
                    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery" target="_self" class="gnb_1da">갤러리샘플<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery" target="_self" class="gnb_2da">갤러리게시판(기본)</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery2" target="_self" class="gnb_2da">갤러리(가로길게2단)</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box" target="_self" class="gnb_2da">갤러리게시판(박스형)</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box2" target="_self" class="gnb_2da">갤러리게시판(박스-세로길게4단)</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:995">
                    <a href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&sop=and&stx=%EA%B2%8C%EC%8B%9C%ED%8C%90" target="_self" class="gnb_1da">기본기능<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/login.php" target="_self" class="gnb_2da">로그인</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/register.php" target="_self" class="gnb_2da">회원가입</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&wr_id=1" target="_self" class="gnb_2da">비밀번호확인</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/current_connect.php" target="_self" class="gnb_2da">현재접속자</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/new.php" target="_self" class="gnb_2da">새글</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&sop=and&stx=%EA%B2%8C%EC%8B%9C%ED%8C%90" target="_self" class="gnb_2da">전체검색</a></li>
                    </ul>
                </li>
                                <li class="gnb_1dli" style="z-index:994">
                    <a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo" target="_self" class="gnb_1da">테마소개<u></u></a>
                    <span class="bg">하위분류</span><ul class="gnb_2dul">
                        <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo" target="_self" class="gnb_2da">테마안내</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=1" target="_self" class="gnb_2da">- 테마소개</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=2" target="_self" class="gnb_2da">- 게시판별 특이사항</a></li>
                                            <li class="gnb_2dli"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=3" target="_self" class="gnb_2da">- 사이트 제작절 차안내</a></li>
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

<div id="page_title" class="sbtImg">
	<div class="page_title_in">
		<h2>
			<strong title="갤러리(가로길게2단) 글쓰기">갤러리(가로길게2단) 글쓰기</strong>
			<span class="locationBar" title="현재위치"><span> <em class="fa fa-home" aria-hidden="true"></em> HOME <i class="fa fa-angle-right" aria-hidden="true"></i> </span> <span class="loc1D"><!-- 1차메뉴 --></span> <span class="loc2D"><!-- 2차메뉴 --></span></span>
		</h2>
	</div>
</div>

<div id="ctWrap">

	<div id="container">
<!-- skin : theme/gallery -->
<section id="bo_w">
    <h2 class="sound_only">갤러리(가로길게2단) 글쓰기</h2>

    <!-- 게시물 작성/수정 시작 { -->
    <form name="fwrite" id="fwrite" action="http://sample.paged.kr/purewhite/bbs/write_update.php" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off" style="width:100%">
    <input type="hidden" name="uid" value="23050415443293">
    <input type="hidden" name="w" value="">
    <input type="hidden" name="bo_table" value="gallery2">
    <input type="hidden" name="wr_id" value="0">
    <input type="hidden" name="sca" value="">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="sst" value="">
    <input type="hidden" name="sod" value="">
    <input type="hidden" name="page" value="">
    <input type="hidden" value="html1" name="html">
    
    <div class="bo_w_info write_div">
            <label for="wr_name" class="sound_only">이름<strong>필수</strong></label>
        <input type="text" name="wr_name" value="" id="wr_name" required class="frm_input required" placeholder="이름">
    
            <label for="wr_password" class="sound_only">비밀번호<strong>필수</strong></label>
        <input type="password" name="wr_password" id="wr_password" required class="frm_input required" placeholder="비밀번호">
    
                <label for="wr_email" class="sound_only">이메일</label>
            <input type="text" name="wr_email" value="" id="wr_email" class="frm_input email " placeholder="이메일">
        </div>

        <div class="write_div">
        <label for="wr_homepage" class="sound_only">홈페이지</label>
        <input type="text" name="wr_homepage" value="" id="wr_homepage" class="frm_input full_input" size="50" placeholder="홈페이지">
    </div>
    
    
    <div class="bo_w_tit write_div">
        <label for="wr_subject" class="sound_only">제목<strong>필수</strong></label>
        
        <div id="autosave_wrapper write_div">
            <input type="text" name="wr_subject" value="" id="wr_subject" required class="frm_input full_input required" size="50" maxlength="255" placeholder="제목">
                    </div>
        
    </div>

    <div class="write_div">
        <label for="wr_content" class="sound_only">내용<strong>필수</strong></label>
        <div class="wr_content smarteditor2">
                        <span class="sound_only">웹에디터 시작</span><script>document.write("<div class='cke_sc'><button type='button' class='btn_cke_sc'>단축키 일람</button></div>");</script>
<script src="http://sample.paged.kr/purewhite/plugin/editor/smarteditor2/js/service/HuskyEZCreator.js"></script>
<script>var g5_editor_url = "http://sample.paged.kr/purewhite/plugin/editor/smarteditor2", oEditors = [], ed_nonce = "DHWi96ytYM|1683186272|e31058560196bc0de737e31f22e21bc477bdbe5f";</script>
<script src="http://sample.paged.kr/purewhite/plugin/editor/smarteditor2/config.js"></script>
<script>
        $(function(){
            $(".btn_cke_sc").click(function(){
                if ($(this).next("div.cke_sc_def").length) {
                    $(this).next("div.cke_sc_def").remove();
                    $(this).text("단축키 일람");
                } else {
                    $(this).after("<div class='cke_sc_def' />").next("div.cke_sc_def").load("http://sample.paged.kr/purewhite/plugin/editor/smarteditor2/shortcut.html");
                    $(this).text("단축키 일람 닫기");
                }
            });
            $(document).on("click", ".btn_cke_sc_close", function(){
                $(this).parent("div.cke_sc_def").remove();
            });
        });
</script>
<textarea id="wr_content" name="wr_content" class="smarteditor2" maxlength="65536" style="width:100%;height:300px"></textarea>
<span class="sound_only">웹 에디터 끝</span>                    </div>
        
    </div>

	<div class="bo_w_info"><b>관련링크</b> <span>(유투브 공유링크를 삽입하시면 글보기 페이지에 유투브 영상이 출력됩니다.)</span></div>
        <div class="bo_w_link write_div">
        <label for="wr_link1"><i class="fa fa-link" aria-hidden="true"></i><span class="sound_only"> 링크  #1</span></label>
        <input type="text" name="wr_link1" value="" id="wr_link1" class="frm_input full_input" size="50" placeholder="링크를 입력해 주세요.">
    </div>
        <div class="bo_w_link write_div">
        <label for="wr_link2"><i class="fa fa-link" aria-hidden="true"></i><span class="sound_only"> 링크  #2</span></label>
        <input type="text" name="wr_link2" value="" id="wr_link2" class="frm_input full_input" size="50" placeholder="링크를 입력해 주세요.">
    </div>
    
        <div class="bo_w_flie write_div">
        <div class="file_wr write_div">
            <label for="bf_file_1" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #1</span></label>
            <input type="file" name="bf_file[]" id="bf_file_1" title="파일첨부 1 : 용량 1,048,576 바이트 이하만 업로드 가능" class="frm_file ">
        </div>
        
                
    </div>
        <div class="bo_w_flie write_div">
        <div class="file_wr write_div">
            <label for="bf_file_2" class="lb_icon"><i class="fa fa-download" aria-hidden="true"></i><span class="sound_only"> 파일 #2</span></label>
            <input type="file" name="bf_file[]" id="bf_file_2" title="파일첨부 2 : 용량 1,048,576 바이트 이하만 업로드 가능" class="frm_file ">
        </div>
        
                
    </div>
    

        <div class="write_div">
        <fieldset id="captcha" class="captcha recaptcha"><script src="https://www.google.com/recaptcha/api.js?hl=ko"></script><script src="http://sample.paged.kr/purewhite/plugin/recaptcha/recaptcha.js"></script><div class="g-recaptcha" data-sitekey="6LeuK0wUAAAAAPjl3Se_sedBwESPliGdmhzhRqgq"></div></fieldset>    </div>
    

    <div class="btn_confirm write_div">
        <a href="./board.php?bo_table=gallery2" class="btn_cancel btn">취소</a>
        <input type="submit" value="작성완료" id="btn_submit" accesskey="s" class="btn_submit btn">
    </div>
    </form>

    <script>
        function html_auto_br(obj)
    {
        if (obj.checked) {
            result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
            if (result)
                obj.value = "html2";
            else
                obj.value = "html1";
        }
        else
            obj.value = "";
    }

    function fwrite_submit(f)
    {
        var wr_content_editor_data = oEditors.getById['wr_content'].getIR();
oEditors.getById['wr_content'].exec('UPDATE_CONTENTS_FIELD', []);
if(jQuery.inArray(document.getElementById('wr_content').value.toLowerCase().replace(/^\s*|\s*$/g, ''), ['&nbsp;','<p>&nbsp;</p>','<p><br></p>','<div><br></div>','<p></p>','<br>','']) != -1){document.getElementById('wr_content').value='';}
if (!wr_content_editor_data || jQuery.inArray(wr_content_editor_data.toLowerCase(), ['&nbsp;','<p>&nbsp;</p>','<p><br></p>','<p></p>','<br>']) != -1) { alert("내용을 입력해 주십시오."); oEditors.getById['wr_content'].exec('FOCUS'); return false; }

        var subject = "";
        var content = "";
        $.ajax({
            url: g5_bbs_url+"/ajax.filter.php",
            type: "POST",
            data: {
                "subject": f.wr_subject.value,
                "content": f.wr_content.value
            },
            dataType: "json",
            async: false,
            cache: false,
            success: function(data, textStatus) {
                subject = data.subject;
                content = data.content;
            }
        });

        if (subject) {
            alert("제목에 금지단어('"+subject+"')가 포함되어있습니다");
            f.wr_subject.focus();
            return false;
        }

        if (content) {
            alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
            if (typeof(ed_wr_content) != "undefined")
                ed_wr_content.returnFalse();
            else
                f.wr_content.focus();
            return false;
        }

        if (document.getElementById("char_count")) {
            if (char_min > 0 || char_max > 0) {
                var cnt = parseInt(check_byte("wr_content", "char_count"));
                if (char_min > 0 && char_min > cnt) {
                    alert("내용은 "+char_min+"글자 이상 쓰셔야 합니다.");
                    return false;
                }
                else if (char_max > 0 && char_max < cnt) {
                    alert("내용은 "+char_max+"글자 이하로 쓰셔야 합니다.");
                    return false;
                }
            }
        }

        if (!chk_captcha()) return false;

        document.getElementById("btn_submit").disabled = "disabled";

        return true;
    }
    </script>
</section>
<!-- } 게시물 작성/수정 끝 -->

    </div><!-- // #container 닫음 -->

	<aside id="sideBar">
		<h2 class="sound_only">사이트 전체메뉴</h2>

		<!-- SNB // -->
				<ul id="snb"><!-- <li class="snbHome"><h2><a href="http://sample.paged.kr/purewhite"><b>HOME</b></a></h2></li> --><li class="snb co_idgreeting  co_idgreeting co_idcompany bo_tablehistory co_idmap  "><h2><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting" target="_self"><b>ABOUT</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_co_idgreeting"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=greeting" target="_self" ><b><i class="fa fa-angle-right"></i> 인사말</b></a></li><li class="snb2d snb2d_co_idcompany"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=company" target="_self" ><b><i class="fa fa-angle-right"></i> 회사소개</b></a></li><li class="snb2d snb2d_bo_tablehistory"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=history" target="_self" ><b><i class="fa fa-angle-right"></i> 연혁</b></a></li><li class="snb2d snb2d_co_idmap"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=map" target="_self" ><b><i class="fa fa-angle-right"></i> 오시는 길</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/theme/pagedtheme/testPage.php" target="_self" ><b><i class="fa fa-angle-right"></i> 스타일 샘플</b></a></li></ul></li><li class="snb co_idbusiness  co_idbusiness bo_tableproduct_gallery bo_tableproduct_webzine "><h2><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business" target="_self"><b>BUSINESS</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_co_idbusiness"><a href="http://sample.paged.kr/purewhite/bbs/content.php?co_id=business" target="_self" ><b><i class="fa fa-angle-right"></i> 사업분야</b></a></li><li class="snb2d snb2d_bo_tableproduct_gallery"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_gallery" target="_self" ><b><i class="fa fa-angle-right"></i> 제품소개(갤러리형)</b></a></li><li class="snb2d snb2d_bo_tableproduct_webzine"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=product_webzine" target="_self" ><b><i class="fa fa-angle-right"></i> 제품소개(웹진형)</b></a></li></ul></li><li class="snb bo_tablebasic  bo_tablebasic bo_tableqna bo_tablefaq bo_tablewebzine bo_tableform "><h2><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" target="_self"><b>게시판샘플</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_bo_tablebasic"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=basic" target="_self" ><b><i class="fa fa-angle-right"></i> 기본게시판</b></a></li><li class="snb2d snb2d_bo_tableqna"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna" target="_self" ><b><i class="fa fa-angle-right"></i> Q&A게시판</b></a></li><li class="snb2d snb2d_bo_tablefaq"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=faq" target="_self" ><b><i class="fa fa-angle-right"></i> FAQ게시판</b></a></li><li class="snb2d snb2d_bo_tablewebzine"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=webzine" target="_self" ><b><i class="fa fa-angle-right"></i> 웹진형게시판</b></a></li><li class="snb2d snb2d_bo_tableform"><a href="http://sample.paged.kr/purewhite/bbs/write.php?bo_table=form" target="_self" ><b><i class="fa fa-angle-right"></i> 폼메일</b></a></li></ul></li><li class="snb bo_tablegallery  bo_tablegallery bo_tablegallery2 bo_tablegallery_box bo_tablegallery_box2 "><h2><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery" target="_self"><b>갤러리샘플</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_bo_tablegallery"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리게시판(기본)</b></a></li><li class="snb2d snb2d_bo_tablegallery2"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery2" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리(가로길게2단)</b></a></li><li class="snb2d snb2d_bo_tablegallery_box"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리게시판(박스형)</b></a></li><li class="snb2d snb2d_bo_tablegallery_box2"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=gallery_box2" target="_self" ><b><i class="fa fa-angle-right"></i> 갤러리게시판(박스-세로길게4단)</b></a></li></ul></li><li class="snb sflwr_subject%7C%7Cwr_contentand&stx    bo_tableqna1   sflwr_subject%7C%7Cwr_contentand&stx "><h2><a href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&sop=and&stx=%EA%B2%8C%EC%8B%9C%ED%8C%90" target="_self"><b>기본기능</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/login.php" target="_self" ><b><i class="fa fa-angle-right"></i> 로그인</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/register.php" target="_self" ><b><i class="fa fa-angle-right"></i> 회원가입</b></a></li><li class="snb2d snb2d_bo_tableqna1"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=qna&wr_id=1" target="_self" ><b><i class="fa fa-angle-right"></i> 비밀번호확인</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/current_connect.php" target="_self" ><b><i class="fa fa-angle-right"></i> 현재접속자</b></a></li><li class="snb2d snb2d_"><a href="http://sample.paged.kr/purewhite/bbs/new.php" target="_self" ><b><i class="fa fa-angle-right"></i> 새글</b></a></li><li class="snb2d snb2d_sflwr_subject%7C%7Cwr_contentand&stx"><a href="http://sample.paged.kr/purewhite/bbs/search.php?sfl=wr_subject%7C%7Cwr_content&sop=and&stx=%EA%B2%8C%EC%8B%9C%ED%8C%90" target="_self" ><b><i class="fa fa-angle-right"></i> 전체검색</b></a></li></ul></li><li class="snb bo_tablethemeinfo  bo_tablethemeinfo bo_tablethemeinfo1 bo_tablethemeinfo2 bo_tablethemeinfo3 "><h2><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo" target="_self"><b>테마소개</b> <sub>sample.paged.kr</sub></a></h2><em class="snb2dDown"><i class="fa fa-angle-down"></i><u class="fa fa-angle-up"></u></em><ul class="snb2dul"><li class="snb2d snb2d_bo_tablethemeinfo"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo" target="_self" ><b><i class="fa fa-angle-right"></i> 테마안내</b></a></li><li class="snb2d snb2d_bo_tablethemeinfo1"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=1" target="_self" ><b><i class="fa fa-angle-right"></i> - 테마소개</b></a></li><li class="snb2d snb2d_bo_tablethemeinfo2"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=2" target="_self" ><b><i class="fa fa-angle-right"></i> - 게시판별 특이사항</b></a></li><li class="snb2d snb2d_bo_tablethemeinfo3"><a href="http://sample.paged.kr/purewhite/bbs/board.php?bo_table=themeinfo&wr_id=3" target="_self" ><b><i class="fa fa-angle-right"></i> - 사이트 제작절 차안내</b></a></li></ul></li><li class="snb noInfoPageTit"></li></ul>
		<!-- // SNB -->
		
		<!-- 서브메뉴바 하단 정보// -->
		<dl class="snbCS">
			<dt>CS CENTER</dt>
			<dd>
				<strong><i class="fa fa-phone-square"></i> <span> Tel. 070-7558-6420</span> </strong>
				<b><span> E-mail. <a href='mailto:admin@websiting.co.kr'>admin@websiting.co.kr</a></span> </b>
				<b><span> Fax. 050-4156-1305</span> </b>
				
				<br>
				<span>고객센터 운영시간 <br>09:00 ~ 18:00</span>			</dd>
		</dl>
		<div id="snbMvAr">
			<a href="http://sample.paged.kr/purewhite" id="btnHome">HOME</a>
			<a id="snbClose"><i class="fa fa-close"></i><i class="sound_only">사이드메뉴 닫기</i></a>
			<div class="snbMvArBtn">
								<a href="http://sample.paged.kr/purewhite/bbs/login.php"><b>LOGIN</b></a>
				<a href="http://sample.paged.kr/purewhite/bbs/register.php">JOIN</a>
							</div>
		</div>
				<!-- //서브메뉴바 하단 정보 -->
    </aside>

	<aside class="clb"></aside>

</div><!-- // #ctWrap 닫음 -->
<!-- } 콘텐츠 끝 -->

<hr>

<!-- 하단 시작 { -->
<footer id="footer">
    <dl>
        <dt><img src="http://sample.paged.kr/purewhite/theme/pagedtheme/img/footerLogo.png" alt="페이지디 홈페이지 템플릿 테마"></dt>
        <dd>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/privacy.php .term_area" data-featherlight="iframe">개인정보처리방침</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/term.php .term_area" data-featherlight-type="ajax">이용약관</a>
            <a data-featherlight="http://sample.paged.kr/purewhite/theme/pagedtheme/noEmail.php .term_area" data-featherlight-type="ajax">이메일주소 무단수집거부</a>
        </dd>
    </dl>
	<address>
		<span>서울 관악구 조원중앙로 38-1한별빌딩</span> 
		 <em>|</em><span> Tel. 070-7558-6420</span> 
		 <em>|</em><span> Fax. 050-4156-1305</span> 
		 <em>|</em><span> E-mail. <a href='mailto:admin@websiting.co.kr'>admin@websiting.co.kr</a></span> 
		<br><span>본 샘플사이트를 베이스로 페이지디 <a href="https://paged.kr" target="_blank">paged.kr</a> 에서 제작요청 가능합니다.</span>	</address>
	<p><span>Copyright</span> &copy; <b>sample.paged.kr</b> <span>All rights reserved.</span></p>
</footer>

<button type="button" id="top_btn" class="fa fa-arrow-up" aria-hidden="true"><span class="sound_only">페이지 상단으로 이동</span></button>

<!-- 현재위치 및 서브메뉴 활성화 설정// -->
<script>
$(function(){$('.snb.bo_tablegallery2, .snb .snb2d_bo_tablegallery2').addClass('active');});/*  보테이블 : bo_tablegallery2  */
$(document).ready(function(){ if ( $("#snb > li").is(".snb.active") ) { $('.loc1D').text( $('#snb .bo_tablegallery2 h2 a b').text());$('.loc2D').html( $('.snb2d_bo_tablegallery2 a b').html());$('.faArr').html('<i class="fa fa-angle-right"></i>');var index = $("#snb > li").index("#snb > li.active");$( "#page_title" ).addClass("subTopBg_0"+($("#snb > li.bo_tablegallery2").index() + 1) ); } else { $('.loc1D').text('갤러리(가로길게2단) 글쓰기'); $('.noInfoPageTit').html('<h2><a><b>갤러리(가로길게2단) 글쓰기</b><sub>sample.paged.kr</sub></a></h2>'); $('.noInfoPageTit').addClass('active');$('#page_title').addClass('subTopBg_00'); } });  </script>
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
