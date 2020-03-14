<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<script type="text/javascript" src="../js/public.js"></script>
<link href="/css/index.css" rel="stylesheet" type="text/css">
<title>角色管理--列表</title>
</head>
<body class="bodybg" onLoad="onLoadInTemplate('','角色管理--列表')">








<link href="../css/index.css" rel="stylesheet" type="text/css">

<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp;※&nbsp;您的位置：我的桌面--&gt;系统管理--&gt;角色管理</td>
	<td align="right">&nbsp;</td>
    <td align="right">
	</td>
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
                <td width="82" class="Column_blue">角色列表</td>
              </tr>
          </table></td>
        </tr>
    </table></td>
    <td width="15"><img src="../image/red_BODY_right.gif" width="15" height="23"></td>
  </tr>
</table>

<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
<form name="SysRoleForm" method="POST" action="jsxz.htm">
   <input type="hidden" name="mhd" value="toList">
   <tr>
    <td width="15" background="../image/red_BODY_leftbg.gif">&nbsp;</td>
    <td>
	   <table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td> </td>
        </tr>
      </table>
      <table width="96%" height="30"  border="0" align="center" cellpadding="0" cellspacing="0" class="MENU_line">
        <tr>
          <td width="67%" align="right" class="text" nowrap>&nbsp;
		   角色名称：&nbsp;&nbsp;&nbsp;
		 <input type="text" name="searchValue" maxlength="20" size="12" value="" class="input">
         <input type="submit" name="searchbtn" value="查询" class="button_new">
         <input type="button" name="insert" value="新增" onClick="javascript:location.href='jsxz.htm'" class="button_new">
        <input type="button" name="delete" value="删除" onClick="doDelete()" class="button_new">
        <input type="button" name="view" value="查看" onClick="toView()" class="button_new">
          </td>
       </tr>
      </table>

      <table width="100%" height="10"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td> </td>
        </tr>
      </table>
      <table width="96%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CAD6E8">
        <tr align="center" class="tdtitle">
	          <td nowrap align="center" width=10%>
			    <input type="checkbox" onClick="checkAll(this,'fid')">
			  </td>
          <td nowrap align="center">
		         <div align="center" orderBy="true">角色名称</div>
		 </td>
		 <td nowrap align="center">
		         <div align="center" orderBy="true">排序号</div>
		 </td>
	     <td nowrap align="center">
		        <div align="center" orderBy="true">备注</div>
		  </td>
          <td align="center" nowrap>操作</td>
        </tr>
          
		   
		
         
	    <tr align="center" class="td2"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11484358093531350113',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11484358093531350113'>
		  </td>
          <td align="left">
		      市领导&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="xgjsxz.htm">修改</a>
          <a href="xgqx.htm">分配权限</a>
          <a href="xzry.htm">分配人员</a>          </td>
		</tr>
		
         
	    <tr align="center" class="td1"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577798693121472343',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577798693121472343'>
		  </td>
          <td align="left">
		      厅领导&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577798693121472343">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577798693121472343">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577798693121472343&role_name=厅领导">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td2"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577798894531790871',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577798894531790871'>
		  </td>
          <td align="left">
		      秘书长&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577798894531790871">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577798894531790871">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577798894531790871&role_name=秘书长">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td1"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('116133730778146108280',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='116133730778146108280'>
		  </td>
          <td align="left">
		      局长&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=116133730778146108280">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=116133730778146108280">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=116133730778146108280&role_name=局长">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td2"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577799134531843410',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577799134531843410'>
		  </td>
          <td align="left">
		      副局长&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577799134531843410">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577799134531843410">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577799134531843410&role_name=副局长">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td1"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577799281091429171',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577799281091429171'>
		  </td>
          <td align="left">
		      处长&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577799281091429171">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577799281091429171">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577799281091429171&role_name=处长">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td2"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577799367341389714',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577799367341389714'>
		  </td>
          <td align="left">
		      干部&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577799367341389714">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577799367341389714">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577799367341389714&role_name=干部">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td1"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('116157003531246392876',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='116157003531246392876'>
		  </td>
          <td align="left">
		      科长&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=116157003531246392876">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=116157003531246392876">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=116157003531246392876&role_name=科长">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td2"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577799573281774482',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577799573281774482'>
		  </td>
          <td align="left">
		      选派干部&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577799573281774482">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577799573281774482">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577799573281774482&role_name=选派干部">分配人员</a>
          </td>
		</tr>
		
         
	    <tr align="center" class="td1"     onmouseover="javascript:changeBgColorOnMouseOver(this);" onMouseOut="javascript:changeBgColorOnMouseOut(this);"  ondblclick="doDblClick('11577799744681936958',false);">

		  <td nowrap align="center" width=10%>
			<input type='checkbox' name='fid' value='11577799744681936958'>
		  </td>
          <td align="left">
		      办事人员&nbsp;
		  </td>
		  <td>&nbsp;
		      
		  </td>
		  <td width = "50%" align="left">&nbsp;
		      
		  </td>
          <td align="center">
              
          <a href="/backmanage/role/list.do?mhd=toUpdate&fid=11577799744681936958">修改</a>
          <a href="/backmanage/role/list.do?mhd=toDistribute&fid=11577799744681936958">分配权限</a>
          <a href="/backmanage/role/list.do?mhd=toSelectMan&fid=11577799744681936958&role_name=办事人员">分配人员</a>
          </td>
		</tr>
		
      </table>

      <table width="500"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CBCBCB"><tr></tr>
	  </table>
      <table width="96%" height="10"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>
		  <input type="hidden" name="orderType" value="asc">
		  <input type="hidden" name="orderFid" value=".sort_no">
		  <table width="90%" style="font-size:12px;" border="0" cellspacing="3" cellpadding="2">
<tr>
<td nowrap width="45%" align="center">
当前第1页 共14记录 分2页显示
</td>
<td nowrap width="55%" align="right">
<input type="hidden" name="currentPage" value="1">
<input type="hidden" name="paginationAction" value="">
<img src="../image/First_no.gif" alt="第一页" width="18" height="13" border="0">&nbsp&nbsp&nbsp
<img src="../image/Previous_no.gif" alt="上一页" width="14" height="13" border="0">&nbsp&nbsp&nbsp
<a href="javascript:this.document.SysRoleForm.submit()" oncontextmenu="return false"  onclick="this.document.SysRoleForm.paginationAction.value='Next';"><img src="../image/Next.gif" alt="下一页" width="14" height="13" border="0"></a>&nbsp&nbsp&nbsp
<a href="javascript:this.document.SysRoleForm.submit()" oncontextmenu="return false"  onclick="this.document.SysRoleForm.paginationAction.value='Last';"><img src="../image/Last.gif" alt="最后一页" width="18" height="13" border="0"></a>&nbsp&nbsp&nbsp
<a href="javascript:this.document.SysRoleForm.submit()" oncontextmenu="return false" onClick="if(this.document.SysRoleForm.pageSelect.value==''){ alert('页码必须输入');return false;}
 else {this.document.SysRoleForm.paginationAction.value='gotoPage';}">前往</a>
<input type=text size='4' onlytype='int' onfocus='checkTextBoxInput()' name='pageSelect' value=''/>页
</td>
</tr>
</table>
		  <script>
loadOrderInList(SysRoleForm,'asc','.sort_no',false,'/tdp../images/orderdown.gif','/tdp../images/orderup.gif')
</script>
		  </td>
        </tr>
      </table>
    </td>
    <td width="15" bordercolor="#FFCC6D" background="../image/red_BODY_rightbg.gif">&nbsp;
	</td>
  </tr>
</form>
</table>
<table width="94%"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="18"><img src="../image/red_BODY_downleft.gif" width="24" height="24"></td>
    <td background="../image/red_BODY_downbg.gif">&nbsp;</td>
    <td width="18"><img src="../image/red_BODY_downright.gif" width="24" height="24"></td>
  </tr>
</table>






</body>
</html>