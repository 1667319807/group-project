<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../js/public.js"></script>
    <script language="JavaScript">
        function doDBClick(url, operator, type) {
            if (operator == false) {
                document.forms[0].action = url + "&op=view";
                document.forms[0].submit();
            } else {
                document.forms[0].action = url;
                document.forms[0].submit();
            }
        }
    </script>
    <script >
        function goPage() {
            var page=document.getElementById("page").value;
            window.location.href="${pageContext.request.contextPath}/ny/swipcardsvl?reqType=getAll&pageNum="+page;
        }
    </script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;消费查询</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>

<form action="/ny/swipcardsvl?reqType=selectWithCond" method="post">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap>&nbsp;公司名称：
            <input type="text" name="companyName" maxlength="20" size="12" value="" class="input">
            &nbsp;&nbsp;&nbsp;&nbsp;公司帐号：
            <input type="text" name="companyAccount" maxlength="20" size="12" value="" class="input">
            &nbsp;&nbsp;&nbsp;&nbsp;日期：
            <input type="text" name="time1" maxlength="20" size="12" value="2010-01-01" class="input">
            到
            <input type="text" name="time2" maxlength="20" size="12" value="2010-07-01" class="input"> &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="searchbtn" value="查  询" class="button_new">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="4%">序号</td>
        <td width="27%" align="center" nowrap id=".name">公司名称</td>
        <td width="9%" align="center" nowrap id=".name">帐户名</td>
        <td width="9%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true"><strong>刷卡时间</strong></div>
        </td>
        <td width="7%" align="center" nowrap id=".register">
            <div align="center" orderBy="true"><strong>本次扣费(元)</strong></div>
        </td>
    </tr>
    <c:forEach var="list" items="${list}">
        <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
            onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
            <td width="4%" height="14" align="center" nowrap>${list.swipcard_id} </td>
            <td align="center" nowrap>${list.company.company_name}</td>
            <td align="center" nowrap>${list.company.company_account}</td>
            <td align="center" nowrap>${list.swipcardtime}</td>
            <td align="center" nowrap>${list.swip_charge}</td>
        </tr>
    </c:forEach>
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);">
        <td height="14" colspan="4" align="right" nowrap><strong>合计金额：</strong></td>
        <td align="center" nowrap>2</td>
    </tr>
</table>

<table width="96%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td nowrap width="45%" align="center"> 当前第${page.pageNum}页 共${page.totalCount}记录 分${page.totalPage}显示</td>
        <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
            <input type="hidden" name="paginationAction" value="">
            <c:if test="${requestScope.page.pageNum <= 1}">
                <a href="#">上一页</a>
                <a href="${pageContext.request.contextPath}/ny/swipcardsvl?reqType=getAll&pageNum=${page.pageNum+1}">下一页</a>
            </c:if>
            <c:if test="${page.pageNum >= page.totalPage}">
                <a href="${pageContext.request.contextPath}/ny/swipcardsvl?reqType=getAll&pageNum=${page.pageNum-1}">上一页</a>
                <a href="#">下一页</a>
            </c:if>
            <button value="前往" onclick="goPage()">前往</button>
            <input type="text" id="page" size='4' onlytype='int' name='pageSelect'
                   value=''/>
            页
        </td>
    </tr>
</table>

</body>
</html>
