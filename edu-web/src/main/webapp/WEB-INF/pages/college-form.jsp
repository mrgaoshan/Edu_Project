<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="c-index-m-f" style="margin-top:20px;">
  <p class="c-i-m-f-t">在线报名</p>
  <form method="post" action="#" class="zxbm">
    <p><label>您的名称：</label><input type="text" name="name"  class="fdfinput" placeholder="输入名称" /></p>
    <p><label>报名专业：</label><select name="zhuanye" class="fdfinput">
      <option selected="selected" value="">专业1</option>
      <option value="">专业1</option>
      <option value="">专业1</option>
      <option value="">专业1</option>
    </select>
    </p>
    <p><label>联系方式：</label><input type="text" name="tel" class="fdfinput" placeholder="输入联系方式" /></p>
    <p><label>您的Q Q：</label><input type="text" name="QQ" class="fdfinput"  placeholder="输入数字"/></p>
    <p><label>出生日期：</label><input type="text" name="birthday" placeholder="yyyymmdd" class="fdfinput" /></p>
    <p><label>性   别：</label>男：<input type="radio" name="sex" value="male" />
      女：<input type="radio" name="sex" value="female" />
    </p>
    <p><label></label><input type="submit" class="submit" value="提交" /></p>
  </form>
</div>
