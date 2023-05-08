<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!-- Mobile Metas -->
   <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
   <!-- Site Metas -->
   <title>품-i</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
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

   
   <!-- Modernizer for Portfolio -->
   <script src="resources/js/modernizer.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   <![endif]-->
   </head>
   
   <body class="realestate_version">
      <!-- LOADER -->
      <div id="preloader">
         <img class="preloader" src="resources/images/loaders/loader-realestate.gif" alt="">
      </div>
      <!-- end loader -->
      <!-- END LOADER -->
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
      </header><!--=====END of header========================================================================================================= -->

        
            <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/nomalBack.png');">
         		<div class="container">
         		
         			<div class="card-content">
						<form class="form-horizontal" action="@{/board/register.do}" object="" method="post" enctype="multipart/form-data" onsubmit="">
							<!--/* update의 경우 서버로 전달할 게시글 번호 (PK) */-->
							<input type="hidden" if="*{idx != null and idx > 0}" field="*{idx}" />
		
			
							<div class="form-group">
								<label for="title" class="col-sm-2 control-label">제목</label>
								<div class="col-sm-10">
									<input type="text" field="*{title}" class="form-control" placeholder="제목을 입력해 주세요." />
								</div>
							</div>
			
							<div class="form-group">
								<label for="writer" class="col-sm-2 control-label">이름</label>
								<div class="col-sm-10">
									<input type="text" th:field="*{writer}" class="form-control" placeholder="이름을 입력해 주세요." />
								</div>
							</div>
			
							<div class="form-group">
								<label for="content" class="col-sm-2 control-label">내용</label>
								<div class="col-sm-10">
									<textarea field="*{content}" class="form-control" placeholder="내용을 입력해 주세요."></textarea>
								</div>
							</div>
			
			
							   <!--/* 저장된 파일이 없는 파일 영역 */-->
							<div data-name="fileDiv" class="form-group filebox bs3-primary">
								<label for="file_0" class="col-sm-2 control-label">파일1</label>
								<div class="col-sm-10">
									<input type="text" class="upload-name" value="파일 찾기" readonly />
									<label for="file_0" class="control-label">찾아보기</label>
									<input type="file" name="files" id="file_0" class="upload-hidden" onchange="changeFilename(this)" />
								
									<button type="button" onclick="addFile()" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
										<i class="fa fa-plus" aria-hidden="true"></i>
									</button>
									<button type="button" onclick="removeFile(this)" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
										<i class="fa fa-minus" aria-hidden="true"></i>
									</button>
								</div>
							</div>
							
			
							
			
							<div id="btnDiv" class="btn_wrap text-center" object="${params}">
								<a href="|@{/board/list.do}*{makeQueryString(currentPageNo)}|" class="btn btn-default waves-effect waves-light">뒤로가기</a>
								<button type="submit" class="btn btn-primary waves-effect waves-light">작성하기</button>
							</div>
						</form>
					</div>
					<!-- /.card-content -->
                  
                  
         
         		</div><!-- end container -->
      		</div>

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
      
      
      <script>
      
      let fileIdx = 0; /*[- 파일 인덱스 처리용 전역 변수 -]*/
      
      function addFile() {
			
			const fileDivs = $('div[data-name="fileDiv"]');
			if (fileDivs.length > 2) {
				alert('파일은 최대 세 개까지 업로드 할 수 있습니다.');
				return false;
			}
		
			fileIdx++;
		
			const fileHtml = `
				<div data-name="fileDiv" class="form-group filebox bs3-primary">
					<label for="file_${fileIdx}" class="col-sm-2 control-label"></label>
					<div class="col-sm-10">
						<input type="text" class="upload-name" value="파일 찾기" readonly />
						<label for="file_${fileIdx}" class="control-label">찾아보기</label>
						<input type="file" name="files" id="file_${fileIdx}" class="upload-hidden" onchange="changeFilename(this)" />
		
						<button type="button" onclick="removeFile(this)" class="btn btn-bordered btn-xs visible-xs-inline visible-sm-inline visible-md-inline visible-lg-inline">
							<i class="fa fa-minus" aria-hidden="true"></i>
						</button>
					</div>
				</div>
			`;
		
			$('#btnDiv').before(fileHtml);
		}

		/*[- end of function -]*/
		
		function removeFile(elem) {

			const prevTag = $(elem).prev().prop('tagName');
			if (prevTag === 'BUTTON') {
				const file = $(elem).prevAll('input[type="file"]');
				const filename = $(elem).prevAll('input[type="text"]');
				file.val('');
				filename.val('파일 찾기');
				return false;
			}
		
			const target = $(elem).parents('div[data-name="fileDiv"]');
			target.remove();
		}
		/*[- end of function -]*/

		function changeFilename(file) {

			file = $(file);
			const filename = file[0].files[0].name;
			const target = file.prevAll('input');
			target.val(filename);
		}
		/*[- end of function -]*/

		/*]]>*/
	</script>
      
      
   </body>
</html>