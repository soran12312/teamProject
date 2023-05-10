<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); //한글처리 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>품-i</title>
    
    <!-- include libraries(jQuery, bootstrap) -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <link rel="stylesheet" href="resources/css/summernote/summernote-lite.css">	
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>

    <link rel="stylesheet" href="resources/new_Css_Sibal.css">
    
    <!-- 소스 다운 -->
<script src="https://unpkg.com/@yaireo/tagify"></script>
<!-- 폴리필 (구버젼 브라우저 지원) -->
<script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
    
    <script>
    // 메인화면 페이지 로드 함수
    $(document).ready(function () {
    	$('#summernote').summernote({
            placeholder: '내용을 작성하세요',
            height: 400,
            maxHeight: 400,
            lang: "ko-KR",
            callbacks: {
    			onImageUpload : function(files, editor, welEditable){
    				for (var i = files.length - 1; i >= 0; i--) {
    					sendFile(files[i],this);
    					
    				}
    			}
            }
        });
        
        function sendFile(file, editor, welEditable){
    		var data = new FormData();
    		data.append("file", file);
    		$.ajax({
    			data : data,
    			type : "POST",
    			url : "SummerNoteImageFile",
    			contentType : false,
    			processData : false,
    			enctype : 'multipart/form-data',
    			success : function(data){
    				console.log(data);
    				//console.log(data.url);
    				//alert(data);
    				setTimeout(function() {
    				$('#summernote').summernote("insertImage",data);
    				var path = $('#path').val();
    				if(path==''){
    					$('#path').val(data);
    				}else{
    					path = path+","+data
    					$('#path').val(path);
    				}
    				
    				}, 5000);
    			}
    		});
    	}
        
        
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
		
		$('#free').change(function(){
			if($(this).is(":checked")){
				$('#price').val('0');
				$('#price').attr('readonly','readonly');
			}else{
				$('#price').val('');
				$('#price').removeAttr('readonly');
			}
			
		}); // 무료강좌 체크박스 클릭 시 이벤트
		
		const input = document.querySelector('input[name=hashtag]');
	    let tagify = new Tagify(input, {
	    	  originalInputValueFormat: valuesArr => valuesArr.map(item => item.value).join(',')
	    }); // initialize Tagify
	    
	    // 태그가 추가되면 이벤트 발생
	    tagify.on('add', function() {
	      console.log(tagify.value); // 입력된 태그 정보 객체
	      
	      console.log(input.value);
	    });
	   
	    var date = new Date().toISOString().slice(0, 10); // 현재 날짜 yyyy-mm-dd
	    
	 $("#start_date").attr("min", date); // 시작일 최소값을 현재날짜로
	 
	 $("#start_date").change(function(){ // 시작일 선택 시 이벤트
		 //alert();
		 $("#end_date").attr("min", $(this).val()); // 종료일 최소값을 시작일로
	 });
	 
	 
	    
    });
</script>
</head>
<body class="main">

<%--<jsp:include page="new_header2.jsp"></jsp:include>--%>

<div class = "background">
	      <div class="background_img">
	      <div class="main_info_div">
	      
<form class="insert_lesson_frm " id="insert_lesson_frm" action="/zTeamProject/class_insert.do" method="post" >
                  	
                     	<input type="text" name="class_name" class="class_name" id="class_name" placeholder="제목을 입력해주세요" required>
                  
                  <input type="hidden" name='email' value="${sessionScope.email}">
                    
 			<!-- ===옵션=== -->
 			<div name="insert_lesson_option" class="insert_lesson_option" id="insert_lesson_option"> 
 			<!-- ====================옵션======================================= -->
 						<table>
 							<tr>
 								<td>카테고리</td>
 								<td><select name="category_number" class="category_number" id="category_number">
 								<option value="1">요리</option>
 								<option value="2">운동</option>
 								<option value="3">공예</option>
 								<option value="4">IT</option>
 								<option value="5">게임</option>
 								<option value="6">음악</option>
 								<option value="7">교육</option>
 								<option value="8">인테리어</option>
 								<option value="9">기타</option>
 								</select></td>
 							</tr> 
                    		<tr>
                    			<td>가격 : </td> 
                    			<td><input type="text" name="price" class="price" id="price" required></td>
                    			<td>기부하시나요? &nbsp;<input type="checkbox" class="insert_lesson_paid" id="free"></td>
                    			<td><input type="hidden" name="path" id="path"></td>
                    		</tr>
                    		<tr>
                    			<td>지역 :&nbsp;</td>
                    			<td class='select_location' colspan="2">
                    			</td>
                    		</tr>
                    		<tr>
                    			<td>수강인원</td>
                    			<td><input type="number" name="max_member" class="max_member" id="max_member" min="1" required></td>
                    			<td>명</td>
                    		</tr>
                    		<tr>
                    			<td>해쉬태그 :&nbsp;</td>
                    			<td colspan="2"><input type="text" name="hashtag" class="hashtag" id="hashtag" placeholder="태그입력 후 엔터"></td>
                    		</tr>
                    		<tr>
                    			<td>개강일 :&nbsp; </td>
                    			<td><input type="date" name="start_date" class="start_date" id="start_date" required></td>
                    		</tr>
                    		<tr>
                    			<td>종강일 :&nbsp; </td>
                    			<td><input type="date" name="end_date" class="end_date" id="end_date" required></td>
                    	</tr>
                    </table>
                    </div>
                    		 <textarea id="summernote" class="summernote" placeholder="내용을 입력해주세요"></textarea></br>
                    <textarea id="detail" name="detail" style="display: none;"></textarea>
                    
                    	 <button type="submit" name="insert_lesson_submit" id="insert_lesson_submit" class="insert_lesson_submit"  onclick="$('#detail').val($('#summernote').summernote('code'));">작성완료</button>
                  	
                   </form>
                   </div>
                   </div>
                   </div>

<jsp:include page="../../new_footer.jsp"></jsp:include>

</body>
</html>