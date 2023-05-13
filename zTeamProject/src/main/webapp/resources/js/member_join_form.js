$(function(){
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
   						var location_number = $('<input type="text" name="location_number'+sel.parents("span").attr('value')+'" class="location_number" style="display: none;" required/>');
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
   		
   		function join(){
   			if($('.location_number').length != 3){alert("관심지역을 선택해주세요");return false;}
   		};
   		
		
	}); // end of $