  $(document).ready(function () {
    	$('#summernote').summernote({ // 썸머노트 생성
            placeholder: '내용을 작성하세요',
            height: 400,
            maxHeight: 400,
            lang: "ko-KR",
            callbacks: {
    			onImageUpload : function(files, editor, welEditable){ // 이미지 업로드 시 콜백
    				for (var i = files.length - 1; i >= 0; i--) { // 다중업로드된 이미지 갯수만큼 반복
    					sendFile(files[i],this); // 함수호출
    					
    				}
    			}
            }
        });
        
        function sendFile(file, editor, welEditable){ // 이미지 업로드 함수
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
    				setTimeout(function() { // 이미지가 업로드되는 시간이 이미지를 불러내는 시간보다 늦어져서 404에러가 뜨기때문에 업로드 시작 5초 후에 이미지를 불러오게한다.
    				$('#summernote').summernote("insertImage",data); // 저장된 이미지 url을 썸머노트에 넣는다.
    				var path = $('#path').val();
    				if(path==''){
    					$('#path').val(data); // #path에 값이 없으면 가져온 경로를 넣고
    				}else{
    					path = path+","+data
    					$('#path').val(path); // 값이 있으면 value에 ,를 추가 후 가져온 경로를 붙힌다.
    				}
    				}, 5000);
    			}
    		});
    	}
        
        
        $.ajax({ // 화면 로드 시 Ajax로 시,도 셀렉트박스를 만든다.
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
				for( row of result ){ // DB에서 가져온 시,도 갯수만큼 반복
					console.log(row['addr1']);
					var option = $('<option value = "'+row['addr1']+'" />'); // 옵션으로 가져온 데이터를 넣는다.
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


		$(".select_location").on('change',".addr1",function(){ // 시,도 셀렉트박스 선택 시 이벤트
			//alert($(this).val());
			if($(this).val()!="시,도"){ // 선택한 값이 "시,도"가 아닐 경우
				
				var sel = $(this);
				var param = { addr1 : $(this).val().trim() }; // Ajax로 보낼 데이터로 이용자가 고른 시,도 정보를 가져간다.
				
				$.ajax({
					type	: 'post'
					,data	: param
					,dataType : 'json'
					,url	: '/zTeamProject/selectAddr2.do'
					,success	: function(result){
						//alert(result);
						//console.log(result);
						
						sel.nextAll().remove() // 시,도 셀렉트박스 뒤에있는 모든 요소를 제거
						
						var select = $('<select class = "addr2" name = "addr2" />')
						var opt = $('<option value = "시,군,구" />')
						opt.text('시,군,구');
						select.append(opt);
						for( row of result ){
							console.log(row['addr2']);
							var option = $('<option value = "'+row['addr2']+'" />');
							option.text(row['addr2']);
							select.append(option); // DB에서 가져온 시,군,구 정보를 셀렉트박스 옵션으로 넣어서 화면에 출력
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
		
		$(".select_location").on('change','.addr2',function(){ // 시,군,구 셀렉트박스 선택 시
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
							select.append(option); // DB에서 가져온 법정동명을 셀렉트박스 옵션에 담아 화면에 출력
						} // end of for
						sel.parent().append(select);
						var location_number = $('<input type="hidden" name="location_number" id="location_number" />');
						sel.parent().append(location_number); // 이후 가져올 지역코드를 담을 보이지않는 input태그를 만들어 넣는다.
						
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
						,addr3 : $(this).val().trim() }; // 이용자가 선택한 지역정보를 모두 담아 가져간다.
				
				$.ajax({
					type	: 'post'
					,data	: param
					,dataType : 'json'
					,url	: '/zTeamProject/selectLocNumByAddr.do'
					,success	: function(result){
						//alert(result);
						//console.log(result);
						
						sel.next().val(result); // DB에서 가져온 지역코드를 보이지않는 input태그에 넣는다.
						
					}
					,error	: function(err){
						alert('error');
						console.log(err);
					}
		}); // end of ajax
				
			} // end of if
			
		});//end of on(지역3 셀렉트시 이벤트)
		
		$('#free').change(function(){ // 재느이부 선택 시
			if($(this).is(":checked")){
				$('#price').val('0'); // 가격란에 0 입력
				$('#price').attr('readonly','readonly'); // 가격란 수정 불가능하게 변경
			}else{
				$('#price').val(''); // 가격란을 비움
				$('#price').removeAttr('readonly'); // 수정 가능하게 변경
			}
			
		}); // 무료강좌 체크박스 클릭 시 이벤트
		
		const input = document.querySelector('input[name=hashtag]');
	    let tagify = new Tagify(input, {
	    	  originalInputValueFormat: valuesArr => valuesArr.map(item => item.value).join(',') // form으로 보낼 태그값들을 구분자를 ','로 하여 묶어서 보냄
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