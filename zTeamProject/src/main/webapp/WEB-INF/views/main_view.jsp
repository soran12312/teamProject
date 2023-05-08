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
      <!-- header -->
      <jsp:include page="../../header.jsp"></jsp:include>
      <!-- end header -->
      <div id="home" class="parallax first-section" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/MainBack.png');">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-sm-12">
                  <div class="big-tagline clearfix">
                     <h2 id='main_info' class='main_info'>
                     품i에서 재능을 판매하고 <br/>
                     기부도 시작하세요!</h2>
                  </div>
               </div>
               <div class="col-md-6 wow slideInRight hidden-xs hidden-sm">
                  <div class="contact_form">
                     <h3><i class="fa fa-envelope-o grd1 global-radius"></i> Login</h3>
                     <form id="loginForm" class="row" name="contactform" method="post">
                        <fieldset class="row-fluid">
                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                              <a id="login" class="btn kakao-login" href="https://kauth.kakao.com/oauth/authorize?client_id=3ce0aad34a9acc02c24c9294a3cfc537&redirect_uri=http://localhost:8080/zTeamProject/member_join_form.do&response_type=code"></a>
                           </div>
                           <br/>
                           <div class="text-center">
                           		<a><br/>카카오톡으로 1초만에 회원되기</a>
                           </div>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      <!-- end section ================================================== 메인 1페이지====================================================== -->
      <div id="features" class="section wb">
         <div class="container">
            <div class="section-title row text-center">
               <div class="col-md-8 col-md-offset-2">
                  <small>오늘의 인기글을 둘러보세요</small>
                  <h3 class="lead">오늘의 추천 게시글</h3>
               </div>
               <!-- end col -->
            </div>
            <!-- end title -->
            </div>
            <!-- end how-its-work -->
            <hr class="invis">
            <div class="row text-center">
               <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="resources/uploads/estate_01.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="resources/uploads/estate_01.jpg" alt="" class="img-responsive img-rounded">
                     </div>
                     <h3>Spacious and Large Garden</h3>
                     <p>Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est, convallis nec purus vitae, iaculis posuere sapien. Cum sociis natoque.</p>
                  </div>
                  <!-- end service -->
               </div>
               <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="resources/uploads/estate_03.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="resources/uploads/estate_03.jpg" alt="" class="img-responsive img-rounded">
                     </div>
                     <h3>With its Own Pool</h3>
                     <p>Duis at tellus at dui tincidunt scelerisque nec sed felis. Suspendisse id dolor sed leo rutrum euismod. Nullam vestibulum fermentum erat. It nam auctor. </p>
                  </div>
                  <!-- end service -->
               </div>
               <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="resources/uploads/estate_02.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="resources/uploads/estate_02.jpg" alt="" class="img-responsive img-rounded">
                     </div>
                     <h3>In Forests- Fresh Clean Air</h3>
                     <p>Etiam materials ut mollis tellus, vel posuere nulla. Etiam sit amet lacus vitae massa sodales aliquam at eget quam. Integer ultricies et magna quis.</p>
                  </div>
                  <!-- end service -->
               </div>
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
         <div class="sep1"></div>
      </div>
      <!-- end section -->
      <div id="agent" class="parallax section db parallax-off" style="background-image:url('resources/uploads/parallax_02.png');">
         <div class="container">
            <div class="section-title row text-center">
               <div class="col-md-8 col-md-offset-2">
               		<p class="lead">오늘의 인기리뷰를 둘러보세요!</p>
                  	<h3>오늘의 리뷰☞pick!</h3>
               </div>
               <!-- end col -->
            </div>
            <!-- end title -->
            <div class="row">
               <div class="col-md-3">
                  <div class="post-media wow fadeIn">
                     <img src="resources/uploads/agent.jpg" alt="" class="img-responsive img-rounded">
                     <a href="http://www.youtube.com/watch?v=nrJtHemSPW4" data-rel="prettyPhoto[gal]" class="playbutton"><i class="flaticon-play-button"></i></a>
                  </div>
                  <!-- end media -->
               </div>
               <!-- end col -->
               <div class="col-md-6">
                  <div class="message-box">
                     <h4>The Agent</h4>
                     <h2>Jenny Martines</h2>
                     <p class="lead">Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus. Sed a tellus quis mi rhoncus dignissim.</p>
                     <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum. Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                     <a href="#contact" data-scroll class="btn btn-light global-radius btn-brd grd1 effect-1">Contact Me</a>
                  </div>
                  <!-- end messagebox -->
               </div>
               <!-- end col -->
               <div class="col-md-3">
                  <div class="agencies_meta clearfix">
                     <span><i class="fa fa-envelope "></i> <a href="mailto:support@sitename.com">support@sitename.com</a></span>
                     <span><i class="fa fa-link "></i> <a href="#">www.sitename.com</a></span>
                     <span><i class="fa fa-phone-square "></i> +1 232 444 55 66</span>
                     <span><i class="fa fa-print "></i> +1 232 444 55 66</span>
                     <span><i class="fa fa-facebook-square "></i> <a href="#">facebook.com/tagline</a></span>
                     <span><i class="fa fa-twitter-square "></i> <a href="#">twitter.com/tagline</a></span>
                     <span><i class="fa fa-linkedin-square "></i> <a href="#">linkedin.com/tagline</a></span>
                  </div>
                  <!-- end agencies_meta -->
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
         </div>
      </div>
      <div id="gallery" class="section wb">
         <div class="sep2"></div>
         <div class="container">
            <div class="section-title row text-center">
               <div class="col-md-8 col-md-offset-2">
                  <p class="lead">오늘의 인기리뷰를 둘러보세요!</p>
                  <h3>오늘의 기부☞Pick!</h3>
               </div>
               <!-- end col -->
            </div>
            <!-- end title -->
            <div id="da-thumbs" class="da-thumbs portfolio">
               <div class="post-media pitem item-w1 item-h1 cat1">
                  <a href="resources/uploads/home_01.jpg" data-rel="prettyPhoto[gal]">
                     <img src="resources/uploads/home_01.jpg" alt="" class="img-responsive">
                     <div>
                        <i class="flaticon-unlink"></i>
                     </div>
                  </a>
               </div>
               <div class="post-media pitem item-w1 item-h1 cat2">
                  <a href="resources/uploads/home_02.jpg" data-rel="prettyPhoto[gal]">
                     <img src="resources/uploads/home_02.jpg" alt="" class="img-responsive">
                     <div>
                        <i class="flaticon-unlink"></i>
                     </div>
                  </a>
               </div>
               <div class="post-media pitem item-w1 item-h1 cat1">
                  <a href="resources/uploads/home_03.jpg" data-rel="prettyPhoto[gal]">
                     <img src="resources/uploads/home_03.jpg" alt="" class="img-responsive">
                     <div>
                        <i class="flaticon-unlink"></i>
                     </div>
                  </a>
               </div>
               <div class="post-media pitem item-w1 item-h1 cat3">
                  <a href="resources/uploads/home_04.jpg" data-rel="prettyPhoto[gal]">
                     <img src="resources/uploads/home_04.jpg" alt="" class="img-responsive">
                     <div>
                        <i class="flaticon-unlink"></i>
                     </div>
                  </a>
               </div>
               <div class="post-media pitem item-w1 item-h1 cat2">
                  <a href="resources/uploads/home_05.jpg" data-rel="prettyPhoto[gal]">
                     <img src="resources/uploads/home_05.jpg" alt="" class="img-responsive">
                     <div>
                        <i class="flaticon-unlink"></i>
                     </div>
                  </a>
               </div>
               <div class="post-media pitem item-w1 item-h1 cat1">
                  <a href="resources/uploads/home_06.jpg" data-rel="prettyPhoto[gal]">
                     <img src="resources/uploads/home_06.jpg" alt="" class="img-responsive">
                     <div>
                        <i class="flaticon-unlink"></i>
                     </div>
                  </a>
               </div>
            </div>
            <!-- end portfolio -->
         </div>
         <!-- end container -->
      </div>
      <!-- end section -->
      <div id="testimonials" class="section lb">
         <div class="container">
            <div class="section-title row text-center">
               <div class="col-md-8 col-md-offset-2">
                  <p class="lead">오늘의 인기강의를 둘러보세요!</p>
                  <h3>오늘의 동네수업☞Pick!</h3>
               </div>
               <!-- end col -->
            </div>
            <!-- end title -->
            <div class="row">
               <div class="col-md-12 col-sm-12">
                  <div class="testi-carousel owl-carousel owl-theme">
                     <div class="testimonial clearfix">
                        <div class="desc">
                           <h3><i class="fa fa-quote-left"></i> Wonderful Support!</h3>
                           <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                        </div>
                        <div class="testi-meta">
                           <img src="resources/uploads/testi_01.png" alt="" class="img-responsive alignleft">
                           <h4>James Fernando <small>- Manager of Racer</small></h4>
                        </div>
                        <!-- end testi-meta -->
                     </div>
                     <!-- end testimonial -->
                     <div class="testimonial clearfix">
                        <div class="desc">
                           <h3><i class="fa fa-quote-left"></i> Awesome Services!</h3>
                           <p class="lead">Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed.</p>
                        </div>
                        <div class="testi-meta">
                           <img src="resources/uploads/testi_02.png" alt="" class="img-responsive alignleft">
                           <h4>Jacques Philips <small>- Designer</small></h4>
                        </div>
                        <!-- end testi-meta -->
                     </div>
                     <!-- end testimonial -->
                     <div class="testimonial clearfix">
                        <div class="desc">
                           <h3><i class="fa fa-quote-left"></i> Great & Talented Team!</h3>
                           <p class="lead">The master-builder of human happines no one rejects, dislikes avoids pleasure itself, because it is very pursue pleasure. </p>
                        </div>
                        <div class="testi-meta">
                           <img src="resources/uploads/testi_03.png" alt="" class="img-responsive alignleft">
                           <h4>Venanda Mercy <small>- Newyork City</small></h4>
                        </div>
                        <!-- end testi-meta -->
                     </div>
                     <!-- end testimonial -->
                     <div class="testimonial clearfix">
                        <div class="desc">
                           <h3><i class="fa fa-quote-left"></i> Wonderful Support!</h3>
                           <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                        </div>
                        <div class="testi-meta">
                           <img src="resources/uploads/testi_01.png" alt="" class="img-responsive alignleft">
                           <h4>James Fernando <small>- Manager of Racer</small></h4>
                        </div>
                        <!-- end testi-meta -->
                     </div>
                     <!-- end testimonial -->
                     <div class="testimonial clearfix">
                        <div class="desc">
                           <h3><i class="fa fa-quote-left"></i> Awesome Services!</h3>
                           <p class="lead">Explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you completed.</p>
                        </div>
                        <div class="testi-meta">
                           <img src="resources/uploads/testi_02.png" alt="" class="img-responsive alignleft">
                           <h4>Jacques Philips <small>- Designer</small></h4>
                        </div>
                        <!-- end testi-meta -->
                     </div>
                     <!-- end testimonial -->
                     <div class="testimonial clearfix">
                        <div class="desc">
                           <h3><i class="fa fa-quote-left"></i> Great & Talented Team!</h3>
                           <p class="lead">The master-builder of human happines no one rejects, dislikes avoids pleasure itself, because it is very pursue pleasure. </p>
                        </div>
                        <div class="testi-meta">
                           <img src="resources/uploads/testi_03.png" alt="" class="img-responsive alignleft">
                           <h4>Venanda Mercy <small>- Newyork City</small></h4>
                        </div>
                        <!-- end testi-meta -->
                     </div>
                     <!-- end testimonial -->
                  </div>
                  <!-- end carousel -->
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      <!-- end section -->
      <div id="support" class="section wb">
         <div class="container">
            <div class="section-title text-center">
               <h3>고객센터</h3>
               <p class="lead">평일 9:00 ~ 6:00 고객센터 운영</p>
            </div>
            <!-- end title -->
            <div class="row">
               <div class="col-md-8 col-md-offset-2">
                  <div class="contact_form">
                     <div id="message"></div>
                     <form id="question" class="row" action="insertQuestion.do" name="question" method="post"  enctype="multipart/form-data">
                        <fieldset class="row-fluid">
                        <div class="col-xs-12">
                        <div class="col-md-6 col-sm-6">
                       		문의유형 <select name="question_category" id="question_category" class="selectpicker form-control " data-style="btn-white">
                                 <option value="사업자신청">사업자신청</option>
                                 <option value="유료회원신청">유료회원신청</option>
                                 <option value="강좌신고">강좌신고</option>
                                 <option value="모임신고">모임신고</option>
                                 <option value="리뷰신고">리뷰신고</option>
                                 <option value="기타문의">기타문의</option>
                            </select>
                            </div>
                            </div>
                            <input type="hidden" name='member_check' id='member_check' value='0' >
                          		 <div class="col-xs-12">
                             		제목 <input type="text" name="title" id="title" class="form-control" placeholder="제목을 입력해주세요">
                           		 </div>
                           		 <div class="col-xs-12">
                             		 이메일 <input type="email" name="email" id="email" class="form-control" placeholder="이메일을 입력해주세요">
                             	 </div>
                              	 <div class="col-xs-12">
                               		내용 <textarea name="content" id="content" class="form-control" placeholder="내용을 입력해주세요"></textarea>
                               	 </div>
                               	 <div class=" col-xs-12">
                               	 첨부파일 <input type='file' name="file" id="file" class="form-control"/>
                           		 </div>
                           		 <div class="col-md-6 col-sm-6">
                           		 	<button type="reset" name="q_delete_btn" id="q_delete_btn" class="q_delete_btn form-control">취소</button>
                           		 </div>
                           		 <div class="col-md-6 col-sm-6">
                           		 	<button type="submit" name="q_submit_btn" id="q_submit_btn" class="q_submit_btn form-control">보내기</button>
                        		</div>
                        </fieldset>
                     </form>
                  </div>
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      <!-- end section -->
      <!-- footer -->
      <jsp:include page="../../footer.jsp"></jsp:include>
      <!-- end footer -->
      <!-- end copyrights -->
      
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
</html>