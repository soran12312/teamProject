$(function(){
	
	$(".loc").hover(function(){
		$(this).css('cursor','pointer');
	});
	
	$(".locDiv").on('click','a',function(){ // 관심지역 클릭 시
		
		var clk = $(this);
		
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
				clk.parent().append(select); // DB에서 시,도 정보 셀렉트박스 옵션에 담아 화면에 출력
				clk.remove(); // 원래 존재하던 관심지역 요소제거
			}
			,error	: function(err){
				alert('error');
				console.log(err);
			}
}); // end of ajax
		
		
	}); // end of on(지역 a태그 최초 클릭 시)
	
	$(".locDiv").on('change',".addr1",function(){
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
	
	$(".locDiv").on('change','.addr2',function(){
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
					var num = sel.parent().next().attr("name").replace('location_number','');
					//alert(num);
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
					
				}
				,error	: function(err){
					alert('error');
					console.log(err);
				}
	}); // end of ajax
			
		} // end of if
		
	});//end of on(지역2 셀렉트시 이벤트)
	
	$(".locDiv").on('change','.addr3',function(){
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
					
					sel.parent().next().next().val(result);
					
				}
				,error	: function(err){
					alert('error');
					console.log(err);
				}
	}); // end of ajax
			
		} // end of if
		
	});//end of on(지역3 셀렉트시 이벤트)
	
	$("#my_class").on("click","button",function(){ // 나의 강좌 삭제
		var class_number = $(this).next().val();
		//alert(class_number);
		if(confirm("정말 삭제하시겠습니까?")){
			location.href = '/zTeamProject/delete_my_class.do?class_number='+class_number;
		}
		
	});
	
	$('#my_like').on("click",".cancel_like",function(){ // 좋아요 누른 강좌 좋아요 취소
		var like_number = $(this).next().val();
		//alert(like_number);
		if(confirm("좋아요를 취소하시겠습니까?")){
			location.href = '/zTeamProject/cancel_like.do?like_number='+like_number;
		}
	});
	
	$('#my_like').on("click",".class_join",function(){ // 좋아요 누른 강좌 수강신청
		var class_number = $(this).next().val();
		//alert(class_number);
		if(confirm("해당 강좌를 수강하시겠습니까?")){
			location.href = '/zTeamProject/class_join.do?class_number='+class_number;
		}
	});
	
	$('#prev_class').on("click",".cancel_join",function(){ // 수강신청한 강좌 수강취소
		var class_join_number = $(this).next().val();
		var class_number = $(this).next().next().val();
		//alert(class_join_number);
		if(confirm("정말 취소하시겠습니까?")){
			location.href = '/zTeamProject/cancel_join.do?class_join_number='+class_join_number+'&class_number='+class_number;
		}
	});
	
	$("#my_guild").on("click",".delete_my_guild",function(){ // 내가 개설한 커뮤니티 삭제
		var guild_number = $(this).next().val();
		//alert(guild_number);
		if(confirm("정말 삭제하시겠습니까?")){
			location.href = '/zTeamProject/delete_my_guild.do?guild_number='+guild_number;
		}
	});
	
	$('#like_guild').on("click",".cancel_guild_like",function(){ // 좋아요 누른 커뮤니티 좋아요취소
		var like_number = $(this).next().val();
		//alert(like_number);
		if(confirm("좋아요를 취소하시겠습니까?")){
			location.href = '/zTeamProject/cancel_like.do?like_number='+like_number;
		}
	});
	
	$('#join_guild').on("click",".cancel_guild_join",function(){ // 내가 가입한 커뮤니티 탈퇴
		var guild_join_number = $(this).next().val();
		var guild_number = $(this).next().next().val();
		//alert(class_join_number);
		if(confirm("정말 탈퇴하시겠습니까?")){
			location.href = '/zTeamProject/cancel_guild_join.do?guild_join_number='+guild_join_number+'&guild_number='+guild_number;
		}
	});
	
	$('#my_review').on("click",".delete_review",function(){ // 내가 쓴 리뷰 삭제
		var review_number = $(this).next().val();
		//alert(review_number);
		if(confirm("정말 삭제하시겠습니까?")){
			location.href = '/zTeamProject/delete_review.do?review_number='+review_number;
		}
	});
	
	$('#like_review').on("click",".cancel_like",function(){ // 좋아요 누른 리뷰 좋아요취소
		var like_number = $(this).next().val();
		//alert(like_number);
		if(confirm("좋아요를 취소하시겠습니까?")){
			location.href = '/zTeamProject/cancel_like.do?like_number='+like_number;
		}
	});
	
	var prev_li = $('li.active'); // 이전 탭버튼
	var prev_div = $('div.active'); // 이전 열려있는 탭 내용부분
	
	$('#Tab').on("click","a",function(){ // 탭 클릭 시 이벤트
		var div_id = $(this).attr("value"); // 누른 탭 내용부분의 id
		//alert(div_id);
		prev_li.removeClass("active");
		prev_div.removeClass("active"); // 이전탭에서 active 클래스를 제거
		
		$(this).parent().addClass("active"); // 누른 탭과 내용에 active 클래스 추가
		$(div_id).addClass("active");
		
		prev_li = $(this).parent(); // 이전 탭버튼과 탭 내용부분에 눌러서 열린곳을 넣어줌
		prev_div = $(div_id);
	});
	
	$('#my_question').on("click",".question",function(){
		$(this).next().toggle(); // 나의 문의 테이블 클릭 시 문의 상세내용 보이고 다시 클릭 시 안보이게 함
	})
	
	$('.question').hover(function(){ // 나의 문의 문의내역 마우스 올라갈 시 손가락모양으로 바뀌게하기
		$(this).css("cursor","pointer");
	});
	
}); // end of $