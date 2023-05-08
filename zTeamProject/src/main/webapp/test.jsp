<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>stickcode_summernote</title>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <script>
    // 메인화면 페이지 로드 함수
    $(document).ready(function () {
        $('#summernote').summernote({
            placeholder: '내용을 작성하세요',
            height: 400,
            maxHeight: 400
        });
        
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
		
    });//end of $
</script>
</head>
<body>

<jsp:include page="new_header2.jsp"></jsp:include>

<form class="insert_lesson_frm " id="insert_lesson_frm" action="" method="post">
                  	
                     	<input type="text" name="insert_lesson_title" class="insert_lesson_title" id="insert_lesson_title" placeholder="제목을 입력해주세요">
                  
                     <div class="insert_sample_img">
                     	
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
                   
<jsp:include page="new_footer.jsp"></jsp:include>
</body>
</html>