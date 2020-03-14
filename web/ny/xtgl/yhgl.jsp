<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <script type="text/javascript" src="../js/public.js"></script>
<link href="/css/index.css" rel="stylesheet" type="text/css">
<title>用户管理--列表</title>
</head>
<body class="bodybg" onLoad="onLoadInTemplate('','用户管理--列表')">
<link href="../css/index.css" rel="stylesheet" type="text/css">
<SCRIPT LANGUAGE="JavaScript">
<!--
function xiugai() {
	document.forms[0].mod.value="yes";
	document.forms[0].submit();
}
function toInsertDengji(){
  if(document.forms.length>1){
    alert("注意:有两个或多个form存在,此方法可能不适用");
    return false;
  }
  var myForm = document.forms[0];
  myForm.mhd.value="toInsertDengji";
  myForm.submit();
 }
function toUpdateDengji(){
  if(document.forms.length>1){
    alert("注意:有两个或多个form存在,此方法可能不适用");
    return false;
  }
  if(checkSelect_me()==false)
   return false;
  var myForm = document.forms[0];
  myForm.mhd.value="toUpdateDengji";
  myForm.submit();
 }
function doDeleteDengji(){
  	var count = 0;
	var length = 0;
	try{
		 length = document.forms[0].id_1.length;
	} catch(e){
		alert("没有任何记录！");
		return false;
	}
	if (isNaN(length))	{
		try{
			if (document.forms[0].id_1.checked)	{
				++count;
			}
		}catch(e){}
	}
	for(var i=0;i<document.forms[0].id_1.length;i++){
		if(document.forms[0].id_1[i].checked)
			count++;
	}
	if(count==0){
		alert("您没有选择任何记录！");
		return false;
	}
	if(confirm("有"+count+"条记录被选中,您确定要删除吗？") == false){
		return false;
	}
  	document.forms[0].mhd.value="doDeleteDengji";
  	document.forms[0].submit();
	//////////
 }
//检查是否有选择记录
function checkSelect_me(){
	var count = 0;
	var length = 0;
	try{
		 length = document.forms[0].id_1.length;
	} catch(e){
		alert("没有任何记录！");
		return false;
	}
	if (isNaN(length))	{
		try{
			if (document.forms[0].id_1.checked)	{
				++count;
			}
		}catch(e){}
	}

	for(var i=0;i<document.forms[0].id_1.length;i++){
		if(document.forms[0].id_1[i].checked)
			count++;
	}
	if(count==0){
		alert("您没有选择任何记录！");
		return false;
	} else if (count >1){
		alert("请选择单条记录");
		return false;
	}

	return true;
}
//-->
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
function doDBClick(url,operator) {
  if (operator == false) {
    alert("您没有权限");
  } else {
    document.forms[0].action = url;
    document.forms[0].submit();
  }
}
</SCRIPT>
<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;用户管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td> </td>
  </tr>
</table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="23"><img src="../image/red_BODY_left.gif" width="23" height="23"></td>
    <td background="../image/red_BODY_bg.gif"><table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table height="23"  border="0" cellpadding="0" cellspacing="0">
              <tr align="center">
                <td width="82" class="Column_blue">用户管理</td>
              </tr>
          </table></td>
        </tr>
    </table></td>
    <td width="15"><img src="../image/red_BODY_right.gif" width="15" height="23"></td>
  </tr>
</table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
<form name="UserForm" method="POST" action="xz.htm">
<input type="hidden" name="mhd" value="toList">
  <tr>
    <td width="15" background="../image/red_BODY_leftbg.gif">&nbsp;</td>
    <td><table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td> </td>
        </tr>
      </table>
      <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
        <tr>
            <td align="left" nowrap>
                <input type="radio" name="available" value="3" checked="checked" onClick="choose()">所有
        		<input type="radio" name="available" value="0" onClick="choose()">正常
        		<input type="radio" name="available" value="1" onClick="choose()">禁用        		
        		<input type="radio" name="available" value="2" onClick="choose()">已删除
        	</td>
          <td width="67%" align="right" class="text" nowrap>&nbsp; 姓名：
<input type="text" name="searchValue" maxlength="20" size="12" value="" class="input">
<input type="submit" name="searchbtn" value="查询" class="button_new">
<input type="button" name="insert" value="新增" onClick="javascript:location.href='yhgl_xz.htm';" class="button_new">

<input type="button" name="delete" value="删除" onClick="doUpdateAvailable()" class="button_new">

<input type="hidden" name="mod" value="no">
&nbsp;&nbsp; </td>
        </tr>
      </table>
      <table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td> </td>
        </tr>
      </table>
      <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CAD6E8">
        <tr align="center" class="tdtitle">
	  <td nowrap align="center" width=10%><input type="checkbox" onClick="checkAll(this,'fid')"></td>
          <td nowrap align="center" onClick="orderBy(this)" id=".UIDF"><div align="center" orderBy="true">编号</div></td>
	  <td nowrap align="center" onClick="orderBy(this)" id=".user_name"><div align="center" orderBy="true">帐号</div></td>
          <td align="center" height="24" nowrap onClick="orderBy(this)"  id=".trueName"><div align="center" orderBy="true">姓名</div></td>
          <td align="center" height="24" nowrap onClick="orderBy(this)"   id=".email"><div align="center" orderBy="true">电子邮件</div></td>
          <td align="center" nowrap onClick="orderBy(this)"  id=".isAvailable"><div align="center" orderBy="true">帐号状态</div></td>
          <td align="center" nowrap>操作</td>
        </tr>

		

	<tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('ck.htm',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='3'>
		  </td>
          <td align="center">3&nbsp;</td>
		  <td align="left">zhanggn&nbsp;</td>
          <td height="14" align="left">
		      张广宁
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          
          
          <font color="red">已删除</font>
	  </td>
          <td align="center">

          <a href="xg.htm">修改</a>          </td>
		</tr>
		

	<tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=4',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='4'>
		  </td>
          <td align="center">4&nbsp;</td>
		  <td align="left">lizb&nbsp;</td>
          <td height="14" align="left">
		      李卓彬
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=5',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='5'>
		  </td>
          <td align="center">5&nbsp;</td>
		  <td align="left">zhanggf&nbsp;</td>
          <td height="14" align="left">
		      张桂芳
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=6',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='6'>
		  </td>
          <td align="center">6&nbsp;</td>
		  <td align="left">chency&nbsp;</td>
          <td height="14" align="left">
		      陈传誉
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=7',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='7'>
		  </td>
          <td align="center">7&nbsp;</td>
		  <td align="left">linyh&nbsp;</td>
          <td height="14" align="left">
		      林元和
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=8',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='8'>
		  </td>
          <td align="center">8&nbsp;</td>
		  <td align="left">suzq&nbsp;</td>
          <td height="14" align="left">
		      苏泽群
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          
          正常
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=9',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='9'>
		  </td>
          <td align="center">9&nbsp;</td>
		  <td align="left">chenjd&nbsp;</td>
          <td height="14" align="left">
		      陈锦德
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=10',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='10'>
		  </td>
          <td align="center">10&nbsp;</td>
		  <td align="left">lizz&nbsp;</td>
          <td height="14" align="left">
		      李治臻
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=11',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11'>
		  </td>
          <td align="center">11&nbsp;</td>
		  <td align="left">ouyz&nbsp;</td>
          <td height="14" align="left">
		      欧阳知
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		

	<tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDBClick('/backmanage/user/list.do?mhd=toView&fid=12',true);">
		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='12'>
		  </td>
          <td align="center">12&nbsp;</td>
		  <td align="left">changmin&nbsp;</td>
          <td height="14" align="left">
		      常敏
		  </td>
          <td height="14" align="left">&nbsp;</td>
          <td align="center">
          禁用
          
          
	  </td>
          <td align="center"><a href="xg.htm">修改</a> </td>
		</tr>
		
      </table>
      <table width="500"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB"><tr></tr></table>
      <table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>
		  <input type="hidden" name="orderType" value="asc">
			<input type="hidden" name="orderFid" value=".UIDF">
		<table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
<tr>
<td nowrap width="45%" align="center">
当前第1页 共214记录 分22页显示
</td>
<td nowrap width="55%" align="right">
<input type="hidden" name="currentPage" value="1">
<input type="hidden" name="paginationAction" value="">
<img src="../image/First_no.gif" alt="第一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp
<img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp
<a href="javascript:this.document.UserForm.submit()" oncontextmenu="return false"  onclick="this.document.UserForm.paginationAction.value='Next';"><img src="../image/Next.gif" alt="下一页" width="14" height="13" border="0"></a>&nbsp&nbsp&nbsp
<a href="javascript:this.document.UserForm.submit()" oncontextmenu="return false"  onclick="this.document.UserForm.paginationAction.value='Last';"><img src="../image/Last.gif" alt="最后一页" width="18" height="13" border="0"></a>&nbsp&nbsp&nbsp
<a href="javascript:this.document.UserForm.submit()" oncontextmenu="return false" onClick="if(this.document.UserForm.pageSelect.value==''){ alert('页码必须输入');return false;}
 else {this.document.UserForm.paginationAction.value='gotoPage';}">前往</a>
<input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect' value=''/>页
</td>
</tr>
</table>

		  </td>
        </tr>
      </table></td>
    <td width="15" bordercolor="#FFCC6D" background="../image/red_BODY_rightbg.gif">&nbsp;</td>
  </tr>
</form></table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="18"><img src="../image/red_BODY_downleft.gif" width="24" height="24"></td>
    <td background="../image/red_BODY_downbg.gif">&nbsp;</td>
    <td width="18"><img src="../image/red_BODY_downright.gif" width="24" height="24"></td>
  </tr>
</table>



</body>

<script>
	function choose()
	{
		document.forms[0].submit();
	}
	function doUpdateAvailable(){
  	var count = 0;
	var length = 0;
	try{
		 length = document.forms[0].fid.length;
	} catch(e){
		alert("没有任何记录！");
		return false;
	}
	if (isNaN(length))	{
		try{
			if (document.forms[0].fid.checked)	{
				++count;
			}
		}catch(e){}
	}
	for(var i=0;i<document.forms[0].fid.length;i++){
		if(document.forms[0].fid[i].checked)
			count++;
	}
	if(count==0){
		alert("您没有选择任何记录！");
		return false;
	}
	if(confirm("有"+count+"条记录被选中,您确定要删除吗？") == false){
		return false;
	}
  	document.forms[0].mhd.value="doUpdateAvailable";
  	document.forms[0].submit();
 }
 
 
 function toDistribute(uid){
	  document.forms[0].mhd.value="toDistribute";
	  var url=document.forms[0].action;
	  var keyValue="fid="+uid;
	  var index = url.indexOf("?");
	  if (index < 0) {
		url=url + "?" + keyValue;
	  } else {
		url=url + "&" + keyValue;
	  }
	  document.forms[0].action=url;
	  document.forms[0].submit();
	}
	
 function toUpdate(uid){
	  document.forms[0].mhd.value="toUpdate";
	  var url=document.forms[0].action;
	  var keyValue="fid="+uid;
	  var index = url.indexOf("?");
	  if (index < 0) {
		url=url + "?" + keyValue;
	  } else {
		url=url + "&" + keyValue;
	  }
	  document.forms[0].action=url;
	  document.forms[0].submit();
	}

//document.getElementsByName("available")[1].click();

</script>
</html>


</body>
</html>