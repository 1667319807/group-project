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
          <td width="30%" ><input type="text" name="vo.user_name" maxlength="25" value="" class="input"><input name="B3" type="button" class="buttonnew_six" onClick="doCheck()" value="检测重复"><span> <font color=red>*</font></span></td>
          <td width="20%" align="right" nowrap>用户姓名：</td>
          <td width="30%" ><input type="text" name="vo.trueName" maxlength="15" value="" class="input"> <font color=red>*</font></td>
         </tr>
	 <tr class="td2">

          <td width="20%" align="right" nowrap>用户密码：</td>
          <td width="30%"  ><input type="password" name="vo.user_pass" maxlength="25" value="" class="input"> <font color=red>*</font></td>
		  <td width="20%" align="right" nowrap>确认密码：</td>
          <td width="30%"  ><input type="password" name="rePass" class="input" maxlength="25" /> <font color=red>*</font></td>
          </tr>
         <tr class="td2">
          <td width="20%" align="right" nowrap>用户称谓：</td>
          <td width="30%" ><input type="text" name="vo.appellation" maxlength="15" value="" class="input"></td>
          <td width="20%" align="right" nowrap>电子邮箱：</td>
          <td width="30%" ><input type="text" name="vo.email" onlytype="email" onFocus="checkTextBoxInput()"  ValidateType="email" Msg="电子邮件地址不正确" maxlength="30" value="" class="input"></td>
         </tr>
         <tr class="td2">
		  <td width="20%" align="right" nowrap>Q&nbsp;Q(MSN)：</td>
          <td width="30%" ><input type="text" name="vo.BP" maxlength="20" value="" class="input"></td>
          <td width="20%" align="right" nowrap>移动电话：</td>
          <td width="30%" ><input type="text" name="vo.mobilePhone" maxlength="20" value="" class="input"></td>
         </tr>
         <tr class="td2">
          <td width="20%" align="right" nowrap>办公电话：</td>
          <td width="30%"><input type="text" name="vo.officePhone" maxlength="20" value="" class="input"></td>
          <td width="20%" align="right" nowrap>住宅电话：</td>
          <td width="30%" ><input type="text" name="vo.homePhone" maxlength="20" value="" class="input"></td>
         </tr>

        <tr class="td2">
          <td width="20%" align="right" nowrap>职&nbsp;&nbsp;&nbsp;&nbsp;务：</td>
          <td width="30%"><input type="text" name="vo.duty" maxlength="20" value="" class="input"></td>
          <td width="20%" align="right" nowrap>工&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
          <td width="30%" ><input type="text" name="vo.symbol" maxlength="20" value="" class="input"></td>
         </tr>
        <tr class="td2">
          <td width="20%" align="right" nowrap>学&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
          <td width="30%"><select name="vo.education">
		<option value=秘密>秘密</option>
		<option value=中学>中学</option>
		<option value=大专>大专</option>
		<option value=大本>大本</option>
		<option value=硕士>硕士</option>
		<option value=硕士以上>硕士以上</option>
		</select></td>
          <td width="20%" align="right" nowrap>工&nbsp;&nbsp;&nbsp;&nbsp;资：</td>
          <td width="30%" ><input type="text" name="vo.salary" ValidateType="int" Msg="工资必须是数字!" maxlength="10" value="" class="input"></td>
         </tr>

         <tr class="td2">
          <td width="20%" align="right" nowrap>序&nbsp;&nbsp;&nbsp;&nbsp;号：</td>
          <td width="30%"><input type="text" name="vo.ordernum" ValidateType="int" Msg="序号必须是数字!" maxlength="20" value="" class="input"></td>
          <td width="20%" align="right" nowrap>邮&nbsp;&nbsp;&nbsp;&nbsp;编：</td>
          <td width="30%" ><input type="text" name="vo.zip" maxlength="20" value="" class="input"></td>
         </tr>
         <tr class="td2">
            <td width="20%" align="right" nowrap >区域用户：</td>
            <td width="30%"><input type="radio" name="vo.isunit" value="0" onClick="txtDisplay()">是 <input type="radio" name="vo.isunit" value="1" checked="checked" onClick="txtDisplay()" />否</td>
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
          <td width="30%" colspan="3"><input type="text" name="vo.unitId" maxlength="50" size="93" value="" class="input"></td>

         </tr>
          <tr class="td2">
          <td width="20%" align="right" nowrap>详细住址：</td>
          <td width="30%" colspan="3" ><input type="text" name="vo.addr" maxlength="50" size="93" value="" class="input"></td>

         </tr>
		 <tr class="td2">

          <input type="hidden" name="vo.msgCode" value="">
          <td width="20%" align="right" nowrap>帐号状态：</td>
          <td width="30%"  >
          <input type="radio" name="vo.isAvailable" value="0" checked="true"/>正常
          <input type="radio" name="vo.isAvailable" value="1">禁用
           </td>
		  <td width="20%" align="right" nowrap>禁用是否在组织机构中显示：</td>
          <td width="30%">
          <input type="radio" name="vo.isActive" value="0" checked="true"/>是
          <input type="radio" name="vo.isActive" value="1">否
           </td>

         </tr> 
         
         <tr class="td2" >
        
          <td width="20%" align="right" nowrap>是否在发送短信列表中显示：</td>
          <td width="30%" colspan="3">
          <input type="radio" name="vo.isSendInnerEmail" value="0" checked="true"/>是
          <input type="radio" name="vo.isSendInnerEmail" value="1">否
           </td>		 

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