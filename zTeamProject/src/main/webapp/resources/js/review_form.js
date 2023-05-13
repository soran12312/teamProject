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
    				}, 4000);
    			}
    		});
    	}
        
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