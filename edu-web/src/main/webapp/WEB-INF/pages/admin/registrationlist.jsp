<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>升学网报名系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="generator" content="MShtml 8.00.6001.18783">
<meta name="copyright" content="Copyright 2014 - L-Sky.Cn">
<meta name="Author" content="升学网报名 - L-Sky.Cn">
<meta name="keywords" content="">
<meta name="description" content="">
<script type="text/javascript" src="${ctx}/resources/js/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/layer/layer.js"></script>
<script type="text/javascript">
$(function(){
	getDataList();
});
function getDataList(){
	$.ajax({
		url : "${ctx}//admin/getregistrationlist.do",
		method : "post",
		success : function(data){
			if(data.length != 0){
				var index = layer.load(2, {time: 6*1000});
				setTimeout(function(){
					var row = "";
					for(var i=0;i<data.length;i++){
						var gender = "";
						if(data[i].gender == "male"){
							gender = "男";
						}else if(data[i].gender == "female"){
							gender = "女";
						}
						row += "<tr><td>"+data[i].name+"</td><td>"+data[i].schoolname+"</td><td>"+data[i].majorname+"</td><td>"+
						gender+"</td><td>"+data[i].phone+"</td><td>"+data[i].qq+"</td></tr>";
					}
					$("#registration_tb").append(row);
					layer.close(index);
				}, 1000);
			}else{
				layer.alert("暂无报名数据");
			}
		}
	});
}
</script>
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/login.css">
<style type="text/css">
.download {
    margin: 20px 33px 10px;
    *margin-bottom: 30px;
    padding: 5px;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    background: #e6e6e6;
    border: 1px dashed #df0031;
    font-size: 14px;
    font-family: Comic Sans MS;
    font-weight: bolder;
    color: #555
}

.download a {
    padding-left: 5px;
    font-size: 14px;
    font-weight: normal;
    color: #555;
    text-decoration: none;
    letter-spacing: 1px
}

.download a:hover {
    text-decoration: underline;
    color: #36F
}

.download span {
    float: right
}

.tableme {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
}

.tableme td {
    font-size: 12px;
    color: #333333;
    text-align: center;
    background: url(table_top.jpg) repeat-x top center;
    border: 1px solid #ccc;
}

.tableme tr {
    background: #fff;
    font-size: 12px;
    color: #666666;
}

.tableme tr.alt-row {
    background: #f2f7fc;
}

.tableme td {
    line-height: 20px;
    text-align: left;
    padding: 4px 10px 3px 10px;
    height: 18px;
    border: 1px solid #ccc;
}
</style>
</head>
<body>
    <div class="main">
        <div class="header hide"
            style="font-size: 24px; color: #fff; font-family: 微软雅黑; text-align: center;">升学网报名系统</div>
        <table id="registration_tb" class="tableme" spacing="0" width="100%"
            style="margin-top: 15px; border-left: 1px solid #333; border-top: 1px solid #333;">
            <tr>
                <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">姓名</td>
                <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">报考学校</td>
                <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">报考专业</td>
                <!-- <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">出生日期</td> -->
                <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">性别</td>
                <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">联系电话</td>
                <td
                    style="background: #ddd; height: 30px; font-size: 14px; font-weight: bold">QQ</td>
            </tr>
        </table>
    </div>
    <script type="text/javascript" src="${ctx}/resources/js/placeholder.js"></script>
    <!--[if IE 6]>
    <script type="text/javascript" src="js/belatedpng.js" ></script>
    <script type="text/javascript">
    	DD_belatedPNG.fix("*");
    </script>
    <![endif]-->

    <script src="${ctx}/resources/js/h.js" type="text/javascript"></script>
    <!--@end-->

</body>
<style type="text/css" id="101075665000"></style>
</html>