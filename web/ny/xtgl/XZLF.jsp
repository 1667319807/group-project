<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<html>
<head>
<script> 
 var i=0 
 function insert_row(){ 
   i++ 
   R=tbl.insertRow() 
   C=R.insertCell() 
   C.innerHTML="<input type='file' name='file'class='input' size=60>" 
   C=R.insertCell() 
   C.innerHTML="文件"+i 
   C=R.insertCell() 
   C.innerHTML="<input type='button'  value='删除' onclick='tbl.deleteRow("+(i-1)+")' class='button_new'>" 
    } 
</script> 
<script language="javascript">
function menuControl(show)
{
window.event.cancelBubble=true;
var objID=event.srcElement.id;
var index=objID.indexOf("_");
var mainID=objID.substring(0,index);
var numID=objID.substring(index+1,objID.length);

if(show==1)
{
eval("showMenu("+"menu_"+numID+")");
}
else
{
eval("hideMenu("+"menu_"+numID+")");
}


}

var nbottom=0,speed=1;
function displayMenu(obj)
{
obj.style.clip="rect(0 100% "+nbottom+"% 0)";
nbottom+=speed;
if(nbottom<=100) 
{
timerID=setTimeout("displayMenu("+obj.id+"),70");
}
else clearTimeout(timerID);
}
function showMenu(obj)
{
obj.style.display="block";
obj.style.clip="rect(0 0 0 0)";
nbottom=5;
displayMenu(obj);
}
function hideMenu(obj)
{
nbottom=0;
obj.style.display="none";
}
function keepMenu(obj)
{
obj.style.display="block";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>广州市物价局内部业务协同办公系统</title>
<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp; ※&nbsp;您的位置：首页--&gt;系统管理--&gt;组织机构管理</td>
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
                <td width="82" class="Column_blue">信访局</td>
              </tr>
          </table></td>
        </tr>
    </table></td>
    <td width="15"><img src="../image/red_BODY_right.gif" width="15" height="23"></td>
  </tr>
</table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="">
    <tr>
 </form>
  <form name="GroupForm" method="POST" action="/backmanage/group/list.do">
    <input type="hidden" name="mhd" value="toList">
    <input type="hidden" name="depid" value="-1"/>
    <tr>
      <td width="15" background="../image/red_BODY_leftbg.gif">&nbsp;</td>
      <td><table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td></td>
        </tr>
      </table>
          <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
            <tr>
              <td width="67%" align="right" class="text" nowrap>&nbsp;
                <input type="button" name="insert" value="新增"onClick="javascript:location.href='xzxgry.htm'" class="button_new">
                <input type="button" name="delete" value="删除" onClick="doDelete()" class="button_new">
                  <input type="hidden" name="mod" value="no">
                &nbsp;&nbsp; </td>
            </tr>
          </table>
        <table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td></td>
            </tr>
          </table>
        <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CAD6E8">
            <tr align="center" class="tdtitle">
              <td nowrap align="center" width=10%><input type="checkbox" onClick="checkAll(this,'fid')"></td>
              <td nowrap align="center" width=10% id=".typeID"><div align="center" orderby="true">序号</div></td>
              <td nowrap align="center" width="20%" id=".typeName"><div align="center" orderby="true">组名称</div></td>
              <td nowrap align="center" width="20%" id=".typeName"><div align="center" orderby="true">组描述</div></td>
              <td nowrap width="20%" onClick="orderBy(this)" id=".typeName"><div align="center" orderby="true">操作</div></td>
            </tr>
            <tr align="left" id="trx1"  class="td2"  onMouseOver="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDblClick('_4',false);">
              <td nowrap align="center" width=10%><input type='checkbox' name='fid' value='_4'>              </td>
              <td nowrap align="center" width=10%> 0&nbsp; </td>
              <td nowrap align="left" width="20%"> 系统用户&nbsp; </td>
              <td nowrap align="left" width="20%"> 请输入分组描述&nbsp; </td>
              <td nowrap align="center" width="20%"><a href="xgry.jsp">修改</a> &nbsp;<a href="xzry.jsp">选择人员</a> </td>
            </tr>
            <tr align="left" id="trx2"  class="td1"  onMouseOver="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDblClick('_1',false);">
              <td nowrap align="center" width=10%><input type='checkbox' name='fid' value='_1'>              </td>
              <td nowrap align="center" width=10%> 0&nbsp; </td>
              <td nowrap align="left" width="20%"> 复核复查&nbsp; </td>
              <td nowrap align="left" width="20%">&nbsp;</td>
              <td nowrap align="center" width="20%"><a href="/backmanage/group/list.do?mhd=toUpdate&fid=_1">修改</a> &nbsp;<a href="/backmanage/group/list.do?mhd=toSelectUser&fid=_1">选择人员</a> </td>
            </tr>
          </table>
        <table width="500"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB">
          <tr></tr>
        </table>
        <table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td><table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                  <tr>
                    <td nowrap width="45%" align="center" id="p1"></td>
                    <td nowrap width="55%" align="right" id="p2"><input type="hidden" name="currentPage" value="1">
                        <input type="hidden" name="paginationAction" value="">
                        <img src="../image/First_no.gif" alt="第一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Next_no.gif" alt="下一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp <img src="../image/Last_no.gif" alt="最后一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp <a href="javascript:init((document.forms[0].pageSelect.value-1)*10+1,"+totalcount+");" oncontextmenu="return false" onClick="if(this.document.forms[0].pageSelect.value==''){ alert('页码必须输入');return false;}">前往</a>
                        <input type=text size='4' onlytype='int' onFocus='checkTextBoxInput()' name='pageSelect' value=''/>
                      页</td>
                  </tr>
              </table></td>
            </tr>
        </table></td>
      <td width="15" bordercolor="#FFCC6D" background="../image/red_BODY_rightbg.gif">&nbsp;</td>
    </tr>
  </form>
</table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="18"><img src="../image/red_BODY_downleft.gif" width="24" height="24"></td>
    <td background="../image/red_BODY_downbg.gif">&nbsp;</td>
    <td width="18"><img src="../image/red_BODY_downright.gif" width="24" height="24"></td>
  </tr>
</table>
<table width="100%" height="80"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table><p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
