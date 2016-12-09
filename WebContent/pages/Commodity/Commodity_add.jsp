<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/js/themes/icon.css" />
	
<link href="<%=basePath%>/css/mycss/fileUpload.css" type="text/css"
	rel="stylesheet" />

<script type="text/javascript"
	src="<%=basePath%>/js/jquery-1.7.2.js"></script>
<script type="text/javascript"src="<%=basePath%>/js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='<%=basePath%>/js/outlook2.js'></script>
<script type="text/javascript" src='<%=basePath%>/js/myjs/admin.js'></script>


<script type="text/javascript" src="<%=basePath%>/js/myjs/zDrag.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/myjs/zDialog.js"></script>
<%-- <script type="text/javascript" src="<%=basePath%>/js/myjs/prototype.js" charset="utf-8"></script> --%>
<script type="text/javascript" src="<%=basePath%>/js/myjs/AjaxWrapper.js" charset="utf-8"></script>



<style>
	#comm_bg{
		width: 1000px ;
		height: 500px ;
		margin:20px auto ;
		
	}
	#comm_zhu{
		width: 800px ;
		margin: 0px auto;
	}
	.comm_text01{
		text-align: right;
	}
	#comm_zhu table tr{
		height: 27px;
		margin-top: 5px;
	}
	#comm_zhu table tr td,#comm_zhu table{
		border: 1px solid #FFEFD5;	
	}
	
	input {
		height: 27px;
	}
	
	#file_upload input,#file_upload{
		margin-top: 5px;
		cursor: pointer;
	}
	select,select option{
		cursor: pointer;
	}
	select{
		height: 25px;
	}
	
	div#readme {
	width: 100%;
	padding: 3px 0;
	background: #BAFB80;
	background-image: url("../images/info_32.png");
	background-repeat: no-repeat;
	text-align: center;
	font: 85%/1.45 "Lucida Sans Unicode", "Lucida Grande", Arial, sans-serif;
	font-size: medium;
	font-weight: bold;
	line-height: 25px;
	height: 25px;
	color: gray;
}

div#readme {
	width: 100%;
	padding: 3px 0;
	background: #BAFB80;
	background-image: url("../images/info_32.png");
	background-repeat: no-repeat;
	text-align: center;
	font: 85%/1.45 "Lucida Sans Unicode", "Lucida Grande", Arial, sans-serif;
	font-size: medium;
	font-weight: bold;
	line-height: 25px;
	height: 25px;
	color: gray;
	　　　　　
}

.imgstyle {
	margin-bottom: -8px;
}

.input_file {
	margin-left: -270px;
	filter: alpha(opacity = 0);
	opacity: 0;
}

.input_file2 {
	margin-left: -270px;
	filter: alpha(opacity = 0);
	opacity: 0;
}

.input_text {
	border: 1px solid #CDEE79;
	height: 24px;
	width: 140px;
}
	
	
</style>

<script type="text/javascript">
  var flag=1;
  function getFileSize(fileSize)
	{
		var num = new Number();
		var unit = '';
		
		if (fileSize > 1*1024*1024*1024){
			num = fileSize/1024/1024/1024;
			unit = "G"
		}
		else if (fileSize > 1*1024*1024){
			num = fileSize/1024/1024;
			unit = "M"			
		}
		else if (fileSize > 1*1024){
			num = fileSize/1024;
			unit = "K"
		}
		else{
			return fileSize;
		}
		
		return num.toFixed(2) + unit;
		
	}	
  function addRow()
  {
  
     if(flag>4)
     {
       Dialog.alert('<font size=2><b>一次最多上传５个文件!</b></font>');
       
       return;
     }
  
     var form=document.getElementById('tool');
     
     var text1 = document.createElement("input");
	 text1.size = "60";
	 text1.type = "text";
	 text1.name = "txt"+flag+1;
	 text1.id = "txt"+flag+1;
     text1.className='input_text';
     
     var btn1=  document.createElement("input");
     btn1.name='uploadfile'+flag+1;
     btn1.id='uploadfile'+flag+1;
     btn1.size=40;
     btn1.value='浏览...';
     btn1.className="uploadfile2";
     btn1.hidefocus='';
     
     var inputNode1 = document.createElement("input");
	 inputNode1.size = "30";
	 inputNode1.type = "file";
	 inputNode1.name = "file"+flag+1;
	 inputNode1.id = "file"+flag+1;
	 inputNode1.className='input_file';
	 
	 
     if(inputNode1.addEventListener)
	{
					inputNode1.addEventListener("change",changeValue(text1,inputNode1),false);
	}
	else if(inputNode1.attachEvent)
	{
				
					inputNode1.attachEvent("onchange", changeValue(text1,inputNode1)) ;
	}	
	
	 var inputNode3 = document.createElement("a");
	 inputNode3.href = "javascript:void(0);";
	 
	 
	 var img=document.createElement("img");
	 img.src='<%=basePath%>/images/delete.png';
	 img.width=28;
	 img.height=28;
	 img.border='0';
	 img.className='imgstyle';
	 img.alt='删除一行';
	 inputNode3.appendChild(img);
	 
	 if(inputNode3.addEventListener)
	{
					inputNode3.addEventListener("click",deleterow(form,text1,btn1,inputNode1,inputNode3),false);
	}
	else if(inputNode3.attachEvent)
	{
				
					inputNode3.attachEvent("onclick", deleterow(form,text1,btn1,inputNode1,inputNode3)) ;
	}
	 
	 form.appendChild(text1);
	 form.appendChild(btn1);
	 form.appendChild(inputNode1);
	 form.appendChild(inputNode3);
	 flag++;
	 
	 parent.addHeight();
	 
  }

  var changeValue=function changeValue(v1,v2)
  {
     return function()
     {
        v1.value=v2.value;
     }
  }
 function init()
  {
     var btn1=document.getElementById('uploadfile2');
     btn1.size=40;
     btn1.value='浏览...';
     btn1.className="uploadfile2";
     
  }
  var deleterow = function(form,text1,btn1,inputNode1,inputNode3){
				 return function(){
				    form.removeChild(text1);
      form.removeChild(btn1);
      form.removeChild(inputNode1);
      form.removeChild(inputNode3);
      flag--;
      parent.decreaseHeight();
	}
  }
  function closeWindow()
  {
     parent.closeWindow();
  }
</script>





<div id="comm_bg">

	<div id="comm_zhu">
		<!-- 商品 -->
		<!-- <form action="" id="comm_form"> -->
		<form id="fileUploadForm" name="fileUploadForm" action="./BackGroundService.action" 
		enctype="multipart/form-data" method="post">
			<table  cellspacing="0" >
				<tr>
					<td colspan="4">添加商品</td>
				</tr>
				
				<tr>
					<td class="comm_text01">
						<label>商品名称：</label>
						
					</td>
					<td>
						
						<input name="" placeholder="请输入商品名称" />
					</td>
					
					<td class="comm_text01">
						<label>商品折扣:</label>
					</td>
					
					<td>
						<input name="" placeholder="请输入商品折扣" /> <label style="color:#CC99CC">折(如:9.99)</label>
					</td>
					
				</tr>
					
				<tr>
					<td class="comm_text01">
						<label>是否存在活动:</label>
					</td>
					
					<td>
						
							<input type="radio" id="yesH" name="pisExist" value="1" > <label for="yesH" style="position: relative; top:-8px;">是</label>
							<input type="radio" id="noH" name="pisExist" value="0" checked="checked">  <label for="noH" style="position: relative; top:-8px;">否</label>
						
					</td>
					
					<td class="comm_text01">
						<label>商品类型:</label>
					</td>
					<td>
						<select name="" id="commType">
							<option>请选择</option>
						</select>
					</td>
					
				</tr>
					
					
				<tr>
					<td class="comm_text01">
						<label>商品销售价:</label>
					</td>
					<td>
						<input name="" placeholder="请输入实时商品销售价"/> <label style="font-weight: 800;color: #CC99CC;">￥</label>
					</td>
					
					<td class="comm_text01">
						<label>商品进价:</label>
					</td>
					<td>
						<input name="" placeholder="请输入商品进价"/>
					</td>
					
				</tr>	
				
				<tr>
					<td class="comm_text01">
						<label>商品品牌:</label>
					</td>
					<td>
						<select name="" id="commBrand">
							<option>请选择</option>
						</select>
					</td>
					
					<td class="comm_text01">
						<label>是否包邮:</label>
					</td>
					<td>
						<input type="radio" name="pPinkage" id="yesE" value="1" > <label for="yesE" style="position: relative; top:-8px;">是</label>
						<input type="radio" name="pPinkage" id="noE" value="0" checked="checked"> <label for="noE" style="position: relative; top:-8px;">否</label>
					</td>
					
				</tr>	
				
				<tr>
					<td class="comm_text01">
						<label>库存数量:</label>
					</td>
					<td>
						<input name="" placeholder="请输入库存数量"/>
					</td>
					
					<td class="comm_text01">
						<label>商品图片:</label>
					</td>
					
					<td  id="file_upload">
						<input  type="file" name=""/>
					</td>
				</tr>
				
				<!-- 商品描述 -->
		
		<form action="" id="comm_info">
			
				<tr>
					<td colspan="4" id="comm_info_1">商品描述</td>
				</tr>
				<tr>
					<td class="comm_text01">
						<label>级别:</label>
					</td>
					<td>
						<select name="" >
							<option>请选择</option>
							<option value="VDT">日常餐酒</option>
							<option value="VDP">地区餐酒</option>
							<option value="VDQS">优良地区餐酒</option>
							<option value="AOC">法定产区葡萄酒</option>
							
						</select>
					</td>
					
					
					<td class="comm_text01">
						<label>口感:</label>
					</td>
					<td>
						<select name="" >
							<option>请选择</option>
							<option value="柔和">柔和</option>
							<option value="平衡">平衡</option>
							<option value="浓厚">浓厚</option>
							
						</select>
					</td>
					
				</tr>
				
				
				<tr>
					<td class="comm_text01">
						<label>建议醒酒时间:</label>
					</td>
					<td>
						<input name="" placeholder="请输入建议醒酒时间"><label style="color:#CC99CC"> 分钟</label>
					</td>
						
					<td class="comm_text01">
						<label>含量:</label>
					</td>
					
					<td>
						<select name="" >
							<option>请选择</option>
							<option value="500ml">500ml</option>
							<option value="750ml">750ml</option>
							<option value="1000ml">1000ml</option>
						</select>
					</td>
					
				</tr>
				<tr>
					<td class="comm_text01">
						<label>酒精度:</label>
					</td>
					<td>
						<input name="" placeholder="请输入酒精度数">
					</td>
				</tr>
				<tr>
					<td class="comm_text01"><label>色泽:</label></td>
					<td>
						<select name="" >
							<option>请选择</option>
							<option value="凡宝石红">凡宝石红</option>
							<option value="深红">深红</option>
							<option value="紫红">紫红</option>
							<option value="石榴红">石榴红</option>
							<option value="棕红色">棕红色</option>
						</select>
					</td>
					
					<td class="comm_text01"><label>品种:</label></td>
					<td>
						<select name="" >
							<option>请选择</option>
							<option value="赤霞珠">赤霞珠</option>
							<option value="品丽珠">品丽珠</option>
							<option value="蛇龙珠">蛇龙珠</option>
							<option value="佳利酿">佳利酿</option>
							<option value="佳美">佳美</option>
							<option value="歌海娜">歌海娜</option>
							<option value="梅洛">梅洛</option>
							<option value="味尔多">味尔多</option>
							<option value="黑比诺">黑比诺</option>
							<option value="宝石解百纳">宝石解百纳</option>
							<option value="桑娇维塞">桑娇维塞</option>
							<option value="西拉">西拉</option>
							<option value="仙粉黛">仙粉黛</option>
							<option value="玫瑰香">玫瑰香</option>
							<option value="晚红蜜">晚红蜜</option>
						</select>
						
					</td>
					
				</tr>
				<tr>
					<td class="comm_text01"><label>年份:</label></td>
					<td>
						<input name="" placeholder="请输入年份"><label style="color:#CC99CC">年</label>
					</td>
					
					<td class="comm_text01"><label>产区:</label></td>
					<td>
						<select name="" >
							<option>请选择</option>
							<option value="法国波尔多产区">法国波尔多产区</option>
							<option value="国勃艮第产区">国勃艮第产区</option>
							<option value="法国香槟产">法国香槟产</option>
							<option value="法国西南产区">法国西南产区</option>
							<option value="法国阿尔萨斯产区">法国阿尔萨斯产区</option>
							<option value="法国普罗旺斯产区">法国普罗旺斯产区</option>
						</select>
					</td>
					
				</tr>
				
				<tr>
				
					<td class="comm_text01"><label>图片详细描述	:</label></td>
					<td style="width: 270px;">
						<a  class="easyui-linkbutton btn_add"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">添加</a>
					</td>
				</tr>
				<tr>
				
					<td class="comm_text01">图片介绍（大小）:</td>
					<td style="width: 270px;">
						 <a  class="easyui-linkbutton btn_add"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">添加</a>
					</td>
				</tr>
		</form>
			</table>
		</form>
	</div>
	
</div>
<!-- <div id="win" class="easyui-window" title="My Window" style="width:600px;height:400px"   
        data-options="iconCls:'icon-save',modal:true">   
    Window Content    
</div>  -->
	

<div id="dd">
	<div id="upload_img" style="display: none;">
		<div id="uptext2" style="margin:30px auto 0px; width:300px ; margin-left: 80px;font-size: 12px; color: #CCCCFF; ">每张图片不能超过10M，最多只能上传5张图片。</div>
		
		<div id="controlPanel" style="width: 230px; margin-top: 5px;">
	
			<div id="uploadFileUrl"></div>
			<form id="fileUploadForm" name="fileUploadForm"
				action="./BackGroundService.action" enctype="multipart/form-data"
				method="post">
				<input class="input_text" type="text" id="txt1" name="txt1" size="60" /><input
					type="button" name="uploadfile2" id="uploadfile2" class="uploadfile2"
					value="浏览..." style="padding-left: 3px;" /><input class="input_file input_file2"
					size="30" type="file" name="file1" id="file1" hidefocus
					onchange="txt1.value=this.value" /><a href="javascript:void(0);"
					onclick="addRow();"><img src="<%=basePath%>/images/add.png"
					width="28" height="28" border="0" alt="添加一行" class="imgstyle" /></a><br>
				<div id="tool"></div>
				<br> <input type="submit" name="uploadButton" id="uploadButton"
					value="开始上传" class="up_btn" /> <input type="button"
					name="cancelUploadButton" onclick="closeWindow();"
					id="cancelUploadButton" value="取消上传" class="up_btn" /><br>
			</form>
	
			<div id="progressBar">
				<div id="theMeter">
					<div id="progressBarText"></div>
					<!-- <div id="totalProgressBarBox">
						<div id="totalProgressBarBoxContent"></div>
					</div> -->
				</div>
				<div id="progressStatusText"></div>
			</div>
	
		</div> 
	</div>
</div>  
 

<script type="text/javascript">

 $("body").on('click', '.btn_add', function(){
	 //display: block;
 	 $("#upload_img").css("display","block");
	  $('#dd').dialog({    
		    title: '上传图片',    
		    width:420,    
		    height:230,    
		    closed: false,    
		    cache: false,    
		    //href: '/* ../../upload.jsp */',    
		    modal: true   
		}); 
	 
}); 

</script>
<script>
Element.hide('progressBar');
Event.observe('fileUploadForm','submit',startProgress,false);
Event.observe('cancelUploadButton','click',cancelProgress,false);

//刷新上传状态
function refreshUploadStatus(){
	var ajaxW = new AjaxWrapper(false);
	ajaxW.putRequest(
		'<%=basePath%>/BackGroundService',
		'uploadStatus=',
		function(responseText){
				eval("uploadInfo = " + responseText);
				var progressPercent = Math.ceil(
					(uploadInfo.ReadTotalSize) / uploadInfo.UploadTotalSize * 100);
	
				if(uploadInfo.UploadFlag=='http'){
				   flag='(HTTP状态)';
				   
				}else
				{
				   flag='(FTP状态)';
				}
				
				$('progressBarText').innerHTML=flag;
				$('progressBarText').innerHTML += ' 上传处理进度: '+progressPercent+'% 【'+
					getFileSize(uploadInfo.ReadTotalSize)+'/'+getFileSize(uploadInfo.UploadTotalSize) +
					'】 正在处理第'+uploadInfo.CurrentUploadFileNum+'个文件'+
					' 耗时: '+(uploadInfo.ProcessRunningTime-uploadInfo.ProcessStartTime)+' ms';
					
				$('progressStatusText').innerHTML=' 反馈状态: '+uploadInfo.Status;
				$('totalProgressBarBoxContent').style.width = parseInt(progressPercent * 3.5) + 'px';
		}
	);
}
//上传处理
function startProgress(){
    parent.addProgressHeight();
	Element.show('progressBar');
    $('progressBarText').innerHTML = ' 上传处理进度: 0%';
    $('progressStatusText').innerHTML=' 反馈状态:';
    $('uploadButton').disabled = true;
    $('cancelUploadButton').disabled = true;
    var periodicalExe=new PeriodicalExecuter(refreshUploadStatus,0.5);
    return true;
}
//取消上传处理
function cancelProgress(){
	$('cancelUploadButton').disabled = true;
	var ajaxW = new AjaxWrapper(false);
	ajaxW.putRequest(
		'<%=basePath%>/BackGroundService',
		'cancelUpload=true',
		//因为form的提交，这可能不会执行
		function(responseText){
			eval("uploadInfo = " + responseText);
			$('progressStatusText').innerHTML=' 反馈状态: '+uploadInfo.status;
			if (msgInfo.cancel=='true'){
				alert('删除成功!');
				window.location.reload();
			};
		}
	);
}
</script>

<%-- <%
	String msg = (String) request.getAttribute("msg");
	if (msg != null && msg.length() > 0) {
%>
<script type="text/javascript">
     Dialog.alert('<%=msg%>');
	parent.resizeHeight();
</script>

<%
	}
%> --%>
