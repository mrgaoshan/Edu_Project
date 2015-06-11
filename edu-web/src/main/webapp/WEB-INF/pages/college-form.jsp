<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
function submitForm(){
	
	$.ajax({
                cache: true,
                type: "POST",
                url: "<%=request.getContextPath() %>/user/apply.do",
                data:$('#registForm').serialize(),
                async: false,
                error: function(request) {
                    alert("Connection error");
                },
                success: function(data) {
                   alert(data.msg);
                }
            });
}

$(function(){
	var schoolId = '${schId}';
	$("#majorList").empty();  
	var emptopt = " <option value='0' selected='selected'>---选择专业---</option>";
	$("#majorList").append(emptopt);
	 $.post("<%=request.getContextPath() %>/findMajor.do",{shoolId:schoolId},function(result){ 
		   $(result).each(function(index){
			   
			   var majorName =result[index].name;
			   
			   var majorId =result[index].id;
			   
			   var opt = "<option value="+majorId + ">"+majorName+"</option>"
			   
			   $("#majorList").append(opt);
			  
		   });
		  });
		
});



</script>
<div class="c-index-m-f" style="margin-top:20px;">
  <p class="c-i-m-f-t">在线报名</p>
  <form method="post" id="registForm" action="#" class="zxbm">
    <p><label>您的名称：</label><input type="text" name="name"  class="fdfinput" placeholder="输入名称" /></p>
    <p><label>报名专业：</label><select name="majorid" class="fdfinput" id="majorList">
     
    </select>
    </p>
    <p><label>联系方式：</label><input type="text" name="phone" class="fdfinput" placeholder="输入联系方式" /></p>
    <p><label>您的Q Q：</label><input type="text" name="qq" class="fdfinput"  placeholder="输入数字"/></p>
    <p><label>出生日期：</label><input type="text" name="birthday" placeholder="yyyymmdd" class="fdfinput" /></p>
    <p><label>性   别：</label>男：<input type="radio" name="gender" value="male" />
      女：<input type="radio" name="gender" value="female" />
    </p>
    <p><label></label><input type="button" class="submit" value="提交" onclick="submitForm()"/></p>
  </form>
</div>