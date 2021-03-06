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
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>  
<script type="text/javascript"
	src="<%=basePath%>/js/jquery-1.7.2.js"></script>
<script type="text/javascript"src="<%=basePath%>/js/jquery.easyui.min.1.2.2.js"></script>
<script type="text/javascript" src='<%=basePath%>/js/myjs/admin.js'></script>




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
	
	.upText{
		font-size: 12px ;
		font-weight: 800 ;
	}
	.pimg{
	
		cursor:pointer
	}
	.upTextImg{
		font-size: 12px ;
		font-weight: 800 ;
	}
	.pimgImg{
	
		cursor:pointer
	}
	.clos{
		cursor:pointer;
		position: relative;
		top:-10px;
	}
	.clos:HOVER {
		color:#FF0000;
	}
#pimgDivImg a{
	margin-top: 10px ;
}	
	
.a-upload {
    padding: 4px 10px;
    height: 20px;
    line-height: 20px;
    position: relative;
    cursor: pointer;
    color: #888;
    background: #fafafa;
    border: 1px solid #ddd;
    border-radius: 4px;
    overflow: hidden;
    display: inline-block;
    *display: inline;
    *zoom: 1;
    
}

.a-upload  input {
    position: absolute;
    font-size: 100px;
    right: 0;
    top: 0;
    opacity: 0;
    filter: alpha(opacity=0);
    cursor: pointer
   
    
}

.a-upload:hover {
    color: #444;
    background: #eee;
    border-color: #ccc;
    text-decoration: none
}
	
	
	
</style>

<div id="comm_bg">

	<div id="comm_zhu">
		<!-- 商品 -->
		<!-- <form action="" id="comm_form"> -->
		<form id="fileUploadForm" name="fileUploadForm" 
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
						
						<input name="pname" placeholder="请输入商品名称" />
					</td>
					
					<td class="comm_text01">
						<label>商品折扣:</label>
					</td>
					
					<td>
						<input name="pdis" placeholder="请输入商品折扣" /> <label style="color:#CC99CC">折(如:9.99)</label>
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
						<label>国家:</label>
					</td>
					<td>
						<select name="ptype" id="commType">
							<option>请选择</option>
						</select>
					</td>
					
				</tr>
					
					
				<tr>
					<td class="comm_text01">
						<label>商品销售价:</label>
					</td>
					<td>
						<input name="pSelingPrice" placeholder="请输入实时商品销售价"/> <label style="font-weight: 800;color: #CC99CC;">￥</label>
					</td>
					
					<td class="comm_text01">
						<label>商品进价:</label>
					</td>
					<td>
						<input name="pprice" placeholder="请输入商品进价"/>
					</td>
					
				</tr>	
				
				<tr>
					<td class="comm_text01">
						<label>商品品牌:</label>
					</td>
					<td>
						<select name="pbrand" id="commBrand">
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
						<input name="pnumber" placeholder="请输入库存数量"/>
					</td>
					
					<td class="comm_text01">商品图片:</td>
					<td style="width: 270px;" id="btn_addImg">
						 <a  class="easyui-linkbutton btn_addImg"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">选择图片</a> 
					</td>
				</tr>
				
				
				<tr>
					<td class="comm_text01">
						<label>商品状态:</label>
					</td>
					<td>
							<input type="radio" id="yesH1" name="pstate" value="上架" checked="checked"> <label for="yesH1" style="position: relative; top:-8px;">上架</label>
							<input type="radio" id="yesH2" name="pstate" value="下架" >  <label for="yesH2" style="position: relative; top:-8px;">下架</label>
							<input type="radio" id="yesH3" name="pstate" value="无货" >  <label for="yesH3" style="position: relative; top:-8px;">无货</label>
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
						<select name="pdlevel" >
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
						<select name="pdtaste" >
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
						<input name="pdsoberUp" placeholder="请输入建议醒酒时间"><label style="color:#CC99CC"> 分钟</label>
					</td>
						
					<td class="comm_text01">
						<label>含量:</label>
					</td>
					
					<td>
						<select name="pdvol" >
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
						<input name="pdspirit" placeholder="请输入酒精度数">
					</td>
				</tr>
				<tr>
					<td class="comm_text01"><label>色泽:</label></td>
					<td>
						<select name="colorur" >
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
						<select name="pdbreed" >
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
						<input name="pdyear" placeholder="请输入年份"><label style="color:#CC99CC"> 年</label>
					</td>
					
					<td class="comm_text01"><label>产区:</label></td>
					<td>
						<select name="pdregion" >
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
					<td style="width: 270px;" id="btn_add">
						<a  class="easyui-linkbutton btn_add"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">选择图片</a> 
					</td>
				</tr>
				
				
				
				<tr>
					<td colspan="4" align="center">
						<a  class="easyui-linkbutton" id="addComm"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">提交</a>
							<a  class="easyui-linkbutton" id="exitComm"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">退出</a>
					</td>
				</tr>
		</form>
			</table>
		</form>
	</div>
	<!-- 添加商品图片 -->
	<div id="dd">

		<div id = 'imgs' style="display: none;">
			
			<div style="color:#CCCCFF; font-size: 12px;width: 300px;margin: 20px auto 10px;">图片不能大于20M，并且图片格式只能(jsp,png)内.</div>
			<div style="width: 200px;margin: 0px auto ">
				<form id="pimg" action="<%=basePath%>/commodityAction/addPrductImg" method="post" enctype="multipart/form-data">
					
					<div class='pimgDiv'>
					
						<!-- <label class='upText'>图片(1): </label><input type="file" name="ufile" class='pimg'> -->
						<a href="javascript:;" class="a-upload" style="margin-bottom: 3px;">
					   	 	<label class='upText'>图片(1): </label> <input type="file" name="ufile" class='pimg'>点击这里选择图片
						</a>
						
					</div>
 			
				</form>
				
			</div>
			
			
		</div>
	</div>  
	
	<!-- 添加描述图片 -->
	<div id="ddImg">

		<div id = 'imgsimg' style="display: none;">
			
			<div style="color:#CCCCFF; font-size: 12px;width: 300px;margin: 20px auto 10px;">图片不能大于20M，并且图片格式只能(jsp,png)内.</div>
			<div style="width: 200px;margin: 0px auto ">
				<form id="pimgImg" method="post" enctype="multipart/form-data">
					
					<div class='pimgDivImg'>
					
						<!-- <input type="file" name="ufile" class='pimgImg'> -->
						<a href="javascript:;" class="a-upload" style="margin-bottom: 3px;">
					   	 	<label class='upText'>图片(1): </label> <input type="file" name="ufile" class='pimgImg'>点击这里选择图片
						</a>
					
				
					</div>
 			
				</form>
				
			</div>
			
			
		</div>
	</div>  
	
</div>



<script type="text/javascript">

$("body").on("click",".btn_add,#newAdd_1",function(){
	

	$("#imgs").css("display","block");
	$('#dd').dialog({    
	    title: '选择图片',    
	    width: 400,    
	    height: 325,    
	    closed: false,    
	    cache: false,    
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:function(){
				var form = new FormData($("#pimg")[0])
			
				$.ajax({
					url:"<%=basePath%>/commodityAction/addPrductImg?toImg=0",
					data: form ,
					type: 'POST', 
					async:false,
					cache:false,
					contentType: false,  
			         processData: false,  
			         success: function (data) {  
			             if(data==0){
			            	 $.messager.alert('恭喜','添加商品描述图片成功！',"info"); 
			            	 $("#btn_add").empty();
			            	 $("#btn_add").append(" <a style=' font-size: 10px;color:#CC99FF;'>如果选择有误，请<a href='#' id='newAdd_1' style=' font-size: 10px;'>重新选择</a></a>");
			            	 $('#dd').window('close');  // close a window  
			            	 
			             }else if(data == -1){
			            	 $.messager.alert('抱歉','添加商品描述图片失败。',"error");  
			             }else if(data == 1){
			            	 $.messager.alert('抱歉','图片不能大于20M,请重新选择。',"error");  
			             }
			        	 
			        	 
			         },  
			         error: function (returndata) {  
			        	 $.messager.alert('抱歉','添加失败，请检查网络。',"error");  
			        
			         }  
					
				});
				
				
				
			}
		},{
			text:'关闭',
			handler:function(){
				$('#dd').window('close');  // close a window  
				
			}
		}],
		toolbar:[{
			text:'添加一张图片',
			iconCls:'icon-edit',
			handler:function(){
				var s = $(".pimgDiv").length;
				//alert(s)
				if((s+1)>5){
					$.messager.alert('警告','添加失败，最多5张图片',"error");    
				}else{
					var $inp = "<div class='pimgDiv'><a href='javascript:;' class='a-upload' style='margin-bottom: 3px;'><label class='upText'>图片("+(s+1)+"): </label> <input type='file' name='ufile' class='pimg'>点击这里选择图片</a> <span class='clos'>&#10006;</span></div>" ; 
					$("#pimg").append($inp);
				}
			}
		},{
			text:'帮助',
			iconCls:'icon-help',
			handler:function(){alert('help')}
		}]
	}); 
});
/* $("body").on("click",".btn_addImg,#newAdd",function(){
	
}); */
$("body").on("click",".btn_addImg,#newAdd",function(){
	$("#imgsimg").css("display","block");
	$('#ddImg').dialog({    
	    title: '选择图片',    
	    width: 400,    
	    height: 310,    
	    closed: false,    
	    cache: false,    
	    modal: true,
	    buttons:[{
			text:'保存',
			handler:function(){
				
				var form = new FormData($("#pimgImg")[0])
				$.ajax({
					url:"<%=basePath%>/commodityAction/addPrductImg?toImg=1",
					data: form ,
					type: 'POST', 
					async:false,
					cache:false,
					contentType: false,  
			         processData: false,  
			         success: function (data) {  
			        	 if(data==0){
			            	 $.messager.alert('恭喜','添加商品图片成功！',"info");  
			            	 $("#btn_addImg").empty();
			            	 $("#btn_addImg").append(" <a style=' font-size: 10px;color:#CC99FF;'>如果选择有误，请<a href='#' id='newAdd' style=' font-size: 10px;'>重新选择</a></a>");
			            	 $('#ddImg').window('close');  // close a window  
			            	 
			             }else if(data == -1){
			            	 $.messager.alert('抱歉','添加商品图片失败。',"error");  
			             }else if(data == 1){
			            	 $.messager.alert('抱歉','商品图片不能大于20M，请重新选择。',"error");  
			             }
			         },  
			         error: function (returndata) {  
			        	 $.messager.alert('抱歉','添加失败，请检查网络。',"error");  
			         }  
				});
			}
		},{
			text:'关闭',
			handler:function(){
				$('#dd').window('close');  // close a window  
			}
		}],
		toolbar:[{
			text:'添加一张图片',
			iconCls:'icon-edit',
			handler:function(){
				var s = $(".pimgDivImg").length;
				//alert(s)
				if((s+1)>5){
					$.messager.alert('警告','添加失败，最多5张图片',"error");    
				}else{
					var $inp = "<div class='pimgDivImg'><a href='javascript:;' class='a-upload'><label class='upText'>图片("+(s+1)+"): </label> <input type='file' name='ufile' class='pimgImg'>点击这里选择图片</a> <span class='clos'>&#10006;</span></div>" ; 
					$("#pimgImg").append($inp);
				}
			}
		},{
			text:'帮助',
			iconCls:'icon-help',
			handler:function(){alert('help')}
		}]
	}); 
});
//$(this).parent().parent().find(":nth-child(2)").html()

$("body").on("click",".clos",function(){
	//删除指定元素
	$(this).parent().remove();
	
});

/* 
	提交数据
*/
$("#addComm").click(function(){
	var params = $("#fileUploadForm").serialize();
	params = decodeURIComponent(params,true);
	
	/* $.ajax({
		
		url:"../../commodityAction/addCommod",
		data: params ,
		type: 'POST', 
        success: function (data) { 
        	alert(data)
        	 //$.messager.alert('恭喜','添加商品成功！',"info");  
         }
	});  */
	$.messager.defaults = { ok: "确定", cancel: "取消" };  
	$.messager.confirm('确认','您确认想要提交吗?',function(r){  
		
	    if (r){    
	    	$.ajax({
	    		url:"../../commodityAction/addCommod",
	    		data: params ,
	    		type: 'POST', 
	            success: function (data) { 
	            	if("true"==data){
	            		$.messager.alert('恭喜','添加商品成功！',"info"); 
	            	}else{
	            		$.messager.alert('抱歉','添加商品失败！',"error"); 
	            	}
	            	  
	             }
	    	}); 
	    }     
	}); 
});

/*
 * 生成国家
 */
 
 $.post("../../countryAction/findAllCountry","",function(data){
	 //commType
	 $.each(data,function(i,o){
		 
		$op = "<option value='"+o.ptname+"'>"+o.ptname+"</option>"; 
		 $("#commType").append($op);
	 });
	 
	 
 });
/**
 * 生成商品类型
 
 */
 
 $.post("../../brandAction/findAllBrand","",function(data){
	 //commType
	 $.each(data,function(i,o){
		 
		$op = "<option value='"+o.brname+"'>"+o.brname+"</option>"; 
		 $("#commBrand").append($op);
	 });
	 
	 
 });
 
</script>

