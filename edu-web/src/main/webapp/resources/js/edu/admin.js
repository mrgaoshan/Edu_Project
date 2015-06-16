$(function(){
	$("#login_sbm").click(function(){
		$.ajax({
			url : "/edu-web/usrLogin.do",
			method : "post",
			data : {username : $("#username").val(),password : $("#password").val()},
			success : function(data){
				if(data==true){
					window.location.href="/edu-web/admin/index.do";
				}else{
					alert("用户名或密码错误");
				}
			}
		});
	});
});