<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            console.log(page)
            alert(page)
            window.location.href="/ny/noticesvl?reqType=queryAllNotices&pageNum="+page;
        }
    </script>
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;业务管理--&gt;每日通知</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>


<table width="91%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
        <td width="67%" align="right" class="text" nowrap>从
            <input type="text" name="searchName" maxlength="20" size="12" value="" class="input">
            到
            <input type="text" name="searchName2" maxlength="20" size="12" value="" class="input">
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            <input type="submit" name="searchbtn" value="查  询" class="button_new">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
<br>
<table width="91%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
        <td nowrap align="center" width="3%">序号</td>
        <td height="24" align="center" nowrap id=".name">提醒内容</td>
        <td width="9%" align="center" nowrap id=".submit_date">通知时间</td>
    </tr>
    <c:forEach var="detail" items="${requestScope.details}">
        <tr align="center" class="td2" onmouseover="javascript:changeBgColorOnMouseOver(this);"
            onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
            <td nowrap align="center" width="3%">${detail.notice_id} </td>
            <td height="14" align="center" nowrap>${detail.notice_detail}</td>
            <td align="center" nowrap>${detail.notice_time}</td>
        </tr>
    </c:forEach>
</table>
<table width="91%" height="10" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td><input type="hidden" name="orderType" value="asc">
            <input type="hidden" name="orderFid" value=".submit_date">
            <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
                <tr>
                    <td nowrap width="45%" align="center"> 当前第${page.pageNum}页 共${page.totalCount}记录 分${page.totalPage}页显示</td>
                    <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                        <input type="hidden" name="paginationAction" value="">
                        <c:if test="${page.pageNum <= 1}">
                        <a href="#">上一页</a>
                        <a href="/ny/noticesvl?reqType=queryAllNotices&pageNum=${page.pageNum+1}">下一页</a>
                        </c:if>
                        <c:if test="${page.pageNum >= page.totalPage}">
                            <a href="/ny/noticesvl?reqType=queryAllNotices&pageNum=${page.pageNum-1}">上一页</a>
                            <a href="#">下一页</a>
                        </c:if>
                        <button value="前往" onclick="goPage()">前往</button>
                        <input type="text" id="page" size='4' onlytype='int' name='pageSelect'
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
