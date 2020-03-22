<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
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
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;充值管理</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>


  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
      <td width="67%" align="right" class="text" nowrap>&nbsp;公司名称：
        <input type="text" name="searchName" maxlength="20" size="12" value="" class="input">
        &nbsp;&nbsp;&nbsp;&nbsp;公司帐号：
        <input type="text" name="searchName3" maxlength="20" size="12" value="" class="input">
 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" name="searchbtn" value="查  询" class="button_new">
      &nbsp;&nbsp; </td>
    </tr>
  </table>
  <br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="3%">序号</td>
      <td width="19%" align="center" nowrap id=".name" >公司名称</td>
      <td width="8%" align="center" nowrap id=".name" >帐户名</td>
      <td width="9%" align="center" nowrap id=".name" >刷卡次数</td>
      <td width="7%" align="center" nowrap id=".name" >收费标准<strong>(元/次)</strong></td>
      <td width="12%" height="24" align="center" nowrap id=".name" ><div align="center" orderBy="true"><strong>合计消费额(元)</strong></div></td>
      <td width="14%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>帐户余额</strong><strong>(元)</strong></div></td>
      <td width="10%" align="center" nowrap id=".register" ><div align="center" orderBy="true"><strong>操作人</strong></div></td>
      <td width="9%" align="center" nowrap id=".register" ><strong>备注</strong></td>
      <td width="9%" align="center" nowrap id=".submit_date" ><strong>操作</strong></td>
    </tr>
    <c:forEach var="list" items="${requestScope.recharges}">
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="3%">${list.recharge_id}</td>
      <td align="center" nowrap>${list.company.company_name}</td>
      <td align="center" nowrap>${list.company.company_account}</td>
      <td align="center" nowrap>${list.card.card_count}</td>
      <td align="center" nowrap>${list.card.card_standard}</td>
      <td height="14" align="center" nowrap>${list.card.card_money}</td>
      <td align="center" nowrap>${list.card.card_balance}</td>
      <td align="center" nowrap>${list.operator_id}</td>
      <td align="center" nowrap>${list.remark}</td>
      <td align="center" nowrap><a href="/ny/xtgl/czgl_xz.jsp?recharge_id=${list.recharge_id}&company_account=${list.company.company_account}">充值</a></td>
    </tr>
    </c:forEach>
    <tr align="center" class="td1"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" >
      <td colspan="3" align="right" nowrap><strong>合计总额：</strong></td>
      <td height="14" align="left" nowrap><div align="center" class="STYLE1">390</div></td>
      <td height="14" align="left" nowrap><div align="center"><span class="STYLE1"></span></div></td>
      <td height="14" align="left" nowrap><div align="center" class="STYLE1">1170</div></td>
      <td height="14" align="left" nowrap><div align="center" class="STYLE1">498</div></td>
      <td height="14" align="left" nowrap>&nbsp;</td>
      <td height="14" align="left" nowrap>&nbsp;</td>
      <td height="14" align="left" nowrap>&nbsp;</td>
    </tr>

  </table>
<table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center"> 当前第${page.pageNum}页 共${page.totalPage}记录 分${page.pageSize}页显示</td>
              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                <input type="hidden" name="paginationAction" value="">
                <c:if test="${requestScope.page.pageNum <= 1}">
                  <a href="#">上一页</a>
                  <a href="${pageContext.request.contextPath}/ny/rechargesvl?reqType=getAll&pageNum=${page.pageNum+1}">下一页</a>
                </c:if>
                <c:if test="${page.pageNum > page.totalPage}">
                  <a href="${pageContext.request.contextPath}/ny/rechargesvl?reqType=getAll&pageNum=${page.pageNum-1}">上一页</a>
                  <a href="#">下一页</a>
                </c:if>
                <button value="前往" onclick="goPage()">前往</button>
                <input type="text"  id="page" size='4' onlytype='int' name='pageSelect'
                       value=''/>
                页
              </td>
            </tr>
          </table>

      </td>
    </tr>
  </table>

</body>
</html>
