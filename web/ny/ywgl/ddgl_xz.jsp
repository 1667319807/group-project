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
    <td>&nbsp;&nbsp;��&nbsp;����λ�ã��ҵ�����--&gt;ҵ�����--&gt;�ù�����</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


  <table width="96%" height="80" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
      <td width="67%" height="40" align="center" nowrap class="MENU_line1">�����������Ѷ���</td>
    </tr>
    <tr>
      <td align="right" nowrap class="MENU_line1 STYLE2">������ţ�GZ20006300223</td>
    </tr>
  </table>
  <p>������<br>
  </p>
  <table width="94%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
      <td width="10%" align="right" bgcolor="#FFFFFF">������</td>
      <td width="13%" bgcolor="#FFFFFF"><select>
	  <option>�Ż�</option>
	  <option>��С˫</option>
	  </select></td>
      <td width="12%" align="right" bgcolor="#FFFFFF">�Ա�</td>
      <td width="17%" bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio12" value="radio">
��
  <input type="radio" name="radio" id="radio13" value="radio">
Ů</td>
      <td width="10%" align="right" bgcolor="#FFFFFF">���䣺</td>
      <td width="13%" bgcolor="#FFFFFF"><input name="textarea" type="text" id="textarea" value="" size="15" class="pi"></td>
      <td width="10%" align="right" bgcolor="#FFFFFF">���壺</td>
      <td width="15%" bgcolor="#FFFFFF"><input name="textarea2" type="text" id="textarea2" value="" size="15" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">���᣺</td>
      <td bgcolor="#FFFFFF"><input name="textarea5" type="text" id="textarea5" value="" size="15" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">ѧ����</td>
      <td bgcolor="#FFFFFF"><input name="textarea4" type="text" id="textarea4" value="" size="15" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">���֤���룺</td>
      <td colspan="3" bgcolor="#FFFFFF"><input name="textarea3" type="text" id="textarea3" value="" size="20" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">�������ڵأ�</td>
      <td colspan="7" bgcolor="#FFFFFF"><input name="textarea12" type="text" id="textarea12" value="" size="65" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">�ֻ���</td>
      <td align="left" bgcolor="#FFFFFF"><input name="textarea22" type="text" id="textarea22" value="" size="15" class="pi"></td>
      <td align="right" nowrap bgcolor="#FFFFFF">סլ��</td>
      <td align="left" bgcolor="#FFFFFF"><input name="textarea22" type="text" id="textarea22" value="" size="15" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">ְҵ��</td>
      <td colspan="3" bgcolor="#FFFFFF"><input name="textarea8" type="text" id="textarea10" value="" size="20" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">������λ��</td>
      <td colspan="7" bgcolor="#FFFFFF"><input name="textarea6" type="text" id="textarea6" value="" size="65" class="pi"></td>
    </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">���ܹ��ʣ�</td>
      <td colspan="2" align="left" bgcolor="#FFFFFF">��
        <input name="textarea11" type="text" id="textarea11" value="" size="8" class="pi">
      ��
      <input name="textarea23" type="text" id="textarea23" value="" size="8" class="pi"></td>
      <td align="left" bgcolor="#FFFFFF">&nbsp;</td>
      <td align="right" bgcolor="#FFFFFF">���ܷѣ�</td>
      <td colspan="3" bgcolor="#FFFFFF"><input name="textarea24" type="text" id="textarea24" value="" size="20" class="pi"></td>
    </tr>
    
    
    
    <tr>
      <td colspan="2" align="right" bgcolor="#FFFFFF">����������ַ����</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea13" type="text" id="textarea13" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td rowspan="6" align="center" bgcolor="#FFFFFF">��<br>
      ͥ<br>
      ��<br>
      ��</td>
      <td align="right" bgcolor="#FFFFFF">��ס��ַ��</td>
      <td colspan="6" align="left" bgcolor="#FFFFFF"><input name="textarea14" type="text" id="textarea14" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">��ͥ������</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea15" type="text" id="textarea15" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">�������ݣ�</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea16" type="text" id="textarea16" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">���������</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea17" type="text" id="textarea17" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">��ʳϰ�ߣ�</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea18" type="text" id="textarea18" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">������</td>
      <td colspan="6" bgcolor="#FFFFFF"><input name="textarea19" type="text" id="textarea19" value="" size="44" class="pi"></td>
    </tr>
    <tr>
      
      <td colspan="8" align="left" bgcolor="#FFFFFF" height="33"></td>
    </tr>
	   <tr>
      <td colspan="8" align="left" nowrap bgcolor="#FFFFFF">���ˣ�</td>
     
    </tr>
	<tr>
	<td colspan="8"  align="left" bgcolor="#FFFFFF">
	<table height="236" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3" class="text_lb">
    <tr>
      <td width="88" height="23" align="right" bgcolor="#FFFFFF">Ա����ţ�</td>
      <td width="221" bgcolor="#FFFFFF"><input name="textarea" type="text" id="textarea" value="" size="30" class="pi"></td>
      <td width="75" align="right" bgcolor="#FFFFFF">������˾��</td>
      <td width="258" bgcolor="#FFFFFF"><input name="textarea4" type="text" id="textarea4" value="" size="30" class="pi"></td>
      <td width="87" rowspan="8" align="center" valign="middle" bgcolor="#FFFFFF"></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">������</td>
      <td bgcolor="#FFFFFF"><select>
	  <option>��ǿ</option><option>��С��</option>
	  </select></td>
      <td align="right" bgcolor="#FFFFFF">�Ա�</td>
      <td bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio" value="radio">
        ��
          <input type="radio" name="radio" id="radio2" value="radio">
          Ů</td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">���֤���룺</td>
      <td bgcolor="#FFFFFF"><input name="textarea40" type="text" id="textarea40" value="" size="30" class="pi"></td>
      <td height="23" align="right" bgcolor="#FFFFFF">�������£�</td>
      <td bgcolor="#FFFFFF"><input name="textarea3" type="text" id="textarea3" value="" size="30" class="pi"></td>
    </tr>
    <tr>
      <td align="right" bgcolor="#FFFFFF">���䣺</td>
      <td bgcolor="#FFFFFF"><input name="textarea5" type="text" id="textarea5" value="" size="30" class="pi"></td>
      <td height="23" align="right" bgcolor="#FFFFFF">��ߣ�</td>
      <td bgcolor="#FFFFFF"><input name="textarea8" type="text" id="textarea8" value="" size="30" class="pi"></td>
    </tr>
    <tr>
      <td height="31" align="right" bgcolor="#FFFFFF">�ֻ���</td>
      <td bgcolor="#FFFFFF"><input name="textarea6" type="text" id="textarea6" value="" size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">�绰��</td>
      <td bgcolor="#FFFFFF"><input name="textarea6" type="text" id="textarea6" value="" size="30" class="pi"></td>
    </tr>
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">���֣�</td>
      <td bgcolor="#FFFFFF"><input name="textarea9" type="text" id="textarea9" value="" size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">��ҵʱ�䣺</td>
      <td bgcolor="#FFFFFF"><input name="textarea7" type="text" id="textarea7" value="" size="30" class="pi"></td>
    </tr>
    
    <tr>
      <td height="23" align="right" bgcolor="#FFFFFF">ȱ�ݣ�</td>
      <td bgcolor="#FFFFFF"><input name="textarea10" type="text" id="textarea10" value="" size="30" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">�����̶ȣ�</td>
      <td bgcolor="#FFFFFF"><input type="radio" name="radio" id="radio3" value="radio" />
        ��ר&nbsp;
        <input type="radio" name="radio" id="radio3" value="radio" />
        ����&nbsp;
        <input type="radio" name="radio" id="radio3" value="radio" />
        ����&nbsp;
        <input type="radio" name="radio" id="radio3" value="radio" />
      Сѧ&nbsp; </td>
    </tr>
   
	</table>
	</td>
	</tr>
	<tr>
      <td align="right" nowrap bgcolor="#FFFFFF">�������ͣ�</td>
      <td colspan="7" bgcolor="#FFFFFF"><input type="checkbox" name="checkbox4" id="checkbox4" /> 
        ��ɩ
&nbsp;
<input type="checkbox" name="checkbox4" id="checkbox4" />
��ķ&nbsp;&nbsp;
<input type="checkbox" name="checkbox4" id="checkbox4" />
�ӵ�&nbsp;&nbsp;
<input type="checkbox" name="checkbox4" id="checkbox4" />
��ɩ
<input type="checkbox" name="checkbox" id="checkbox" />
��๤
&nbsp;
<input type="checkbox" name="checkbox" id="checkbox" />
 ����&nbsp;&nbsp;
 <input type="checkbox" name="checkbox" id="checkbox" /> 
 ���
&nbsp;&nbsp;
<input type="checkbox" name="checkbox" id="checkbox" />
�ҽ�
&nbsp;&nbsp;
<input type="checkbox" name="checkbox2" id="checkbox2" />
�߼��ܼ�<br>
��ע��
<input name="textarea9" type="text" id="textarea9" value="" size="40" class="pi"></td>
    </tr>
	  <tr>
      <td align="right" colspan="8" height="33" nowrap bgcolor="#FFFFFF"></td>
	  </tr>
    <tr>
      <td align="right" nowrap bgcolor="#FFFFFF">�����ˣ�</td>
      <td align="left" bgcolor="#FFFFFF"><input name="textarea21" type="text" id="textarea21" value="" size="14" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">����:</td>
      <td align="left" bgcolor="#FFFFFF"><input name="textarea21" type="text" id="textarea21" value="" size="14" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">������Ч��:</td>
      <td align="left" bgcolor="#FFFFFF"><input name="textarea27" type="text" id="textarea27" value="" size="14" class="pi"></td>
      <td align="right" bgcolor="#FFFFFF">״̬��</td>
      <td align="left" bgcolor="#FFFFFF"><span class="text">
        <select name="select" id="select" class="input">
          <option>��ѡ��</option>
          <option selected>δ�ɽ�</option>
          <option>�ѳɽ�</option>
          <option>�ڱ𴦳ɽ�</option>
          <option>��ȡ��</option>
      </select>
      </span></td>
    </tr>
  </table>
<table width="96%" height="63" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td width="67%" height="63" align="center" nowrap class="text"><input type="submit" name="searchbtn3" value="��  ��" class="button_new" onClick="javascript:alert('����ɹ���');location.href='ddgl.htm';">
      <input type="submit" name="searchbtn3" value="��  ��" class="button_new"onClick="javascript:location.href='ddgl.htm'" >
      <input type="hidden" name="mod" value="no">
    &nbsp;&nbsp; </td>
  </tr>
</table>
</body>
</html>
