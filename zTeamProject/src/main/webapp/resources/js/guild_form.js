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
    				test("로딩중"); // 로딩이미지 호출
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
			if($(this).val()!="법정동명"){
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
	    let tagify = new Tagify(input); // initialize Tagify
	    
	    // 태그가 추가되면 이벤트 발생
	    tagify.on('add', function() {
	      console.log(tagify.value); // 입력된 태그 정보 객체
	    })
	    

		
    });//end of $
    
        function test(imageName) {
    LoadingWithMask('http://192.168.0.68:8080/zTeamProject/resources/uploads/Spinner_loading.gif');
    setTimeout("closeLoadingWithMask()", 4500);
}
 
function LoadingWithMask(gif) {
    //화면의 높이와 너비를 구합니다.
    var maskHeight = $(document).height();
    var maskWidth  = window.document.body.clientWidth;
     
    //화면에 출력할 마스크를 설정해줍니다.
    var mask       = "<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
    var loadingImg = '';
     
    loadingImg += "<div id='loadingImg'>";
    loadingImg += " <img src='"+ gif + "' style='position: absolute; display: block; margin: 0px auto;'/>";
 	loadingImg += "</div>";
 	
    //화면에 레이어 추가
    $('body')
        .append(mask)
 
    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채웁니다.
    $('#mask').css({
            'width' : maskWidth,
            'height': maskHeight,
            'opacity' : '0.3'
    }); 
  
    //마스크 표시
    $('#mask').show();
  
    //로딩중 이미지 표시
    $('#mask').append(loadingImg);
}
 
function closeLoadingWithMask() {
    $('#mask, #loadingImg').hide();
    $('#mask, #loadingImg').empty();  
}