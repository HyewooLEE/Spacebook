<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
function deleteArticle(space_no){
	var params = "space_no="+space_no;
	
 	$.ajax({
		type:"GET",
		url:"/Spacebook/adminArticleDelete.do",
		data:params,
		dataType:"json",
		success:function(result){
			swal("삭제 완료되었습니다.");
			$('#tableForm').html('');

			 for (var i=0; i<result.data.length; i++){
				 $('#tableForm').append(
					'<div class="dashboard-list " style="width:100%" id="tableForm">'+
					'<div class="dashboard-message" >'+
						'<div class="dashboard-message-avatar">'+
							'<img src="'+result.data[i].space_img1+'" style="object-fit: cover; width:50px; height: 50px;">'+
						'</div>'+
						'<div class="dashboard-message-text " style=" padding-top:15px;">'+
							'<a style="cursor:pointer; color:#000; font-size: 16px; font-weight: 600;" class="toggle"  href="#">'+
								result.data[i].space_name+
								'&nbsp;&nbsp;&nbsp;<span style="color:#4DB7FE; font-size:12px;">"'+result.data[i].space_category+'"</span>'+
								'&nbsp;&nbsp;&nbsp; host by &nbsp;&nbsp;'+result.data[i].memberVO.mem_Name+
							'</a>'+
						'</div>'+
						'<div class="listsearch-input-item pull-right " style="width:125px;">'+
							'<button class="btn color-bg flat-btn" id="deleteArticle" onClick="return deleteArticle("'+result.data[i].space_no+'");">삭제</button>'+
						'</div>'+
					'</div>'+
					'</div>'
				);
			}
			
		}
		,error:function(e){
			alert(params);
			alert(result.data[i].space_no);
			swal.getState();
			swal("실패", "삭제 실패했습니다", "warning", {
				buttons : "닫기"
			});
		}
	});
}

$(".dashboard-message-text a.toggle").on("click", function (a) {
    a.preventDefault();
    $(".dashboard-message-text a.toggle").removeClass("act-accordion");
    $(this).addClass("act-accordion");
    if ($(this).next('div.accordion-inner').is(':visible')) {
        $(this).next('div.accordion-inner').slideUp();
    } else {
        $(".accordion a.toggle").next('div.accordion-inner').slideUp();
        $(this).next('div.accordion-inner').slideToggle();
    }
});

</script>