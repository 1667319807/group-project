<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>广州市外商投资行政服务信息系统</title>
<script language="javascript">
		function doTreeMenuFrameHandle(){
			var treeFrame = window.parent.frames["contentFrameSet"];
			var cols = treeFrame.cols;			
			var imgSrc = event.srcElement;
			if(cols.charAt(0)=="0"){
				treeFrame.cols = "158,27,*";
				imgSrc.src="../image/space_img.gif";
				imgSrc.title = "隐藏菜单";
			}else{
				treeFrame.cols = "0,27,*";
				imgSrc.src="../image/space_img2.gif";
				imgSrc.title = "显示菜单";
			}			
		}
</script>

<link href="../css/INDEX.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style></head>

<body class="body_left">
<table width="27" height="32"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="27"><img src="../image/space_img.gif" width="27" height="32" onclick="doTreeMenuFrameHandle()" style="cursor:hand" title="隐藏菜单"></td>
  </tr>
</table>
</body>
</html>

