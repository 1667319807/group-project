<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/ny/css/INDEX.css" rel="stylesheet" type="text/css">
<link href="/ny/css/button.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="/ny/js/public.js"></script>
    <script >
        function goPage() {
            var page=document.getElementById("page").value;
            window.location.href="${pageContext.request.contextPath}/ny/workersvl?reqType=getAllTrades&pageNum="+page;
        }
    </script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;业务管理--&gt;用工管理</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>

<form action="${pageContext.request.contextPath}/ny/workersvl" method="post">
    <input type="hidden" name="reqType" value="getTradesWithCond">
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap>&nbsp;雇主：
            <input type="text" name="employerName" maxlength="20" size="12" value="" class="input">
            &nbsp; 登记日期：
            <input type="text" name="recordTime1" maxlength="20" size="12" value="" class="input">
            到
            <input type="text" name="recordTime2" maxlength="20" size="12" value="" class="input">
            &nbsp; 雇用工人：
            <input type="text" name="workerName" maxlength="20" size="12" value="" class="input">
            &nbsp;状态：
            <select name="state" id="select" class="input">
                <option selected value="">请选择</option>
                <option value="未雇用">未成交</option>
                <option value="已雇用">已成交</option>
                <%--<option>在别处成交</option>
                <option>已取消</option>--%>
            </select>
            <input type="submit" name="searchbtn" value="查  询" class="button_new">
            <input type="button" name="searchbtn2" value="新  增" class="button_new"
                   onClick="javascript:location.href='ddgl_xz.htm'">

            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</form>
<br>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="4%">订单号</td>
        <td width="8%" align="center" nowrap id=".name">雇主</td>
        <td width="6%" height="24" align="center" nowrap id=".name">
            <div align="center" orderBy="true">手机/固</div>
        </td>
        <td width="16%" height="24" align="center" nowrap id=".phone">
            <div align="center" orderBy="true">工人</div>
        </td>
        <td width="11%" align="center" nowrap id=".title">
            <div align="center" orderBy="true">手机/固</div>
        </td>
        <td width="7%" align="center" nowrap id="">
            <div align="center" orderBy="true">工资/月</div>
        </td>
        <td width="31%" align="center" nowrap id=".register"><strong>工作类型</strong></td>
        <td width="8%" align="center" nowrap id="submit_date"><strong>状态</strong></td>
        <td width="9%" align="center" nowrap id=".submit_date"><strong>操作</strong></td>
    </tr>
<c:forEach var="trade" items="${tradesList}">
    <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
        onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
        <td nowrap align="center" width="4%">${trade.trade_id}</td>
        <td align="center" nowrap>${trade.employer.employer_name}</td>
        <td height="14" align="center" nowrap>${trade.employer.employer_shouji}/${trade.employer.employer_phone}</td>
        <td align="center" nowrap>${trade.worker.worker_name}</td>
        <td align="center" nowrap>${trade.worker.worker_shouji}/${trade.worker.worker_phone}</td>
        <td align="center" nowrap>${trade.worker.worker_salaryrequire}</td>
        <td align="center" nowrap>${trade.worker.worker_gongzhong}</td>
        <td align="center" nowrap>${trade.trade_state}</td>
        <td align="center" nowrap>
            <a href="${pageContext.request.contextPath}/ny/tradeSvl?trade_id=${trade.trade_id}&reqType=checkOrder">查看</a>
            <a href="${pageContext.request.contextPath}/ny/tradeSvl?trade_id=${trade.trade_id}&reqType=modOrder">修改</a></td>
    </tr>
</c:forEach>
</table>
<table width="96%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
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
                            <a href="${pageContext.request.contextPath}/ny/workersvl?reqType=getAllTrades&pageNum=${page.pageNum+1}">下一页</a>
                        </c:if>
                        <c:if test="${page.pageNum >= page.totalPage}">
                            <a href="${pageContext.request.contextPath}/ny/workersvl?reqType=getAllTrades&pageNum=${page.pageNum-1}">上一页</a>
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
