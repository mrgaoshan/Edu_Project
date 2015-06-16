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
	var schoolId = '${sch.id}';
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
<div class="c-index-m-f" style="margin-top:20px; height:auto; min-height:250px;">
  <p class="c-i-m-f-t">在线报名</p>
  <p class="c-i-m-f-t  c-i-form-show" style="text-align:left;  line-height:22px; font-size:14px; color:red;margin-top: -10px;border-bottom: none;background: #e3ffce;">
    1、请各位同学认真填写以下报名信息。<br>
    2、本次报名不会影响你的填报志愿。<br>
    3、多一份选择，多一份希望。
  </p>
  <form method="post" id="registForm" action="#" class="zxbm">
    <p><label>您的姓名：</label><input type="text" name="name"  class="fdfinput" placeholder="输入名称" /></p>
    <p><label>性   别：</label>男：<input type="radio" name="gender" value="male" />&nbsp;&nbsp;
      女：<input type="radio" name="gender" value="female" />
    </p>
    <p><label>出生日期：</label><input type="text" name="birthday" placeholder="yyyymmdd" class="fdfinput" /></p>
    <p><label>预报专业：</label><select name="majorid" class="fdfinput" id="majorList">

    </select>
    </p>
    <p><label>联系电话：</label><input type="text" name="phone" class="fdfinput" placeholder="输入联系方式" /></p>
    <p><label>您的Q Q：</label><input type="text" name="qq" class="fdfinput"  placeholder="输入数字"/></p>
    
    
    <p><label></label><input type="button" class="submit" value="提交" onclick="submitForm()"/></p>
  </form>
</div>
