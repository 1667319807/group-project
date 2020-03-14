<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="../css/index.css" rel="stylesheet" type="text/css">
<html>
<style type="text/css">
    <!--
    .STYLE1 {
        font-size: 24px;
        font-weight: bold;
    }

    -->
</style>
<head>
    <title>Untitled Document</title>
    <script type="text/javascript" src="../tdp/js/validator.js"></script>
    <script type="text/javascript" src="../tdp/js/public.js"></script>
    <script type="text/javascript" src="../javascript/handleArchive.js"></script>
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
</head>

<body>

<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
    <tr>
        <td>&nbsp;&nbsp;&nbsp;您的位置:我的桌面-->业务管理-->信息检索</td>
        <td align="right">&nbsp;</td>
    </tr>
</table>
<br/>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" height="40" align="center" nowrap class="MENU_line1">工人资料检索</td>
    </tr>
</table>
<br>
<form action="#" method="post">
    <table width="96%" height="270" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#bdc7d3"
           class="text_lb">
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">姓名</td>
            <td bgcolor="#FFFFFF">
                <input name="worker_name" type="text" id="textarea2" value="" size="30" class="pi">
            </td>
            <td align="right" bgcolor="#FFFFFF">性别</td>
            <td bgcolor="#FFFFFF">
                <input type="radio" name="sex" id="radio" value="F">
                男
                <input type="radio" name="sex" id="radio2" value="W">
                女
            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">年龄</td>
            <td bgcolor="#FFFFFF">
                <select name="select1">
                    <option value="1">15</option>
                    <option value="2">17</option>
                    <option value="3">18</option>
                </select>&nbsp;&nbsp;&nbsp;到&nbsp;&nbsp;&nbsp;&nbsp;
                <select name="select2">
                    <option value="1">16</option>
                    <option value="2">17</option>
                    <option value="3">18</option>
                </select>
            </td>
            <td align="right" bgcolor="#FFFFFF">从业时间</td>
            <td bgcolor="#FFFFFF"><input name="workertime" type="text" id="textarea7" value="" size="30" class="pi">
            </td>
        </tr>
        <tr>
            <td align="right" bgcolor="#FFFFFF">教育程度</td>
            <td bgcolor="#FFFFFF">
                <input type="radio" name="education" value="big"/>
                大专&nbsp;
                <input type="radio" name="education" value="high"/>
                高中&nbsp;
                <input type="radio" name="education" value="middle"/>
                初中&nbsp;
                <input type="radio" name="education" value="small"/>
                小学&nbsp;
            </td>
            <td height="23" align="right" bgcolor="#FFFFFF">爱好</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="checkbox" name="hobby" value="sing"/>
                唱歌&nbsp;
                <input type="checkbox" name="hobby" value="dance"/>
                舞蹈&nbsp;
                <input type="checkbox" name="hobby" value="musical"/>
                乐器&nbsp;
                <input type="checkbox" name="hobby" value="gym"/>
                体育&nbsp;
                <input type="checkbox" name="hobby" value="shufa"/>
                书法&nbsp;
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">语言</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="checkbox" name="language" value="0"/>
                普通话&nbsp;
                <input type="checkbox" name="language" value="1"/>
                广州话&nbsp;
                <input type="checkbox" name="language" value="2"/>
                英语
                其他语言&nbsp;
                <input name="otherlanguage" type="text" id="textarea16" value="" size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">状态</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="radio" name="state" id="radio4" value="0"/>
                在岗&nbsp;&nbsp;
                <input type="radio" name="state" id="radio5" value="1"/>
                待岗&nbsp;&nbsp;
                <input type="radio" name="state" id="radio6" value="2"/>
                其他&nbsp;
                <input name="otherstate" type="text" id="textarea17" value="" size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">婚姻状况</td>
            <td colspan="4" bgcolor="#FFFFFF"><input type="radio" name="marriagestate" id="radio7" value="radio"/>
                已婚
                &nbsp;
                <input type="radio" name="marriagestate" id="radio8" value="0"/>
                未婚&nbsp;&nbsp;
                <input type="radio" name="marriagestate" id="radio9" value="1"/>
                离异
                &nbsp;
                <input type="radio" name="marriagestate" id="radio10" value="2"/>
                丧偶
                &nbsp;&nbsp;
                <input type="radio" name="marriagestate" id="radio11" value="3"/>
                其他&nbsp;
                <input name="othermarry" type="text" id="textarea18" value="" size="30" class="pi"></td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">证照状况</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <input type="checkbox" name="licensestate" value="1"/>
                计生技֤&nbsp;
                <input type="checkbox" name="licensestate" value="2"/>
                健康证֤&nbsp;&nbsp;
                <input type="checkbox" name="licensestate" value="3"/>
                暂住证&nbsp;&nbsp;
                <input type="checkbox" name="licensestate" value="3"/>
                上岗证
            </td>
        </tr>
        <tr>
            <td height="23" align="right" bgcolor="#FFFFFF">个人技能</td>
            <td colspan="4" bgcolor="#FFFFFF">
                <table width="100%" border="0" cellpadding="1" cellspacing="0" bgcolor="#bdc7d3" class="text_lb">
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <input type="checkbox" name="personskill" value="0"/>
                            照顾婴儿&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="1"/>
                            带小孩&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="2"/>
                            照顾老人&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="3"/>
                            煮饭&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="4"/>
                            粤菜&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="5"/>
                            客家菜&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="6"/>
                            煲汤
                        </td>
                    </tr>
                    <tr>
                        <td height="28" bgcolor="#FFFFFF">
                            <input type="checkbox" name="personskill" value="7"/>
                            扫地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="8"/>
                            拖地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="9"/>
                            擦窗
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="10"/>
                            洗衣 &nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="11"/>
                            打蜡 &nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="personskill" value="12"/>
                            通渠&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;其他
                            <input name="otherskill" type="text" id="textarea26" value="" size="30" class="pi"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
<table width="96%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="67%" align="center" class="text" nowrap>
            <input type="submit" name="searchbtn3" value="检索"
                   class="button_new"
                   onClick="javascript:location.href='grxx.htm'">
            <input type="submit" name="searchbtn3" value="返回" class="button_new"
                   onClick="javascript:location.href='grxx.htm'">
            <input type="hidden" name="mod" value="no">
            &nbsp;&nbsp;
        </td>
    </tr>
</table>
</body>
</html>
