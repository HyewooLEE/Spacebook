<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
 
</script>
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