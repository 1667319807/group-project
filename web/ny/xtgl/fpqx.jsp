<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
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
<table width="96%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="">
    <tr>
      <td align="center"><table width="94%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="26" align="center" class="dh">-- 用户管理 --</td>
        </tr>
      </table>
          <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td class="text"><input type="submit" name="searchbtn" value="保  存" class="button_new">
              <input type="submit" name="searchbtn2" value="返  回" class="button_new" onClick="window.history.go(-1);"></td>
            </tr>
          </table>
        <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0" class="text_red">
            <tr>
              <td><span><img src="../image/User_QX1.gif" width="18" height="21" style="cursor:hand" onClick="javascript:change('t10', this);"/>&nbsp;用户管理--列表</span></td>
            </tr>
          </table>
        <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="text" id="t0">
            <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="../image/User_QX.gif" width="14" height="20" style="cursor:hand" onClick="javascript:change('t10', this);"/></span>
                <input name="r" type="checkbox" id="r0" onClick="javascript:check(this);" checked cid="r10">
                  <b>系统管理</b>&nbsp;<span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span>&nbsp;
                <input name="checkbox4" type="checkbox" id="checkbox4" onClick="javascript:check(this);" checked cid="r10">
                操作&nbsp;
                <input name="checkbox4" type="checkbox" id="checkbox5" onClick="javascript:check(this);" checked cid="r10">
                浏览&nbsp;
                <table border="0" cellpadding="0" cellspacing="0" class="text" id="t10">
                  <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="../image/User_QX.gif" width="14" height="20" style="cursor:hand" onClick="javascript:change('t10', this);"/></span>
                      <input name="r" type="checkbox" id="r10" onClick="javascript:check(this);" checked cid="r1010">
                      <b>组织管理</b>&nbsp;<span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span>&nbsp;&nbsp;
                      <input name="checkbox5" type="checkbox" id="checkbox7" onClick="javascript:check(this);" checked cid="r10">
                      操作&nbsp;
                      <input name="checkbox24" type="checkbox" id="checkbox25" onClick="javascript:check(this);" checked cid="r10">
                      浏览&nbsp;
                      <table border="0" cellpadding="0" cellspacing="0" class="text" id="t1010">
                        <tr>
                          <td width="414">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="../image/User_QX.gif" width="14" height="20" style="cursor:hand" onClick="javascript:change('t10', this);"/></span>&nbsp;
                            <input name="r" type="checkbox" id="r1010" onClick="javascript:check(this);" checked cid="r1011">
                            <b>部门管理</b>&nbsp;<span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span>&nbsp;
                            <input name="checkbox4" type="checkbox" id="checkbox6" onClick="javascript:check(this);" checked cid="r10">
                            操作&nbsp;
                            <input name="checkbox22" type="checkbox" id="checkbox22" onClick="javascript:check(this);" checked cid="r10">
                            浏览&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><img src="../image/User_QX.gif" width="14" height="20" style="cursor:hand" onClick="javascript:change('t10', this);"/></span>
                            <input name="r" type="checkbox" id="r1010" onClick="javascript:check(this);" checked cid="r1012">
                            <b>岗位管理</b>&nbsp;<span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span><span style="font-size:6px">·</span>&nbsp;
                            <input name="checkbox4" type="checkbox" id="checkbox7" onClick="javascript:check(this);" checked cid="r10">
                            操作&nbsp;
                            <input name="checkbox23" type="checkbox" id="checkbox23" onClick="javascript:check(this);" checked cid="r10">
                            浏览&nbsp; </td>
                        </tr>
                      </table>
                </table>
        </table>
        <table width="100%" height="15"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table>
        <input name="Submit2" type="submit" class="button_new" value="保 存">
        &nbsp;
        <input name="Submit3" type="reset" class="button_new" value="重 置">
        &nbsp;
        <input name="Submit32" type="button" class="button_new" value="返 回" onClick="window.history.go(-1);"></td>
    </tr>
  </form>
</table>
<br>
</body>
</html>
