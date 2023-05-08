<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
  <!--  <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
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
	<!-- 섬머노트(에디터) -->
	<!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<!-- include summernote css/js -->

  
	<!-- <script src="resources/js/summernote/summernote-lite.js"></script>
	<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>

	<link rel="stylesheet" href="resources/css/summernote/summernote-lite.css"> -->
   
   <!-- Modernizer for Portfolio -->
   <script src="resources/js/modernizer.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   
	<script type="text/javascript">
	$(function(){
		
		$('#summernote').summernote({
			  height: 300,                 // 에디터 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR"					// 한글 설정
		}); // end of summernote
		
		$.ajax({
				type	: 'post'
				,dataType : 'json'
				,url	: '/zTeamProject/selectAddr1.do'
				,success	: function(result){
					//alert(result);
					//console.log(result);
					
					var select = $('<select class = "addr1" name = "addr1" />')
					var opt = $('<option value = "시,도" />')
					opt.text('시,도');
					select.append(opt);
					for( row of result ){
						console.log(row['addr1']);
						var option = $('<option value = "'+row['addr1']+'" />');
						option.text(row['addr1']);
						select.append(option);
					} // end of for
					$('.select_location').append(select);
					
				}
				,error	: function(err){
					alert('error');
					console.log(err);
				}
	}); // end of ajax
	
	
   		$(".select_location").on('change',".addr1",function(){
   			//alert($(this).val());
   			if($(this).val()!="시,도"){
   				
   				var sel = $(this);
   				var param = { addr1 : $(this).val().trim() };
   				
   				$.ajax({
   					type	: 'post'
   					,data	: param
   					,dataType : 'json'
   					,url	: '/zTeamProject/selectAddr2.do'
   					,success	: function(result){
   						//alert(result);
   						//console.log(result);
   						
   						sel.nextAll().remove()
   						
   						var select = $('<select class = "addr2" name = "addr2" />')
   						var opt = $('<option value = "시,군,구" />')
   						opt.text('시,군,구');
   						select.append(opt);
   						for( row of result ){
   							console.log(row['addr2']);
   							var option = $('<option value = "'+row['addr2']+'" />');
   							option.text(row['addr2']);
   							select.append(option);
   						} // end of for
   						sel.parent().append(select);
   						
   					}
   					,error	: function(err){
   						alert('error');
   						console.log(err);
   					}
   		}); // end of ajax
   				
   			} // end of if
   			
   		});//end of on(지역1 셀렉트시 이벤트)
   		
   		$(".select_location").on('change','.addr2',function(){
   			//alert($(this).val());
   			if($(this).val()!="시,군,구"){
   				var sel = $(this);
   				var param = { addr2 : $(this).val().trim() };
   				
   				$.ajax({
   					type	: 'post'
   					,data	: param
   					,dataType : 'json'
   					,url	: '/zTeamProject/selectAddr3.do'
   					,success	: function(result){
   						//alert(result);
   						//console.log(result);
   						
   						sel.nextAll().remove()
   						
   						var select = $('<select class = "addr3" name = "addr3" />')
   						var opt = $('<option value = "법정동명" />')
   						opt.text('법정동명');
   						select.append(opt);
   						for( row of result ){
   							console.log(row['addr3']);
   							var option = $('<option value = "'+row['addr3']+'" />');
   							option.text(row['addr3']);
   							select.append(option);
   						} // end of for
   						sel.parent().append(select);
   						var location_number = $('<input type="hidden" name="location_number" id="location_number" />');
   						sel.parent().append(location_number);
   						
   					}
   					,error	: function(err){
   						alert('error');
   						console.log(err);
   					}
   		}); // end of ajax
   				
   			} // end of if
   			
   		});//end of on(지역2 셀렉트시 이벤트)
   		
   		$(".select_location").on('change','.addr3',function(){
   			//alert($(this).val());
   			if($(this).val()!="시,군,구"){
   				var sel = $(this);
   				var param = { 
   						addr1 : $(this).prev().prev().val().trim()
   						,addr2 : $(this).prev().val().trim()
   						,addr3 : $(this).val().trim() };
   				
   				$.ajax({
   					type	: 'post'
   					,data	: param
   					,dataType : 'json'
   					,url	: '/zTeamProject/selectLocNumByAddr.do'
   					,success	: function(result){
   						//alert(result);
   						//console.log(result);
   						
   						sel.next().val(result);
   						
   					}
   					,error	: function(err){
   						alert('error');
   						console.log(err);
   					}
   		}); // end of ajax
   				
   			} // end of if
   			
   		});//end of on(지역3 셀렉트시 이벤트)
   		
   		
		
	}); // end of $
	</script>
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

        
            <div id="" class="parallax" data-stellar-background-ratio="0.4" style="background-image:url('resources/uploads/nomalBack.png');">
         <div class="container">
            
              
                  
                  <form class="insert_lesson_frm " id="insert_lesson_frm" action="" method="post">
                  	
                     	<input type="text" name="insert_lesson_title" class="insert_lesson_title" id="insert_lesson_title" placeholder="제목을 입력해주세요">
                  
                     <div class="insert_sample_img">
                     	<img src="./resources/uploads/agent.jpg">
                    	 <input type="file"  name="insert_lesson_img1" class="insert_lesson_img1" id="insert_lesson_img1">
                  	</div>
                  		
                  		
                    
 <!-- ===옵션=== --><div name="insert_lesson_option" class="insert_lesson_option" id="insert_lesson_option"> <!-- ====================옵션======================================= -->
 						<table>
 							<tr>
 								<td>카테고리</td>
 								<td><select name="insert_lesson_big_category" class="insert_lesson_big_category" id="insert_lesson_big_category">
 								<option value="요리">요리</option>
 								<option value="운동">운동</option>
 								<option value="공예">공예</option>
 								<option value="IT">IT</option>
 								<option value="게임">게임</option>
 								<option value="음악">음악</option>
 								<option value="교육">교육</option>
 								<option value="인테리어">인테리어</option>
 								<option value="기타">기타</option>
 								</select></td>
 							</tr>
                    		<tr>
                    			<td>가격 : </td> 
                    			<td><input type="text" name="price" class="price" id="price"></td>
                    			<td>기부하시나요? &nbsp;<input type="checkbox" class="insert_lesson_paid" id="free"></td>
                    		</tr>
                    		<tr>
                    			<td>지역 :&nbsp;</td>
                    			<td class='select_location' colspan="2">
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>수강인원</td>
                    			<td><input type="number" name="max_member" class="max_member" id="max_member" min="1"></td>
                    			<td>명</td>
                    		</tr>
                    		<tr>
                    			<td>해쉬태그 :&nbsp;</td>
                    			<td><input type="text" name="hashtag" class="hashtag" id="hashtag" placeholder="#품i"></td>
                    		</tr>
                    		<tr>
                    			<td>개강일 :&nbsp; </td>
                    			<td><input type="date" name="start_date" class="start_date" id="start_date"></td>
                    		</tr>
                    		<tr>
                    			<td>종강일 :&nbsp; </td>
                    			<td><input type="date" name="end_date" class="end_date" id="end_date"></td>
                    	</tr>
                    </table>
                    </div>
                    		 <textarea name="detail" id="summernote" class="detail" placeholder="내용을 입력해주세요"></textarea></br>
                    
                    
                    
                    
                    	 <button type="submit" name="insert_lesson_submit" id="insert_lesson_submit" class="insert_lesson_submit">작성완료</button>
                  	
                   </form>
                 
         
         </div><!-- end container -->
      </div>
      
      <!-- end copyrights -->
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- ALL JS FILES -->
      <script src="resources/js/all.js"></script>
      <!-- ALL PLUGINS -->
      <script src="resources/js/custom.js"></script>
      <script src="resources/js/portfolio.js"></script>
      <script src="resources/js/hoverdir.js"></script>
      <!-- MAP & CONTACT -->
   </body>
</html>