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

</head>

<body>
<form name="GroupForm" method="POST" action="/backmanage/group/list.do">
<input type="hidden" name="mhd" value="doUpdate">
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;��&nbsp;����λ�ã��ҵ�����--&gt;ϵͳ����--&gt;�����ֵ�</td>
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
                <td width="82" class="Column_blue">�޸�</td>
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
	  <table width="96%" style="TABLE-LAYOUT: fixed;" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#Cbcbcb">
	   <!-- <tr class="td2">
          <td align="center" nowrap colspan="4">�����ڲ������ƶ�����</td>
        </tr>-->

		<tr class="td2">
          <td width="20%" align="right" nowrap>������ƣ�</td>
      <td width="80%" colspan="3">
				<input name="vo.name" type="text" class="input" value="av" maxlength="125" ValidateType="notempty" Msg="�������Ʋ���Ϊ��!">
			  <font color=red>*</font>
		  </td>
        </tr>
<input type="hidden" name="vo.principalUser" value="">
		<!--	<tr class="td2">
          <td width="20%" align="right" nowrap>�����ˣ�</td>
          <td width="30%" colspan="3">

<input type="text" name="pusername" Class="input">
<input type="hidden" name="deptFlag" value="-1">
<input name="receiver" type="button" class="button_new" value="ѡ����Ա" elname="vo.principalUser,pusername" onClick="selectMailMan()">
		  </td>
        </tr>-->
		<tr class="td2">
          <td width="20%" align="right" nowrap>�Ƿ��ṩ��Աѡ��</td>
        <td width="80%" colspan="3" style="LEFT: 0px; WIDTH: 100%; WORD-WRAP: break-word;"><input name="checkbox" type="checkbox" id="checkbox" checked>		  </td>
        </tr> 
        
        <tr class="td2">
          <td width="20%" align="right" nowrap>��ע��</td>
          <td width="80%" colspan="3"><span style="LEFT: 0px; WIDTH: 100%; WORD-WRAP: break-word;">
            <textarea name="vo.description" cols="70" rows="8"  maxlength="100" onFocus="javascript:setMaxLen()">�����뱸ע</textarea>
          </span></td>
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
          <td align="center">
<input type="submit" name="save" value="�� ��" onClick="return validater(GroupForm)" class="button_new">

				<input name="B3" type="button" class="button_new" onClick="javascript:history.back()" value="�� ��">
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
</table><p>&nbsp;</p>
<p>&nbsp;</p>
<input type="hidden" name="vo.id" value="_4">
<input type="hidden" name="vo.level" value="0">





</form>
</body>
</html>
<script>
function selectMailMan(){
	var dept = document.all["deptFlag"].value;
	var btn = event.srcElement;
	var frm = btn.form;

	var url = "";
	var date = new Date();
	var height = 500;

	url = "/pcoa/selectMan.do?mhd=selectMan"

	var name = btn.elname;

	var names = name.split(",");
	if((names.length%2)!=0){
		return false;
	}
	var values = [];
	var j =0;
	for(var i=0;i<names.length;i=i+2){

		values[j++] = frm.elements[names[i]].value;//id��ֵ

	}
    if(dept == 1){
         if(document.all["deptName"].value==""){
	       alert("���Ż�ûѡ����?����Ϊ��!");
		   return;
	}
		values[values.length]=document.all["deptName"].value+"|"+document.all["deptID"].value;
	}
	values[values.length] = btn.name;


	var retArr = window.showModalDialog(url,values,"dialogHeight: " + height + "px; dialogWidth: 500px; center: Yes; help: no; resizable: no; status: no;");


	if(retArr!=null){
		var obj = null;
		var j = 0;
		for(var i=0;i<retArr.length;i++){
			obj = retArr[i];
			frm.elements[names[j++]].value=retArr[i].value;
			frm.elements[names[j++]].value=retArr[i].text;
		}

	}



}
</script>


</body>
</html>