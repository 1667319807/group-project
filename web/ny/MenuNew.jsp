<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>96909社区生活服务中心身份确认系统</title>
<script language="javascript">
function test(t) {
    for (var i=0; i<t.rows.length; i++)
    for (var j=0; j<t.rows[i].cells.length; j++)
    t.rows[i].cells[j].className= t.rows[i].cells[j] == event.srcElement ? 'button_under' : 'button';
}

function bian(p1) {
if(p1=="1"){
window.parent.frames.contentFrameSet.rows='60,31,0,*';
}
else{
window.parent.frames.contentFrameSet.rows='60,28,31,*';
}
}
</script>

<link href="css/INDEX.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" height="29"  border="0" cellpadding="0" cellspacing="0" background="image/menu_bg.jpg">
 <form name="form1" method="post" action="">
  <tr>
    <td width="9" align="left"><img src="IMAGE/memu_zbg.jpg" width="9" height="29"></td>
    <td align="center">
	<table  border="0" align="left" cellpadding="0" cellspacing="0" onClick="test(this)">
      <tr align="left"> <a href="ny/grxx.htm" target="main">
        <td width="90" class="button" onclick="javascript:bian(1);">工人信息</td>
        </a><a href="ny/gzxx.htm" target="main">
        <td width="90" class="button" onclick="javascript:bian(1);">雇主信息</td>
        </a><a href="ny/yggl.htm" target="main">
        <td width="90" class="button" onclick="javascript:bian(1);">用工管理</td>
        </a><a href="xtgl/Menu_xt.jsp" target="Menu_next">
        <td width="90" class="button" onclick="javascript:bian(2);">系统管理</td>
        </a></tr>
    </table></td>
    <td width="9" align="right"><img src="IMAGE/menu_ybg.jpg" width="9" height="29"></td>
  </tr>
  </form>
</table>
</body>
</html>

