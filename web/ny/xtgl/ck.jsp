<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


   

 <script language="JavaScript">
 	scontext = "";
	
 </script>
<script type="text/javascript" src="../tdp/js/validator.js"></script>
<script type="text/javascript" src="../tdp/js/calendar.js"></script>
<script type="text/javascript" src="../tdp/js/public.js"></script>
<script type="text/javascript" src="../javascript/handleArchive.js"></script>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<title>数据字典--列表</title>
</head>
<body class="bodybg" onLoad="onLoadInTemplate('','数据字典--列表')">







 

<form name="DataDictionaryForm" method="post" action="/mlao/oa/commoninfo/datadictionary.do">
<input type="hidden" name="mhd" value="toList">


<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;用户信息维护</td>
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
                <td width="96" class="Column_blue">新增用户</td>
              </tr>
          </table></td>
        </tr>
    </table></td>
    <td width="15"><img src="../image/red_BODY_right.gif" width="15" height="23"></td>
  </tr>
</table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="15" background="../image/red_BODY_leftbg.gif">&nbsp;</td>
    <td><table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td> </td>
        </tr>
      </table>
	  <table width="96%"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#Cbcbcb">
	  <!--  <tr class="td2">
          <td align="center" nowrap colspan="4">转办请示领导</td>
        </tr>-->
          <tr class="td2">
          <td width="20%" align="right" nowrap>用户帐号：</td>
          <td width="30%" >zhanggn</td>
          <td width="20%" align="right" nowrap>用户姓名：</td>
          <td width="30%" >张广宁</td>
         </tr>
	 <tr class="td2">

          <td width="20%" align="right" nowrap>用户密码：</td>
          <td width="30%"  >xxx</td>
		  <td width="20%" align="right" nowrap>确认密码：</td>
          <td width="30%"  ><font color="red">xxxxxx</font></td>
          </tr>
         <tr class="td2">
          <td width="20%" align="right" nowrap>用户称谓：</td>
          <td width="30%" >xxxx</td>
          <td width="20%" align="right" nowrap>电子邮箱：</td>
          <td width="30%" >xxxxx</td>
         </tr>
         <tr class="td2">
		  <td width="20%" align="right" nowrap>Q&nbsp;Q(MSN)：</td>
          <td width="30%" >xxxx</td>
          <td width="20%" align="right" nowrap>移动电话：</td>
          <td width="30%" >xxxxx</td>
         </tr>
         <tr class="td2">
          <td width="20%" align="right" nowrap>办公电话：</td>
          <td width="30%">xxxx</td>
          <td width="20%" align="right" nowrap>住宅电话：</td>
          <td width="30%" >xxxx</td>
         </tr>

        <tr class="td2">
          <td width="20%" align="right" nowrap>职&nbsp;&nbsp;&nbsp;&nbsp;务：</td>
          <td width="30%">xxxx</td>
          <td width="20%" align="right" nowrap>工&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
          <td width="30%" >xxxx</td>
         </tr>
        <tr class="td2">
          <td width="20%" align="right" nowrap>学&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
          <td width="30%">中学</td>
          <td width="20%" align="right" nowrap>工&nbsp;&nbsp;&nbsp;&nbsp;资：</td>
          <td width="30%" >xxxxx</td>
         </tr>

         <tr class="td2">
          <td width="20%" align="right" nowrap>序&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
          <td width="30%">xxxxx</td>
          <td width="20%" align="right" nowrap>邮&nbsp;&nbsp;&nbsp;&nbsp;编：</td>
          <td width="30%" >xxxxx</td>
         </tr>
         <tr class="td2">
            <td width="20%" align="right" nowrap >区域用户：</td>
            <td width="30%">是 </td>
            <td width="20%" align="right" nowrap><span name="lay" id="lay" style="display:none ">转办单位：</span></td>
            <td width="30%">
            <input type="text" name="unit_name" class="input" id="txt1" style="display:none " readonly/> <span name="lay1" id="lay1" style="display:none "><font color="red">*</font></span>
            <INPUT class="button_new" id="txt2" style="display:none " onClick="javascript:cmdSelectProcUnit_onclick('')" type="button" value="选择" name="Submit2"  />
            <input type="hidden" name="vo.unit_no" value="">
            <input type="hidden" name="is_unit"/>
            </td>
         </tr>
          <tr class="td2">
          <td width="20%" align="right" nowrap>用户单位：</td>
          <td width="30%" colspan="3">xxx</td>

         </tr>
          <tr class="td2">
          <td width="20%" align="right" nowrap>详细住址：</td>
          <td width="30%" colspan="3" >xxx</td>

         </tr>
		 <tr class="td2">

          <input type="hidden" name="vo.msgCode" value="">
          <td width="20%" align="right" nowrap>帐号状态：</td>
          <td width="30%"  >
          正常</td>
		  <td width="20%" align="right" nowrap>禁用是否在组织机构中显示：</td>
          <td width="30%">否           </td>

         </tr> 
         
         <tr class="td2" >
        
          <td width="20%" align="right" nowrap>是否在发送短信列表中显示：</td>
          <td width="30%" colspan="3">是          </td>		 

         </tr>

	  </table>
      <table width="500"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB"><tr></tr></table>
      <table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td> </td>
        </tr>
      </table>
      <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td align="center"><input name="B3" type="submit" class="button_new" onClick="return OK();" value="保存">
				<input name="B3" type="button" class="button_new" onClick="window.location.href='yhgl.htm'" value="后退">
		  </td>
        </tr>
      </table></td>
    <td width="15" bordercolor="#FFCC6D" background="../image/red_BODY_rightbg.gif">&nbsp;</td>
  </tr>
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
</table><table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="18"><img src="..../image/red_BODY_downleft.gif" width="24" height="24"></td>
              <td background="..../image/red_BODY_downbg.gif">&nbsp;</td>
              <td width="18"><img src="..../image/red_BODY_downright.gif" width="24" height="24"></td>
            </tr>
          </table></td>
  </tr>
</form>
</body>
</html>