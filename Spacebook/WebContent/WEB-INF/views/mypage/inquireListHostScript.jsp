<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
function deleteInquire(inq_no){
	var params = "inq_no="+inq_no;
	var countVal = 0;
 	$.ajax({
		type:"GET",
		url:"/Spacebook/deleteInquire.do",
		data:params,
		dataType:"json",
		success:function(result){
			swal("삭제 완료되었습니다.");
			$('#inquireTbody').html('');
			 for (var i=0; i<result.data.length; i++){
				if(${login.mem_No}==result.data[i].mem_no){
					countVal = 1;
					if(result.data[i].inq_step==0){
					 	$('#inquireTbody').append(
							 '<tr style ="text-align:center;cursor:pointer;" onClick =" location.href=\'inquireContent.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.page+' \' ">'+
									'<td width="30%" >'+result.data[i].spaceDTO.space_name+'</td>'+
									'<td width="30%"><a href="inquireContent.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.page+'">'+result.data[i].inq_title+' </a></td>'+
									'<td width="20%">'+result.data[i].inq_writeDate+'</td>'+
									'<td width="10%" onclick="event.cancelBubble = true;" style="text-align:center;"><button class="btn btn-primary btn-xs" onClick="showInquire();" ><span class="glyphicon glyphicon-pencil"></span></button></td>'+
									'<td width="10%" onclick="event.cancelBubble = true;" style="text-align:center;"><button class="btn btn-danger btn-xs" onClick="return deleteInquire('+result.data[i].inq_no+');"><span class="glyphicon glyphicon-trash"></span></button></td>'+
							 '</tr>'     
						 );
					}
				}else if (i == result.data.length -1){
						if(countVal != 1){
							$('#inquireTbody').append(
								'<tr>'+
						        	'<td colspan="5" align="center"><h5>해당 결과물이 없습니다.</h5></td>'+
						    	'</tr>'
							);
						}
				}
				
			 }
		}
		,error:function(e){
			alert(params);
			alert(result.data[i].inq_no);
			swal.getState();
			swal("실패", "삭제 실패했습니다", "warning", {
				buttons : "닫기"
			});
		}
	});
}

function showInquire(){
	$('.showModal').fadeIn();
}

function closeInquire(){
	$('.showModal').fadeOut();
}
</script>
