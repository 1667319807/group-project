<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
<title>Untitled Document</title>
<script type="text/javascript" src="../js/public.js"></script>
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
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;人力资源--&gt;部门管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
  <tr>
    <td width="67%" align="right" class="text" nowrap> 选择公司：
      <select name="select" id="select" class="input">
        <option>请选择</option>
        <option selected>XXX家政公司</option>
        <option>XXX家政公司</option>
                              </select>      &nbsp;帐号：
      <input type="text" name="searchName" maxlength="20" size="12" value="" class="input">
      &nbsp;&nbsp;名称：
      <input type="text" name="searchName2" maxlength="20" size="12" value="" class="input">
      <input type="submit" name="searchbtn" value="查  询" class="button_new">
      <input type="submit" name="searchbtn2" value="新  增" class="button_new"onClick="javascript:location.href='gsgl_xz.htm'" >
      <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
  </tr>
</table>
<br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="4%"><input type="checkbox" name="checkbox" id="checkbox"></td>
      <td nowrap align="center" width="6%">序号</td>
      <td width="31%" align="center" nowrap id=".name" >帐号</td>
      <td width="38%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true">部门</div></td>
      <td width="21%" align="center" nowrap id=".submit_date" ><strong>操作</strong></td>
    </tr>
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="4%"><input type="checkbox" name="checkbox2" id="checkbox2"></td>
      <td nowrap align="center" width="6%">1 </td>
      <td align="center" nowrap>001</td>
      <td height="14" align="center" nowrap>财务部</td>
      <td align="center" nowrap><a href="#">修改</a>&nbsp;&nbsp;<a href="#">选择人员</a></td>
    </tr>
    <tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td nowrap align="center" width="4%"><input type="checkbox" name="checkbox3" id="checkbox3"></td>
      <td nowrap align="center" width="6%">2 </td>
      <td align="center" nowrap>002</td>
      <td height="14" align="center" nowrap>服务部</td>
      <td align="center" nowrap><a href="#">修改</a>&nbsp;&nbsp;<a href="#">选择人员</a></td>
    </tr>
  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center"> 当前第1页 共5记录 分1页显示 </td>
              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                  <input type="hidden" name="paginationAction" value="">
                  <img src="../image/First_no.gif" alt="第一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Next_no.gif" alt="下一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Last_no.gif" alt="最后一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp <a href="javascript:this.document.AwaitForm.submit()" oncontextmenu="return false" onClick="if(this.document.AwaitForm.pageSelect.value==''){ alert('页码必须输入');return false;}
 else {this.document.AwaitForm.paginationAction.value='gotoPage';}">前往</a>
                  <input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect' value=''/>
                页 </td>
            </tr>
          </table>

      </td>
    </tr>
  </table>

</body>
</html>
