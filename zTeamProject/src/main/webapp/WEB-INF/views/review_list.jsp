<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>품 -i</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="" rel="icon">
  <link href="" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&family=Inter:wght@400;500&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"> 
  <link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
  
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

   <!-- fontawesome -->
  <script src="https://kit.fontawesome.com/d3610539ab.js" crossorigin="anonymous"></script>
  <!-- ... -->
  
  
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  
  <!-- JQuery -->
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

  <!-- Template Main CSS Files -->
  <link href="resources/assets/css/variables.css" rel="stylesheet">
  <link href="resources/assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: ZenBlog
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/zenblog-bootstrap-blog-template/
  * Author: BootstrapMade.com
  * License: https:///bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <img src="resources/images/logos/logo.png" alt="">
        <!-- <h1>ZenBlog</h1> -->
      </a>

      <nav id="gnb">
        <h2>메인메뉴</h2>
        <div class="gnb_wrap">
			<div id="logo">
				<a href="index.jsp"><img src="resources/images/classList/logo.png" alt="페이지디 홈페이지 템플릿 테마"></a>
			</div>
            <ul id="gnb_1dul">
                <li class="gnb_1dli" style="z-index:999">
                    <a href="index.jsp" target="_self" class="gnb_1da">HOME<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:998">
                    <a href="guild_list.do" target="_self" class="gnb_1da">커뮤니티<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:997">
                    <a href="class_list.do" target="_self" class="gnb_1da">강좌<u></u></a>
                </li>
                <li class="gnb_1dli" style="z-index:996">
                    <a href="review_list.do" target="_self" class="gnb_1da">리뷰<u></u></a>
                </li> 
                <li class="gnb_1dli" style="z-index:996"> 
                    <a href="mypage연결해조...form class_list" target="_self" class="gnb_1da">마이페이지<u></u></a>
                </li>             
  				<li class="gnb_1dli allSchBoxWr">
					<button type="button" id="btnSchbox" title="전체검색 열기"><i class="fa fa-search"></i></button>

					<div id="allSchBox">
						<fieldset>
							<legend>사이트 내 전체검색</legend>
							<form name="fsearchbox" method="get" action="" onsubmit="return fsearchbox_submit(this);">
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
    </nav><!-- .navbar -->

      <div class="position-relative">
        <a href="#" class="mx-2"><span class="bi-facebook"></span></a>
        <a href="#" class="mx-2"><span class="bi-twitter"></span></a>
        <a href="#" class="mx-2"><span class="bi-instagram"></span></a>

        <a href="#" class="mx-2 js-search-open"><span class="bi-search"></span></a>
        <i class="bi bi-list mobile-nav-toggle"></i>

        <!-- ======= Search Form ======= -->
        <div class="search-form-wrap js-search-form-wrap">
          <form action="search-result.html" class="search-form">
            <span class="icon bi-search"></span>
            <input type="text" placeholder="Search" class="form-control">
            <button class="btn js-search-close"><span class="bi-x"></span></button>
          </form>
        </div><!-- End Search Form -->

      </div>

    </div>

  </header><!-- End Header -->
  
  
  
  

  <main id="main">
    <section>
      <div class="container">
        <div class="row">
        
        <!-- 검색버튼 -->
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle"  data-bs-toggle="dropdown" >
                    	<span id="search_concept">제목+내용</span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a class="dropdown-item" href="#contains">제목+내용</a></li>
                      <li><a class="dropdown-item" href="#contains">제목</a></li>
                      <li><a class="dropdown-item" href="#its_equal">내용</a></li>
                      <li><a class="dropdown-item" href="#greather_than">아이디</a></li>
                      <li><a class="dropdown-item" href="#less_than">작성자</a></li>
                    </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term...">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                </span>
             
            </div>
        </div>
        <!-- 검색버튼 -->	
        
        <!-- 작성하기 -->
        <div class="col-xs-8 col-xs-offset-10">
	        <button href="" class="btn_b02">작성하기</button>
        </div>

          <div class="col-md-9" data-aos="fade-up">
            <h3 class="category-title">Review</h3>

            <div class="d-md-flex post-entry-2 half">
              <a href="single-post.html" class="me-4 thumbnail">
                <img src="resources/assets/img/post-landscape-6.jpg" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                <h3><a href="single-post.html">What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="resources/assets/img/person-2.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Wade Warren</h3>
                  </div>
                  
                  <div class="col-xs-15 col-xs-offset-5">
                  
	                  <div class="icon" >
	                  	<a class="btn_b00"><i class="fa-sharp fa-regular fa-thumbs-up"></i></a>
	                  	<a class="btn_b00"><i class="fa-regular fa-eye"></i></a>
	                  </div>
                  </div>
                  
                </div>
              </div>
            </div>

            <div class="d-md-flex post-entry-2 half">
              <a href="single-post.html" class="me-4 thumbnail">
                <img src="resources/assets/img/post-landscape-1.jpg" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                <h3><a href="single-post.html">What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="resources/assets/img/person-2.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Wade Warren</h3>
                  </div>
                  
                  
                  <div class="col-xs-15 col-xs-offset-5">
                  
	                  <div class="icon" >
	                  	<a class="btn_b00"><i class="fa-sharp fa-regular fa-thumbs-up"></i></a>
	                  	<a class="btn_b00"><i class="fa-regular fa-eye"></i></a>
	                  </div>
                  </div>
                  
                </div>
              </div>
            </div>

            <div class="d-md-flex post-entry-2 half">
              <a href="single-post.html" class="me-4 thumbnail">
                <img src="resources/assets/img/post-landscape-2.jpg" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                <h3><a href="single-post.html">What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="resources/assets/img/person-2.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Wade Warren</h3>
                  </div>
                  
                  <div class="col-xs-15 col-xs-offset-5">
                  
	                  <div class="icon" >
	                  	<a class="btn_b00"><i class="fa-sharp fa-regular fa-thumbs-up"></i></a>
	                  	<a class="btn_b00"><i class="fa-regular fa-eye"></i></a>
	                  </div>
                  </div>
                  
                </div>
              </div>
            </div>

            <div class="d-md-flex post-entry-2 half">
              <a href="single-post.html" class="me-4 thumbnail">
                <img src="resources/assets/img/post-landscape-3.jpg" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                <h3><a href="single-post.html">What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="resources/assets/img/person-2.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Wade Warren</h3>
                  </div>
                  
                  <div class="col-xs-15 col-xs-offset-5">
                  
	                  <div class="icon" >
	                  	<a class="btn_b00"><i class="fa-sharp fa-regular fa-thumbs-up"></i></a>
	                  	<a class="btn_b00"><i class="fa-regular fa-eye"></i></a>
	                  </div>
                  </div>
                  
                </div>
              </div>
            </div>

            <div class="d-md-flex post-entry-2 half">
              <a href="single-post.html" class="me-4 thumbnail">
                <img src="resources/assets/img/post-landscape-4.jpg" alt="" class="img-fluid">
              </a>
              <div>
                <div class="post-meta"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                <h3><a href="single-post.html">What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</a></h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio placeat exercitationem magni voluptates dolore. Tenetur fugiat voluptates quas, nobis error deserunt aliquam temporibus sapiente, laudantium dolorum itaque libero eos deleniti?</p>
                <div class="d-flex align-items-center author">
                  <div class="photo"><img src="resources/assets/img/person-2.jpg" alt="" class="img-fluid"></div>
                  <div class="name">
                    <h3 class="m-0 p-0">Wade Warren</h3>
                  </div>
                  
                  
                  <div class="col-xs-15 col-xs-offset-5">
                  
	                  <div class="icon" >
	                  	<a class="btn_b00"><i class="fa-sharp fa-regular fa-thumbs-up"></i></a>
	                  	<a class="btn_b00"><i class="fa-regular fa-eye"></i></a>
	                  </div>
                  </div>
                  
                </div>
              </div>
            </div>
            
            
            <div class="text-start py-4">
              <div class="custom-pagination">
                <a href="#" class="prev">Prevous</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#" class="next">Next</a>
              </div>
            </div>
          </div>
		</div>

       </div>
    </section>
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">

    <div class="footer-content">
      <div class="container">

        <div class="row g-5">
          <div class="col-lg-4">
            <h3 class="footer-heading">About ZenBlog</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam ab, perspiciatis beatae autem deleniti voluptate nulla a dolores, exercitationem eveniet libero laudantium recusandae officiis qui aliquid blanditiis omnis quae. Explicabo?</p>
            <p><a href="about.html" class="footer-link-more">Learn More</a></p>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">Navigation</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="index.html"><i class="bi bi-chevron-right"></i> Home</a></li>
              <li><a href="index.html"><i class="bi bi-chevron-right"></i> Blog</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Categories</a></li>
              <li><a href="single-post.html"><i class="bi bi-chevron-right"></i> Single Post</a></li>
              <li><a href="about.html"><i class="bi bi-chevron-right"></i> About us</a></li>
              <li><a href="contact.html"><i class="bi bi-chevron-right"></i> Contact</a></li>
            </ul>
          </div>
          <div class="col-6 col-lg-2">
            <h3 class="footer-heading">Categories</h3>
            <ul class="footer-links list-unstyled">
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Business</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Culture</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Sport</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Food</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Politics</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Celebrity</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Startups</a></li>
              <li><a href="category.html"><i class="bi bi-chevron-right"></i> Travel</a></li>

            </ul>
          </div>

          <div class="col-lg-4">
            <h3 class="footer-heading">Recent Posts</h3>

            <ul class="footer-links footer-blog-entry list-unstyled">
              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-1.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>5 Great Startup Tips for Female Founders</span>
                  </div>
                </a>
              </li>

              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-2.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>What is the son of Football Coach John Gruden, Deuce Gruden doing Now?</span>
                  </div>
                </a>
              </li>

              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-3.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>Life Insurance And Pregnancy: A Working Mom’s Guide</span>
                  </div>
                </a>
              </li>

              <li>
                <a href="single-post.html" class="d-flex align-items-center">
                  <img src="resources/assets/img/post-sq-4.jpg" alt="" class="img-fluid me-3">
                  <div>
                    <div class="post-meta d-block"><span class="date">Culture</span> <span class="mx-1">&bullet;</span> <span>Jul 5th '22</span></div>
                    <span>How to Avoid Distraction and Stay Focused During Video Calls?</span>
                  </div>
                </a>
              </li>

            </ul>
            
            

          </div>
        </div>
      </div>
    </div>

    <div class="footer-legal">
      <div class="container">

        <div class="row justify-content-between">
          <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
            <div class="copyright">
              © Copyright <strong><span>ZenBlog</span></strong>. All Rights Reserved
            </div>

            <div class="credits">
              <!-- All the links in the footer should remain intact. -->
              <!-- You can delete the links only if you purchased the pro version. -->
              <!-- Licensing information: https://bootstrapmade.com/license/ -->
              <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/herobiz-bootstrap-business-template/ -->
              Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>

          </div>

          <div class="col-md-6">
            <div class="social-links mb-3 mb-lg-0 text-center text-md-end">
              <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bi bi-skype"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>

        </div>

      </div>
    </div>

  </footer>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/aos/aos.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/assets/js/main.js"></script>

</body>

</html>