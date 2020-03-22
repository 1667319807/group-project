<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<link href="../css/button.css" rel="stylesheet" type="text/css">
<html>
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
  <script >
      function goPage() {
          var page=document.getElementById("page").value;
          console.log(page)
          alert(page)
          window.location.href="/ny/employerSvl?reqType=getAllEmployers&pageNum="+page;
      }
  </script>
</head>

<body>

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;雇主信息</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<br/>
<form method="post" action="${pageContext.request.contextPath}/ny/employerSvl">
  <input type="hidden" name="reqType" value="queryEmployersWithCond">
  <table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
    <tr>
      <td width="67%" align="right" class="text" nowrap>&nbsp;姓名：
        <input type="text" name="employername" maxlength="20" size="12" value="" class="input">
        &nbsp;&nbsp;性别：
        <input type="radio" name="sex" id="radio" checked value="男">
        男
        <input type="radio" name="sex" id="radio2" value="女">
        女 电话：
        <input type="text" name="phone" maxlength="20" size="12" value="" class="input">
        状态：
        <select name="state" id="select" class="input">
          <option selected value="已雇用">已雇用</option>
          <option value="未雇用">未雇用</option>
        </select>
        雇用职位：
        <select name="type" id="select2" class="input">

          <option selected value="保姆">保姆</option>
          <option  value="月嫂">月嫂</option>
          <option  value="家教">家教</option>
          <option  value="钟点工">钟点工</option>
        </select>
        <input type="submit" name="searchbtn" value="查  询" class="button_new">
        <input type="button" name="searchbtn2" value="新  增" class="button_new" onClick="javascript:location.href='/ny/ywgl/gzxx_xz.jsp'" >
        <input type="hidden" name="mod" value="no">
      &nbsp;&nbsp; </td>
    </tr>
  </table>
</form>
  <br>
  <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3">
    <tr align="center" class="tdtitle">
      <td nowrap align="center" width="3%">序号</td>
      <td width="12%" align="center" nowrap id=".name" ><strong>姓名</strong></td>
      <td width="11%" height="24" align="center" nowrap id="name" ><div align="center" orderBy="true"><strong>性别</strong></div></td>
      <td width="12%" height="24" align="center" nowrap id=".phone" ><div align="center" orderBy="true"><strong>年龄</strong></div></td>
      <td width="16%" align="center" nowrap id=".title" ><div align="center" orderBy="true"><strong>雇用</strong></div></td>
      <td width="13%" align="center" nowrap id="" ><div align="center" orderBy="true"><strong>接受薪资</strong></div></td>
      <td width="9%" align="center" nowrap id=".register" ><strong>状态</strong></td>
      <td width="14%" align="center" nowrap id=".submit_date" ><strong>录入日期</strong></td>
      <td width="10%" align="center" nowrap id="submit_date" ><strong>操作</strong></td>
    </tr>
    <c:forEach items="${requestScope.allEmployers}" var="list">
    <tr align="center" class="td2"  onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);" onDblClick="doDBClick('bl.htm',true,'2');">
      <td nowrap align="center" width="3%">${list.employer_id}</td>
      <td align="center" nowrap>${list.employer_name}</td>
      <td height="14" align="center" nowrap>${list.employer_sex}</td>
      <td align="center" nowrap>${list.employer_age}</td>
      <td align="left" nowrap>${list.trade.trade_hiretype}</td>
      <td align="center" nowrap>${list.employer_lowsalary}-${list.employer_highsalary}</td>
      <td align="center" nowrap>${list.trade.trade_state}</td>
      <td align="center" nowrap>${list.trade.trade_recordtime}&nbsp; </td>
      <td align="center" nowrap><a href="/ny/employerSvl?employer_id=${list.employer_id}&reqType=employerDetail">查看</a> <a href="gzxx_xg.htm">修改</a> <a href="lsda.htm">历史档案</a></td>
    </tr>
    </c:forEach>
  </table>
  <table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><input type="hidden" name="orderType" value="asc">
          <input type="hidden" name="orderFid" value=".submit_date">
          <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
            <tr>
              <td nowrap width="45%" align="center"> 当前第${page.pageNum}页 共${page.totalCount}记录 分${page.totalPage}显示</td>
              <td nowrap width="55%" align="right"><input type="hidden" name="currentPage" value="1">
                  <input type="hidden" name="paginationAction" value="">
                <c:if test="${requestScope.page.pageNum <= 1}">
                  <a href="#">上一页</a>
                  <a href="${pageContext.request.contextPath}/ny/employerSvl?reqType=getAllEmployers&pageNum=${page.pageNum+1}">下一页</a>
                </c:if>
                <c:if test="${page.pageNum >= page.totalPage}">
                  <a href="${pageContext.request.contextPath}/ny/employerSvl?reqType=getAllEmployers&pageNum=${page.pageNum-1}">上一页</a>
                  <a href="#">下一页</a>
                </c:if>
                <button value="前往" onclick="goPage()">前往</button>
                <input type="text" id="page" size='4' onlytype='int' name='pageSelect'
                       value=''/>
                页 </td>
            </tr>
          </table>

      </td>
    </tr>
  </table>

</body>
<script>
    function queryEmployer() {
        location.href="${pageContext.request.contextPath}/ny/employerSvl?reqType=queryEmployersWithCond";
    }
</script>
</html>
