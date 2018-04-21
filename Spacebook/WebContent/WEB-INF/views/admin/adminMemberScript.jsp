<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
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

$(document).ready( function() {
	
	 $("#type1").change(function () {
		document.getElementById('form1').submit();
        });
	 $("#type2").change(function () {
		document.getElementById('form1').submit();
        });
});
$(document).ready( function() {
	$("#form1 > div:nth-child(4) > span > div.dropdown > ul > li.sel.selected").css("display","none");
	$("#form1 > div:nth-child(5) > span > div.dropdown > ul > li.selected.sel").css("display","none");
	 $(".customFilter").change(function (e) {
	 	var filter = $(this).find('option:selected').attr('value');
	 	var mem_Id = $(this).attr('id');
	 	$.ajax({
			type:"GET",
			url:"${pageContext.request.contextPath}/changeAuth.do",
			data:{
				filter : filter,
				mem_Id : mem_Id
			},
			dataType:"json",
			success:function(check){
				if(check.check == '1'){
					swal.getState();
					swal("성공", "수정 완료 됬습니다", "success", {
						buttons : "닫기"
					});
				}else{
					swal.getState();
					swal("실패", "수정 실패했습니다", "warning", {
						buttons : "닫기"
					});
				}
			}
			,error:function(e){
				swal.getState();
				swal("실패", "수정 실패했습니다", "warning", {
					buttons : "닫기"
				});
			}
		});
	});
        });
 
</script>

<c:if test="${param.type1 !='' && param.type1 != null &&param.type1 ne null}">
<script>
 $(document).ready(function(){
   var filter = "${param.type1 }";
   var text =$("option[value=${param.type1}]").html();
   $("option[value=${param.type1}]").attr("selected","selected")
   $("#form1 > div:nth-child(4) > span > div.select > div").html(text);  
}); 
</script>
</c:if> 	


<c:if test="${param.type2 !='' && param.type2 != null &&param.type2 ne null}">
<script>
 $(document).ready(function(){
   var filter = "${param.type2 }";
   var text =$("option[value=${param.type2}]").html();
   $("option[value=${param.type2}]").attr("selected","selected")
   $("#form1 > div:nth-child(5) > span > div.select > div").html(text);  
}); 
</script>
</c:if>
<c:if test="${param.search !='' && param.search != null &&param.search ne null}">
<script>
 $(document).ready(function(){
   var filter = "${param.search }";
   $("#search").prop("value",filter);
}); 
</script>
</c:if>   

<style>
.selectbox .select{
margin-top:10px;
height:28px;
}
.search-widget input{
height: 35px;
}
.search-widget .search-submit{
height: 37px;
border-radius: 0px 10px 10px 0px;
}
</style>