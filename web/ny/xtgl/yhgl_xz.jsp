
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
<!--
.STYLE1 {	font-size: 24px;
	font-weight: bold;
}
-->
</style>
<head>
<title>Untitled Document</title>
<script type="text/javascript" src="../tdp/js/validator.js"></script>
<script type="text/javascript" src="../tdp/js/public.js"></script>
<script type="text/javascript" src="../javascript/handleArchive.js"></script>
<script language="JavaScript">
function doDBClick(url,operator,type) {
  if (operator == false) {
    document.forms[0].action = url + "&op=view";
    document.forms[0].submit();
  } else {
    document.forms[0].action = url;
    document.forms[0].submit();
  }
}
</script>
</head>

<body>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;用户管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>
<br>
  <table width="96%" height="97" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
      <td width="67" height="23" align="right" bgcolor="#FFFFFF">帐 号：</td>
      <td width="296" bgcolor="#FFFFFF"><input name="textarea" type="text" id="textarea" value="" size="30" class="pi"></td>
      <td width="84" align="right" bgcolor="#FFFFFF">姓 名：</td>
      <td width="317" bgcolor="#FFFFFF"><input name="textarea4" type="text" id="textarea4" value="" size="30" class="pi"></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">性别：</td>
      <td bgcolor="#FFFFFF"> <input type="radio" name="sex" value="男">男<input type="radio" name="sex" value="女">女</td>
      <td align="right" bgcolor="#FFFFFF">所属公司级别：</td>
      <td bgcolor="#FFFFFF"><span class="text">
        <select name="select" id="select" class="input">
          <option>请选择</option>
		  <option>总公司</option>
		  <option>分公司</option>
        </select>
      </span></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">密码：</td>
      <td bgcolor="#FFFFFF"><input name="textarea3" type="password" id="textarea3" value="" size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">确认密码：</td>
      <td bgcolor="#FFFFFF"><input name="textarea5" type="password" id="textarea5" value="" size="30" class="pi"></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">是否可用：</td>
      <td bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio3" value="radio">
是
  <input type="radio" name="radio" id="radio4" value="radio"> 
  否
</td>
      <td align="right" bgcolor="#FFFFFF">邮 箱：</td>
      <td bgcolor="#FFFFFF"><input name="textarea4" type="text" id="textarea4" value="" size="30" class="pi"></td>
    </tr>
  </table>
  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" align="center" class="text" nowrap><input type="submit" name="searchbtn3" value="保  存" class="button_new">
      <input type="submit" name="searchbtn3" value="返  回" class="button_new"onClick="javascript:location.href='yhgl.jsp'" >
      <input type="hidden" name="mod" value="no">
    &nbsp;&nbsp; </td>
  </tr>
</table>
</body>
</html>
