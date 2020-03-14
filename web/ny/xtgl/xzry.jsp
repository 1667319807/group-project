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
<title>用户组--选择人员</title>
</head>
<body class="bodybg" onLoad="onLoadInTemplate('','用户组--选择人员')">

<html>











<link href="/css/index.css" rel="stylesheet" type="text/css">

<!-- Insert your jsp/html code here -->

<style type="text/css">
	.selected{
		background-color: #ECF5FF;
		border:1px blue;
	}
</style>

<script language="JavaScript">
function query() {
	if(document.all.search.value!=""){
	setPattern(document.all.search.value);
	initSelect('query');
	}
	else{

		for(var i = 0 ; i < document.all.leftSelect.options.length; i ++){
          document.all.leftSelect.options[i].selected = false;
	     }
		for(var i = 0 ; i < document.all.rightSelect.options.length; i ++){
          document.all.rightSelect.options[i].selected = false;
	     }	}

}
function initSelect(type) {
	from = document.all.leftSelect;
	to=document.all.rightSelect;

        //to.options.length = 0;

	switch (type) {
	case 'query':
		searchInRight();
		searchInLeft();
		//searchInUserArray();
		break;
    case 'dept':

        	if(document.all.bmSelectList.value != 0) {
		            if(deptFlag == -1){
                      from.options.length = 0;
	                  }
		       var deptName = document.all.bmSelectList.options[document.all.bmSelectList.selectedIndex].text;
              //document.all.bmSelectList.options[document.all.bmSelectList.selectedIndex].text = "ok";
        	patternStr = seperator + document.all.bmSelectList.value + seperator;
        	setPattern(patternStr);
             //   alert('pattern is ' + pattern);
        	for(user in userArray) {
                    if(userArray[user].isMatch('dept') && userArray[user].isRight==false) {
                        //alert(userArray[user].name + ' dept is ' + userArray[user].dept);
			            var option = new Option(userArray[user].name,userArray[user].id);
                        from.add(option);
                    }
        	}
        	}else {

        	for(user in userArray) {
                    if(userArray[user].isMatch('dept_all') && userArray[user].isRight==false) {
                        //alert(userArray[user].name + ' dept is ' + userArray[user].dept);
			            var option = new Option(userArray[user].name,userArray[user].id);
                        from.add(option);
                    }
        	}

        	}

                break;
        case 'job':
        	if(document.all.zwSelectList.value != 0) {
        	patternStr = seperator + document.all.zwSelectList.value + seperator;
        	setPattern(patternStr);
        	for(user in userArray) {
                    if(userArray[user].isMatch('job') && userArray[user].isRight==false) {
			var option = new Option(userArray[user].name,userArray[user].id);
                        from.add(option);
                    }
        	}
        	}else {
         	for(user in userArray) {
                    if(userArray[user].isMatch('job_all') && userArray[user].isRight==false) {
			var option = new Option(userArray[user].name,userArray[user].id);
                        from.add(option);
                    }
        	}
        	}
                break;
        case 'address':
        	if(document.all.addressSelectList.value != 0) {
        	  userIds = document.all.addressSelectList.value;
		  if(userIds.length > 0) {
    			userId = userIds.split(seperator);
		  }
		  for(user in userArray) {
 		     for(var i = 0 ; i < userId.length ; i++) {
   		       setPattern(";" + userId[i] + ";");
                      if(userArray[user].isMatch('id') && userArray[user].isRight==false) {
 		  	  var option = new Option(userArray[user].name,userArray[user].id);
                          from.add(option);
                      }
  		    }
		  }
        	}
                break;
	default:


			for(user in userArray) {
			var option = new Option(userArray[user].name,userArray[user].id);
			if(userArray[user].isRight) {
				//document.all.rightSelect.add(option);
			} else {

				      if(deptFlag != -1){
                          if(userArray[user].dept==deptNameID[1])
						       from.add(option);
					  }else{
                          from.add(option);
					  }
				}
		}
		break;
	}
}
function initSelectDept() {
    for(var i = 0 ; i < document.all.bmSelectList.options.length ; i ++) {
        if(document.all.bmSelectList.options[i].value == 0) {
            document.all.bmSelectList.options[i].selected = true;
            document.all.bmSelectList.value = 0;
            break;
        }
    }
    initSelect('dept');
}
function initSelectJob() {
//alert("DEPT"+document.all.bmSelectList.options[0].value)
// alert("--ZW-"+document.all.zwSelectList.options[0].value)
    for(var i = 0 ; i < document.all.zwSelectList.options.length ; i ++) {
        if(document.all.zwSelectList.options[i].value == 0) {
            document.all.zwSelectList.options[i].selected = true;
            document.all.zwSelectList.value = 0;
            break;
        }
    }
    initSelect('job');
}
function initSelectAdd() {
    for(var i = 0 ; i < document.all.addressSelectList.options.length ; i ++) {
        if(document.all.addressSelectList.options[i].value == 0) {
            document.all.addressSelectList.options[i].selected = true;
            document.all.addressSelectList.value = 0;
            break;
        }
    }
    initSelect('address');
}
/*原来代码*/
function moveOneFrom(type) {
	getFromTo(type)
	for(var i = 0 ; i < from.options.length ; i ++) {
		if(from.options[i].selected) {
			tempOption = new Option(from.options[i].text,from.options[i].value);
			setRight(type);
			to.add(tempOption);
			from.options[i] = null;
			i--
		}
	}
}

function moveAllFrom(type) {
	getFromTo(type);
	for(var i = 0 ; i < from.options.length ; i ++) {
		tempOption = new Option(from.options[i].text,from.options[i].value);
                setRight(type);
		to.add(tempOption);
		from.options[i] = null;
		i--;
	}

}
function setRight(type) {
   setPattern(";" + tempOption.value + ";");
   for(user in userArray) {
      userArray[user].isMatch('id_' + type);
   }
}

var currentRightSel=null;
function getFromTo(type) {

		currentRightSel=document.all.rightSelect;

	switch (type) {
		case 'left':
			from = document.all.leftSelect;
			to = currentRightSel;
			break;
		case 'right':
			from = currentRightSel;
			to = document.all.leftSelect;
			break;
		default:
			from = document.all.leftSelect;
			to = currentRightSel;
			break;
	}
}
function setCurrent(element){
	//if(currentRightSel!=null){
		//currentRightSel.className="";
		//currentRightSel.selectedIndex=-1;
	//}
	//currentRightSel=event.srcElement;
	//currentRightSel=element;
	//currentRightSel.className="selected";

}
/***fcc****/
function searchInRight() {
	for(var i = 0 ; i < to.options.length; i ++){
       to.options[i].selected = false;
	}
	for(var i = 0 ; i < to.options.length; i ++) {
//	alert(pattern.test(to.options[i].text))
		if(pattern.test(to.options[i].text)) {
			to.options[i].selected = true;
		}
	}
}
function searchInLeft() {
	for(var i = 0 ; i < from.options.length; i ++){
         from.options[i].selected = false;
	}
	for(var i = 0 ; i < from.options.length; i ++) {
//	alert(pattern.test(to.options[i].text))
		if(pattern.test(from.options[i].text)) {
			from.options[i].selected = true;
		}
	}
}
function searchInUserArray() {
	from.options.length = 0;
	for(user in userArray) {
            	//alert(userArray[user].name + " isRight is " + userArray[user].isRight);
		if(userArray[user].isMatch() && userArray[user].isRight == false) {
			var option = new Option(userArray[user].name,userArray[user].id);
			from.add(option);
		}
	}
}
</script>
<script>
// var getValues = window.dialogArguments;//父页面传过来的值;
// var  tempDep = getValues[getValues.length-2];
 var deptFlag = -1;
 //if(deptFlag != -1){
//	 var deptNameID = tempDep.split("|");
// }

</script>

<script language="JavaScript">
var pattern;//正则
var seperator = ',';//分隔符
var tempOption;//新的option
var patternStr;//正则表达式
var from;
var to;

function setPattern(patternStr) {
	pattern = new RegExp(patternStr);
}

function User(identify,id,name,dept,job){
	this.identify = identify;
	this.id = id;
	this.name = name;
	this.dept = dept;
	this.job = job;
	this.isRight = false;//是否被选中
	this.index = 0;
	function compare_by_type(type,index){
		switch(type) {
			case 'id':
				return pattern.test(";" + this.id + ";");
			case 'id_left':
                        	if(pattern.test(";" + this.id + ";")) {
                                	this.isRight = true;
                        	}
							this.index=index;
				return ;
			case 'id_right':
                        	if(pattern.test(";" + this.id + ";")) {
                                	this.isRight = false;
                        	}
				return ;
			case 'name':
				return pattern.test(this.name);
			case 'dept':
				return pattern.test(seperator + this.dept + seperator);
			case 'dept_all':
				return this.dept.length > 0;
			case 'job':
				return pattern.test(seperator + this.job + seperator);
			case 'job_all':
				return this.job.length > 0;
			case 'all':
				return true;
			default:
				return pattern.test(this.name);
		}
	}
	this.isMatch = compare_by_type;

}

</script>

<script language="JavaScript">
var userArray = new Array()


   userArray[userArray.length] = new User("8","8","苏泽群","_4","");
 

   userArray[userArray.length] = new User("141","141","邬毅敏","_4","");
 

   userArray[userArray.length] = new User("142","142","徐志彪","_4","");
 

   userArray[userArray.length] = new User("143","143","曹鉴燎","_4","");
 

   userArray[userArray.length] = new User("214","214","张广宁","","");
 

   userArray[userArray.length] = new User("96","96","刘丽云","","");
 

   userArray[userArray.length] = new User("100","100","梁倩清","","");
 

   userArray[userArray.length] = new User("101","101","陈国","_4","");
 

   userArray[userArray.length] = new User("103","103","陈建任","_4","");
 

   userArray[userArray.length] = new User("104","104","凌伟宪","","");
 

   userArray[userArray.length] = new User("106","106","陈彬","","");
 

   userArray[userArray.length] = new User("107","107","董丽","","");
 

   userArray[userArray.length] = new User("108","108","吴娟","","");
 

   userArray[userArray.length] = new User("110","110","梁耀华","","");
 

   userArray[userArray.length] = new User("115","115","陈明德","_4","");
 

   userArray[userArray.length] = new User("116","116","甘新","_4","");
 

   userArray[userArray.length] = new User("122","122","许瑞生","_4","");
 

   userArray[userArray.length] = new User("19","19","黄周海","_4","");
 

   userArray[userArray.length] = new User("149","149","陈彦华","_4","");
 

   userArray[userArray.length] = new User("152","152","陈炳弟","_4","");
 

   userArray[userArray.length] = new User("165","165","赵丽真","_4","");
 

   userArray[userArray.length] = new User("20","20","叶海玲","_4","");
 

   userArray[userArray.length] = new User("21","21","廖建辉","_4","");
 

   userArray[userArray.length] = new User("209","209","石立萍","_4","");
 

   userArray[userArray.length] = new User("125","125","乐演明","_4","");
 

   userArray[userArray.length] = new User("154","154","梁锦耀","_4","");
 

   userArray[userArray.length] = new User("28","28","杨小英","_4","");
 

   userArray[userArray.length] = new User("55","55","肖晖","_4","");
 

   userArray[userArray.length] = new User("158","158","郭建农","_4","");
 

   userArray[userArray.length] = new User("195","195","陈岳秀","_4","");
 

   userArray[userArray.length] = new User("138","138","刘洪涛","_4","");
 

   userArray[userArray.length] = new User("180","180","陈杰新","_4","");
 

   userArray[userArray.length] = new User("181","181","冯民安","_4","");
 

   userArray[userArray.length] = new User("151","151","陆志英","_4","");
 

   userArray[userArray.length] = new User("157","157","杨青军","_4","");
 

   userArray[userArray.length] = new User("155","155","欧阳德","_4","");
 

   userArray[userArray.length] = new User("163","163","阮静怡","_4","");
 

   userArray[userArray.length] = new User("29","29","刘晓明","_4","");
 

   userArray[userArray.length] = new User("120","120","雷岚","_4","");
 

   userArray[userArray.length] = new User("27","27","张实","_4","");
 

   userArray[userArray.length] = new User("109","109","刘怡","_4","");
 

   userArray[userArray.length] = new User("144","144","邱创泓","_4","");
 

   userArray[userArray.length] = new User("86","86","林畅锐","_4","");
 

   userArray[userArray.length] = new User("162","162","梁婉玲","_4","");
 

   userArray[userArray.length] = new User("24","24","薛晓明","_4","");
 

   userArray[userArray.length] = new User("130","130","薛长远","_4","");
 

   userArray[userArray.length] = new User("179","179","刘益茂","_4","");
 

   userArray[userArray.length] = new User("182","182","熊永光","_4","");
 

   userArray[userArray.length] = new User("156","156","郭向明","_4","");
 

   userArray[userArray.length] = new User("184","184","刘仁江","_4","");
 

   userArray[userArray.length] = new User("210","210","陈穗青","_4","");
 

   userArray[userArray.length] = new User("26","26","曾嘉","_4","");
 

   userArray[userArray.length] = new User("23","23","张锋","_4","");
 

   userArray[userArray.length] = new User("161","161","谢国锋","_4","");
 

   userArray[userArray.length] = new User("177","177","彭湘安","_4","");
 

   userArray[userArray.length] = new User("124","124","徐小泉","_4","");
 

   userArray[userArray.length] = new User("175","175","石叶","_4","");
 

   userArray[userArray.length] = new User("123","123","郭晓岚","_4","");
 

   userArray[userArray.length] = new User("170","170","史文昕","_4","");
 

   userArray[userArray.length] = new User("105","105","邓燕秀","_4","");
 

   userArray[userArray.length] = new User("119","119","聂永洪","_4","");
 

   userArray[userArray.length] = new User("118","118","林晓萍","_4","");
 

   userArray[userArray.length] = new User("174","174","段飞","_4","");
 

   userArray[userArray.length] = new User("173","173","刘文辉","_4","");
 

   userArray[userArray.length] = new User("183","183","周阳","_4","");
 

   userArray[userArray.length] = new User("208","208","陈健瑜","_4","");
 

   userArray[userArray.length] = new User("188","188","温国利","_4","");
 

   userArray[userArray.length] = new User("189","189","刁世才","_4","");
 

   userArray[userArray.length] = new User("190","190","孙炳星","_4","");
 

   userArray[userArray.length] = new User("191","191","陈永文","_4","");
 

   userArray[userArray.length] = new User("192","192","钟剑兴","_4","");
 

   userArray[userArray.length] = new User("193","193","钟庆祥","_4","");
 

   userArray[userArray.length] = new User("137","137","邓小忠","_4","");
 

   userArray[userArray.length] = new User("197","197","陈战","_4","");
 

   userArray[userArray.length] = new User("198","198","陈彦佳","_4","");
 

   userArray[userArray.length] = new User("199","199","黄惠玲","_4","");
 

   userArray[userArray.length] = new User("200","200","朱燕玲","_4","");
 

   userArray[userArray.length] = new User("201","201","方丹华","_4","");
 

   userArray[userArray.length] = new User("202","202","张丹莉","_4","");
 

   userArray[userArray.length] = new User("203","203","潘海彪","_4","");
 

   userArray[userArray.length] = new User("204","204","聂瑛","_4","");
 

   userArray[userArray.length] = new User("205","205","刘鹏生","_4","");
 

   userArray[userArray.length] = new User("206","206","黎雅新","_4","");
 

   userArray[userArray.length] = new User("207","207","郭佩玲","_4","");
 

   userArray[userArray.length] = new User("211","211","屈云龙","_4","");
 

   userArray[userArray.length] = new User("212","212","何兆勇","_4","");
 

   userArray[userArray.length] = new User("213","213","阮俊","_4","");
 

</script>



<script language="JavaScript">
function usebm() {
	document.all("bmSelect").checked = true;
	document.all("zwSelect").checked = false;
	document.all("addressSelect").checked = false;
	document.all("bmSelectList").style.display="block"
	document.all("zwSelectList").style.display="none"
	document.all("addressSelectList").style.display="none"

}
function usezw() {
	document.all("bmSelect").checked = false;
	document.all("zwSelect").checked = true;
	document.all("addressSelect").checked = false;
	document.all("zwSelectList").style.display="block"
	document.all("bmSelectList").style.display="none"
	document.all("addressSelectList").style.display="none"
}
function useaddress() {
	document.all("addressSelect").checked = true;
	document.all("bmSelect").checked = false;
	document.all("zwSelect").checked = false;
	document.all("bmSelectList").style.display="none"
	document.all("zwSelectList").style.display="none"
	document.all("addressSelectList").style.display="block"
}
function window_onload() {
	 window.returnValue = 'cancel=?';

}

var returnObj=function(){
	this.value="";
	this.text="";
}

function unload() {
     if(window.returnValue != null) {
     } else {
         	var obj = new Object();
	 obj.id = '-1';
	 obj.name = ''
 	window.returnValue = obj;
     }
 }
 function doCancel(){
	 var obj = new Object();
	 obj.id = '-1';
	 obj.name = '';
 window.close();
 }
</script>

<script language="JavaScript">

function doOK(){
	var retObj = null;;
	var strRetValue = "";
	var strRetText = "";
	var retArr=[];
	var index=0;
	var hh=0;
	var isSingle="";
	var idlist1="";
	//for(var i=0;i<document.all.rightSelect.length;i++){
		retObj=new returnObj();
		//if(obj.children[i].tagName=="SELECT"){
		var opts=document.all.rightSelect.options;

		for(var j=0;j<opts.length;j++){
			idlist1+=opts[j].value+",";
			retObj.text+=opts[j].text+",";
			hh++;
		}
		if(idlist1!="") idlist1=idlist1.substring(0,idlist1.length-1);
		else
	{        alert("至少必须选择一个人员");
			return false;
	}
		if(retObj.text!="") retObj.text=retObj.text.substring(0,retObj.text.length-1);
		retArr[index++]=retObj;
	//}


	window.location.href="/backmanage/group/list.do?mhd=doSelectUser&idlist="+idlist1+"&fid="+document.all.fid.value;

}
</script>




<body class="bodybg" onload="javascript:usebm();" onunload="javascript:unload();">
<table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="where">
  <tr>
    <td>&nbsp;&nbsp; ※&nbsp;您的位置：我的桌面--&gt;后台管理--&gt;组织机构管理--&gt;部门人员管理</td>
  </tr>
</table>
<form action="" onsubmit="return false;">
<input type="hidden" name="fid" value="_4">
<input type="hidden" name="idlist" >
<table align="center" width="420" class="InputFrameMain" border="0">
   <tr>
   <td>
        <tr class="InputFrameLine">
          <td colspan=2 class=inputareacell> <table width=100% class=tableframe  border="0" cellpadding="0" cellspacing="0">

              <tr align=center >
                <td>
							  <fieldset  >
<legend class="text_red">可选人员</legend>
 				<table align="center"  class="InputFrameMain" border="0">
                    <select name="leftSelect" size="17" style="width: 150;height:254"  ondblclick="moveOneFrom('left')" multiple>

				  </select>
                    </table>

				</fieldset >
                <td valign=center width=50>
                    <table width="100%" border="0" cellpadding="0" cellspacing="2">


                    <tr align="center">
                      <td> <input name="selectAll" type="button" class="change" value=" > "  onclick="moveOneFrom('left')"/>
                      </td>
                    </tr>

					<tr align="center">
                      <td> <input name="selectAll" type="button" class="change" value=" >>" onclick="moveAllFrom('left')"/>
                      </td>
                    </tr>
                    <tr align="center">
                      <td> <input name="delAll" type="button" class="change" value="<< "  onclick="moveAllFrom('right')"/>
                      </td>
                    </tr>
                    <tr align="center">
                      <td> <input name="selectAll" type="button" class="change" value=" < "  onclick="moveOneFrom('right')"/>
                      </td>
                    </tr>
                  </table></td>

                <td>
				<fieldset>
				<legend class="text_green">已选人员</legend>
					<div id="selContainer" >
					<select name="rightSelect" id="receiver"  style="width: 150;height:250" size="10"  ondblclick="moveOneFrom('right')" multiple>

					</select><br>
					<div style="display:none">
					<span  class="f12"  style="width: 150;text-align:left">抄送人</span><br>
					<select  id="copysend" style="width: 150;height:70" size="10" onFocus="setCurrent(this)"   ondblclick="moveOneFrom('right')" multiple>
					</select><br>
					<span  class="f12"  style="width: 150;text-align:left">密送人</span><br>
					<select  id="whisper" style="width: 150;height:70" size="10" onFocus="setCurrent(this)"   ondblclick="moveOneFrom('right')" multiple>
					</select>
					</div>
					</div>

				</fieldset>
                 </td>

              </tr>
            </table></td>
        </tr>

        <tr class="InputFrameButtonLine">
          <td align="center" colspan=2 height="30">
		    <input  name="OK" type="button" value="确定" class="button_new"  onclick="doOK()">
            <input name="Cancel" type="button" value="返回" class="button_new"  onclick="history.go(-1)" />
          </td>
        </tr>
      </table>
</form>
<script>
initSelect("");
</script>

</body>




</html>


</body>
</html>