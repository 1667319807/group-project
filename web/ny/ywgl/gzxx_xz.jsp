<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
<!--
.STYLE2 {font-size: 16px}
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
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;雇主信息</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


  <table width="96%" height="80" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
      <td width="67%" height="40" align="center" nowrap class="MENU_line1">家政服务消费者资料登记表</td>
    </tr>
    <tr>
      <td align="right" nowrap class="MENU_line1 STYLE2">档案编号：GZ20006300223</td>
    </tr>
  </table>
<br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
      <td width="10%" align="right" bgcolor="#FFFFFF">姓名：</td>
      <td width="15%" bgcolor="#FFFFFF"><input name="textarea40" type="text" id="textarea40" value="" size="15" class="pi"></td>
      <td width="10%" align="right" bgcolor="#FFFFFF">性别：</td>
      <td width="17%" bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio12" value="radio">
男
  <input type="radio" name="radio" id="radio13" value="radio">
女</td>
      <td width="10%" align="right" bgcolor="#FFFFFF">年龄：</td>
      <td width="13%" bgcolor="#FFFFFF"><input name="textarea" type="text" id="textarea" value="" size="15" class="pi"></td>
      <td width="10%" align="right" bgcolor="#FFFFFF">民族：</td>
      <td width="15%" bgcolor="#FFFFFF"><input name="textarea2" type="text" id="textarea2" value="" size="15" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">籍贯：</td>
      <td bgcolor="#FFFFFF"><input name="textarea5" type="text" id="textarea5" value="" size="15" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">学历：</td>
      <td bgcolor="#FFFFFF"><input name="textarea4" type="text" id="textarea4" value="" size="15" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">身份证号码：</td>
      <td colspan="3" bgcolor="#FFFFFF"><input name="textarea3" type="text" id="textarea3" value="" size="40" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">工作单位：</td>
      <td colspan="5" bgcolor="#FFFFFF"><input name="textarea6" type="text" id="textarea6" value="" size="65" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">职业：</td>
      <td bgcolor="#FFFFFF"><input name="textarea7" type="text" id="textarea7" value="" size="15" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">合同号：</td>
      <td colspan="5" bgcolor="#FFFFFF"><input name="textarea8" type="text" id="textarea8" value="" size="65" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">合同期限：</td>
      <td bgcolor="#FFFFFF"><input name="textarea9" type="text" id="textarea9" value="" size="15" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">联系电话：</td>
      <td align="center" bgcolor="#FFFFFF">手机</td>
      <td colspan="4" bgcolor="#FFFFFF"><input name="textarea10" type="text" id="textarea10" value="" size="44" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">住宅：</td>
      <td bgcolor="#FFFFFF"><input name="textarea11" type="text" id="textarea11" value="" size="15" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">户口所在地：</td>
      <td colspan="7" bgcolor="#FFFFFF"><input name="textarea12" type="text" id="textarea12" value="" size="65" class="pi"></td>
    </tr>
    <tr>
      <td colspan="2" align="right" bgcolor="#FFFFFF">服务处所（地址）：</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea13" type="text" id="textarea13" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td rowspan="6" align="center" bgcolor="#FFFFFF">家<br>
      庭<br>
      资<br>
      料</td>
      <td align="right" bgcolor="#FFFFFF">居住地址：</td>
      <td colspan="6" align="left" bgcolor="#FFFFFF"><input name="textarea14" type="text" id="textarea14" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">家庭人数：</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea15" type="text" id="textarea15" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">服务内容：</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea16" type="text" id="textarea16" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">房屋面积：</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea17" type="text" id="textarea17" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">饮食习惯：</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea18" type="text" id="textarea18" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">其他：</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea19" type="text" id="textarea19" value="" size="44" class="pi"></td>
    </tr>
	 <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">接受工资：</td>
      <td colspan="2" align="left" bgcolor="#FFFFFF">从
        <input name="textarea11" type="text" id="textarea11" value="" size="8" class="pi">
      到
      <input name="textarea23" type="text" id="textarea23" value="" size="8" class="pi"></td>
      <td align="left" bgcolor="#FFFFFF">&nbsp;</td>
      <td align="right" bgcolor="#FFFFFF">&nbsp;</td>
      <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td>
	 </tr>s
       <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">雇用：</td>
      <td colspan="7" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox4" id="checkbox4" /> 
        月嫂
&nbsp;
<input type="checkbox" name="checkbox4" id="checkbox4" />
保姆&nbsp;&nbsp;
<input type="checkbox" name="checkbox4" id="checkbox4" />
钟点&nbsp;&nbsp;
<input type="checkbox" name="checkbox4" id="checkbox4" />
厨嫂
<input type="checkbox" name="checkbox" id="checkbox" />
清洁工
&nbsp;
<input type="checkbox" name="checkbox" id="checkbox" />
 护工&nbsp;&nbsp;
 <input type="checkbox" name="checkbox" id="checkbox" /> 
 早教
&nbsp;&nbsp;
<input type="checkbox" name="checkbox" id="checkbox" />
家教
&nbsp;&nbsp;
<input type="checkbox" name="checkbox2" id="checkbox2" />
高级管家<br>
备注：
<input name="textarea9" type="text" id="textarea9" value="" size="40" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">经办人：</td>
      <td colspan="7" align="left" bgcolor="#FFFFFF"><input name="textarea21" type="text" id="textarea21" value="" size="65" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">登记日期：</td>
      <td colspan="7" align="left" bgcolor="#FFFFFF"><input name="textarea22" type="text" id="textarea22" value="" size="65" class="pi"></td>
    </tr>
  </table>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" align="center" class="text" nowrap><input type="submit" name="searchbtn3" value="保  存" class="button_new" onClick="javascript:location.href='gzxx.htm'">
      <input type="submit" name="searchbtn3" value="返  回" class="button_new"onClick="javascript:location.href='gzxx.htm'" >
      <input type="hidden" name="mod" value="no">
    &nbsp;&nbsp; </td>
  </tr>
</table>
</body>
</html>
