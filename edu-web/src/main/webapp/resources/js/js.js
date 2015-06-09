// JavaScript Document
$(document).ready(function(e) {
    $(".zsjz").click(function(e) {
        $(this).addClass("indexline1-now");
		$(".rmzy").removeClass("indexline1-now");
		$(".zsjz-c").show();
		$(".rmzy-c").hide();
    });
	$(".rmzy").click(function(e) {
        $(this).addClass("indexline1-now");
		$(".zsjz").removeClass("indexline1-now");
		$(".rmzy-c").show();
		$(".zsjz-c").hide();
    });
	$(".index-college").hover(function(){
			$(this).css("border","1px solid #ed0000");
		},function(){
			$(this).css("border","1px solid #ddd");
		});
});