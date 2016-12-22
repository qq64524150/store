<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="<%=basePath%>/themes/default/easyui.css"
	type="text/css"></link>
<link rel="stylesheet" href="<%=basePath%>/themes/icon.css" type="text/css"></link>

<!-- 引入js文件，有顺序限制 -->
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/easyui/locale/easyui-lang-zh_CN.js" ></script>	

<title>Insert title here</title>

<style>
.button {
	display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 16px/100% 'Microsoft yahei',Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em; 
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
	text-decoration: none;
	
}
.button:active {
	position: relative;
	top: 1px;
}

.medium {
	font-size: 12px;
	padding: .4em 1.5em .42em;
}
/* white */
.white {
	color: #606060;
	border: solid 1px #b7b7b7;
	background: #fff;
	background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#ededed));
	background: -moz-linear-gradient(top,  #fff,  #ededed);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ededed');
}
.white:hover {
	background: #ededed;
	background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#dcdcdc));
	background: -moz-linear-gradient(top,  #fff,  #dcdcdc);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#dcdcdc');
}
.white:active {
	color: #999;
	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#fff));
	background: -moz-linear-gradient(top,  #ededed,  #fff);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#ffffff');
}
/* blue */
.blue {
	color: #d9eef7;
	border: solid 1px #0076a3;
	background: #0095cd;
	background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
	background: -moz-linear-gradient(top,  #00adee,  #0078a5);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#00adee', endColorstr='#0078a5');
}
.blue:hover {
	background: #007ead;
	background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
	background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#0095cc', endColorstr='#00678e');
}
.blue:active {
	color: #80bed6;
	background: -webkit-gradient(linear, left top, left bottom, from(#0078a5), to(#00adee));
	background: -moz-linear-gradient(top,  #0078a5,  #00adee);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#0078a5', endColorstr='#00adee');
}


/*uploadImg*/

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
.clos2{
	position: relative;
	top:-10px;
	color: #00FF00;
	font-weight: 700;
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


.comm_text01{
	text-align: right;
}
#table_Comm{
	margin:10px auto 20px;
	width: 500px;
	font-size:14px;
	height: 290px;
}

</style>


</head>
<body style="margin: 0px;padding: 0px;">
	<table id='comm' width="100%;" border="0"></table>
	
	<div id="tb" style="padding:5px;height:auto">
		<!-- <a href="#" class="button white medium">Medium</a>  -->
		<div style="margin-bottom:5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" onclick="obj.add();"
			plain="true">添加</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" onclick="obj.edit();"
			plain="true">修改</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" onclick="obj.remove();"
			plain="true">删除</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-save"
			plain="true" style="display:none;" id="save" onclick="obj.save();">保存
			</a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-redo"
			plain="true" style="display:none;" id="redo" onclick="obj.redo();">取消编辑</a>
		</div>
		<div style="padding:0 0 0 7px;">
			查 询 名 称 ： <input class="textbox" name="pname"
			style="width:110px">
			查 询 品 牌 ： <input id="cc" name="pbrand" value="" >  
			国 家 ： <input id="ccgj" name="ptype" value="" >
			时 间 从 ： <input class="easyui-datebox" name="date_from" editable ='false'
			style="width:110px">
			到 ： <input class="easyui-datebox" name="date_to" editable ='false'
			style="width:110px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search"
			onclick="obj.search();">查询</a>
		</div>
	</div>
	
	<div id="mm" class="easyui-menu" >   
    <div>New</div>   
    <div>   
        <span>Open</span>   
        <div style="width:150px;">   
            <div><b>Word</b></div>   
            <div>Excel</div>   
            <div>PowerPoint</div>   
        </div>   
    </div>   
    <div data-options="iconCls:'icon-save'">Save</div>   
    <div class="menu-sep"></div>   
    <div>Exit</div>   
</div>  
	
	
	<!-- 添加商品描述图片 -->
	<div id="ddImg">

		<div id = 'imgsimg' style="display: none;">
			
			<div style="color:#CCCCFF; font-size: 12px;width: 300px;margin: 20px auto 10px;">图片不能大于20M，并且图片格式只能(jsp,png)内.</div>
			<div style="width: 200px;margin: 0px auto ">
				<form id="pimgImg" method="post" enctype="multipart/form-data">
					
					<div class='pimgDivImg'>
					
						<!-- <input type="file" name="ufile" class='pimgImg'> -->
						<a href="javascript:;" class="a-upload" style="margin-bottom: 3px;">
					   	 	<label class='upText'>图片(1): </label> <input type="file" name="ufile" class='pimgImg' id='fileImg1'>点击这里选择图片
						</a>
						<span class='clos' id='pimgImg1'></span></div>
						
					</div>
				</form>
			</div>
		</div>
	</div>  
	<!-- 添加商品图片 -->
	<div id="dd">

		<div id = 'imgs' style="display: none;">
			
			<div style="color:#CCCCFF; font-size: 12px;width: 300px;margin: 20px auto 10px;">图片不能大于20M，并且图片格式只能(jsp,png)内.</div>
			<div style="width: 200px;margin: 0px auto ">
				<form id="pimg" method="post" enctype="multipart/form-data">
					
					<div class='pimgDiv'>
					
						<!-- <input type="file" name="ufile" class='pimgImg'> -->
						<a href="javascript:;" class="a-upload" >
					   	 	<label class='upText'>图片(1): </label> <input type="file" name="ufile" class='pimg' id='file1'>点击这里选择图片 
						</a>
						<span class='clos' id='clos1'></span>
					</div>
					
				</form>
			</div>
		</div>
	</div>  
	
	<div id="winComm">
		<form id="fileUploadCommForm" name="fileUploadCommForm" style="display: none" 
				enctype="multipart/form-data" method="post">
			<table id='table_Comm'>
				<tr>
					<td class="comm_text01">
						<!-- 这是商品id -->
						<input name="pno" type="hidden" id='pno'/>
						<!-- 这是商品描述id -->
						<input name="pdno" type="hidden" id='pnoMiao'/>
						<!-- 这是描述图片 -->
						<input name="pdimagesDepict" type="hidden" id='pdimagesDepict'/>
						<!-- 这是商品图片 -->
						<input name="pimagesReferral" type="hidden" id='pimagesReferral'/>
						<label>级别:</label>
					</td>
					<td>
						<select name="pdlevel" >
							<option value="请选择">请选择</option>
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
							<option value="请选择">请选择</option>
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
							<option value="请选择">请选择</option>
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
							<option value="请选择">请选择</option>
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
							<option value="请选择">请选择</option>
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
						<select name="pdregion" id='pdregion'>
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
					
					<td class="comm_text01">商品图片:</td>
					<td style="" id="btn_addCommImg">
						 <a  class="easyui-linkbutton btn_addImg"
							data-options="iconCls:'icon-add'" data-toggle="modal" onclick="btu_add(1)"
							data-target="#myModal">选择图片</a> 
					</td>
					
					<td class="comm_text01"><label>详细描述图:</label></td>
					<td style="" id="btn_add">
						<a  class="easyui-linkbutton btn_add"
							data-options="iconCls:'icon-add'" data-toggle="modal" onclick="btu_add(0)"
							data-target="#myModal">选择图片</a> 
					</td>
					
					
				</tr>
				
				<!-- <tr>
					<td colspan="4" align="center">
						<a  class="easyui-linkbutton" id="addComm"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">提交</a>
							<a  class="easyui-linkbutton" id="exitComm"
							data-options="iconCls:'icon-add'" data-toggle="modal"
							data-target="#myModal">退出</a>
					</td>
				</tr> -->
				
		</table>
		</form>
	</div>  
	
	
</body>
</html>
<script type="text/javascript">

/* var cardview = $.extend({}, $.fn.datagrid.defaults.view, {
    renderRow: function (target, fields, frozen, rowIndex, rowData) {
    	console.log(fields);
    	console.log(rowData);
    }
}); */

	
	

	$(function(){
		/* 商品状态 */
		var pipingLevel = [{"value":"上架","text":"上架"},{"value":"下架","text":"下架"},{"value":"无货","text":"无货"}];//json格式 
		/* 是否存在活动 */
		var pisExist = [{"value":"0","text":"否"},{"value":"1","text":"是"}];//json格式 
		/* 是否包邮 */
		var pPinkage = [{"value":"1","text":"是"},{"value":"0","text":"否"}];//json格式
		
		
		obj = {
			editRow : undefined ,
			search : function(){
				
				$("#comm").datagrid('load',{
					
					pname : $.trim($('input[name="pname"]').val()),
					date_from : $.trim($('input[name="date_from"]').val()),
					date_to : $.trim($('input[name="date_to"]').val()),
				/* 	ptype : $.trim($('input[name="ptype"]').val()),
					pbrand : $.trim($('input[name="pbrand"]').val()), */
					
				});
				
			},
			
			
			//添加
			add : function(){
				$('#save,#redo').show();  //显示保持，取消
				if(this.editRow==undefined){
						
					$("#comm").datagrid('insertRow',{
						index:0,
						row:{
							
							
						},
					});
					//设置第一行为编辑状态
					$("#comm").datagrid('beginEdit',0);
					this.editRow = 0 ;
				}
			},
			
			//保存
			save :function(){
				/* this.editRow = undefined;
				//将新增的一行设置为结束编辑状态
				
				$('#save,#redo').hide(); */
				$('#comm').datagrid('endEdit', this.editRow);
			},
			//取消
			redo : function(){
				$('#save,#redo').hide();
				this.editRow = undefined;
				$('#comm').datagrid('rejectChanges');
				
			},
			
			
			//修改
			edit : function(){
				//获取选中的行
				var rows = $('#comm').datagrid('getSelections'); 
				//进行判断
				if(rows.length == 1){
					if(this.editRow!=undefined){
						$('#comm').datagrid('endEdit', this.editRow);
						
					}
					if(this.editRow == undefined){
					
						var Index = $('#comm').datagrid('getRowIndex',rows[0]);
						$('#save,#redo').show();
						
						$('#comm').datagrid('beginEdit', Index);
						this.editRow = Index ;
						//取消选中
						$('#comm').datagrid('unselectRow',Index);
					}
					
				}else{
					$.messager.alert('警告','修改选择一行！不能不选择。',"warning"); 
				}
				
			},
			
			
			//删除
			remove : function(){
				//获取选中行
				var rows = $('#comm').datagrid('getSelections'); 
				if(rows.length>0){
					
					$.messager.defaults = { ok: "确定", cancel: "取消" };  
					$.messager.confirm('确认','您确认想要删除吗?',function(r){  
						
						if(r){
							var pnos = [] ;
							for(i = 0; i < rows.length; i++){
								pnos.push("'"+rows[i].pno+"'");
							}
							//console.log(pnos.join(','));
							
							$.ajax({
								url:"<%=basePath%>/commodityAction/dateleProduct",
								type:"post",
								data:{
									pno:pnos.join(','),
								},
								beforeSend:function() {
									$('#comm').datagrid('loading');  //显示加载
									
								},
								success:function(data){
									
									if($.trim(data)!="0"){
										
										$('#comm').datagrid('loaded'); //隐藏加载
										$('#comm').datagrid('load');   //刷新当前
										$('#comm').datagrid('unselectAll');   //取消所有当前页中的所有行。
										$.messager.show({
											title:'提示',
											msg: data + '条商品信息删除成功',
											timeout:3000,
											showType:'slide'
										});
 
									}
								}
								
							});
						}
					});
				}else{
					$.messager.alert('提示','请选择要删除的信息。',"info"); 
				}
			},
			
			
		};
		
		
		
		$("#comm").datagrid({
			
			url:'<%=basePath%>commodityAction/findAllProductPageBean',
			title:'商品列表',
			iconCls : 'icon-search', //设置图标
			striped : true ,  //设置斑马线样式
			rownumbers : true ,		//设置 true， 显示一个行号。 默认为 false
			//singleSelect : true ,  //设置 true， 只能选定一行。 默认为 false。
			fitColumns : true ,  //是否自动展开或收缩，以达到自适应。默认为 false。
			scrollbarSize :20 ,
			columns:[[
			    {
			    	field:'pno',
			    	title:'编号', 
			    	align:'center',  //居中
			    	width:100,
			    	checkbox : true ,
			    }, 
			    
			    {
			    	field:'pname',
			    	title:'商品名称',
			    	sortable:true, //可以排序
			    	align:'center',  //居中
			    	width:100,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			        	  
			    },
			    {
			    	field:'pSelingPrice',
			    	title:'商品价格',
			    	sortable:true,
			    	align:'center',
			    	width:60,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'pprice',
			    	title:'商品进价',
			    	sortable:true,
			    	align:'center',
			    	width:60,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'pdis',
			    	title:'商品折扣',
			    	sortable:true,
			    	align:'center',
			    	width:50,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'ptype',
			    	title:'国家',
			    	sortable:true,
			    	align:'center',
			    	width:50,
			    	editor : {
			    		type : 'combobox',
			    		options : {
			    			url:'<%=basePath%>/countryAction/findAllCountry',
			    			panelHeight: '200',  
			    		    valueField:'ptname',      //保存到数据库的值   键
			    		    textField:'ptname',			//保存到数据库的值  值
			    			required : true,
			    			editable: false,    	  //不可编辑
			    		},
			    	},
			    },
			    {
			    	field:'pisExist',
			    	title:'是否存在活动',
			    	sortable:true,
			    	align:'center',
			    	width:50,
			    	editor : {
			    		type : 'combobox',
			    		options : {
			    			data: pisExist,
			    			required : true,
			    			valueField: "value",  
                            textField: "text",  
                            editable: false,  
                            panelHeight:70, 
			    		},
			    	},
			    	formatter:function(value,row,index){
			    		var msg = "否";
			    		if(value==1){
			    			msg = "是" ;
			    		}
			    		return msg ;
			    	}, 
			    	
			    },
			    {
			    	field:'pbrand',
			    	title:'品牌',
			    	sortable:true,
			    	align:'center',
			    	width:100,
			    	editor : {
			    		type : 'combobox',
			    		options : {
			    			url:'<%=basePath%>/brandAction/findAllBrand',
			    			panelHeight: '200',  
			    		    valueField:'brname',      //保存到数据库的值  
			    		    textField:'brname',
			    			required : true,
			    			editable: false,    	  //不可编辑
			    		},
			    	},
			    },
			    {
			    	field:'pnumber',
			    	title:'数量',
			    	sortable:true,
			    	align:'center',
			    	width:50,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'pPinkage',
			    	title:'是否包邮',
			    	sortable:true,
			    	align:'center',
			    	width:50,
			    	editor : {
			    		type : 'combobox',
			    		options : {
			    			data: pPinkage,
			    			required : true,
			    			valueField: "value",  
                            textField: "text",  
                            editable: false,  
                            panelHeight:70,  
			    		},
			    	},
			    	formatter:function(value,row,index){
			    		var msg = "否";
			    		if(value==1){
			    			msg = "是" ;
			    		}
			    		return msg ;
			    	}, 
			    },
			    {
			    	field:'pstate',
			    	title:'状态',
			    	sortable:true,
			    	align:'center',
			    	width:50,
			    	editor : {
			    		type : 'combobox',
			    		options : {
			    			data: pipingLevel,
			    			required : true,
			    			valueField: "value",  
                            textField: "text",  
                            editable: false,  
                            panelHeight:70,  
			    		},
			    	},
			    },
			   /*  {
			    	field:'pimage',
			    	title:'是否已上传图片',
			    	sortable:true, //可以排序
			    	align:'center',  //居中
			    	width:70,
			    	formatter:function(value,row,index){
			    		msg ='<a href="#" class="button white medium" onclick="uploadImg(\''+row.pno+'\')">修改</a>';
			    		if(row.pimage==undefined){
			    			msg = '<a href="#" class="button blue medium" onclick="uploadImg(\''+row.pno+'\')">上传</a> ';  
			    			
			    		}
			    		return msg ;
			    	} ,
			    	//formatter : formatOper,  //添加点击事件
			    }, */
			    {
			    	field:'bitPdepict',
			    	title:'描述',
			    	sortable:true, //可以排序
			    	align:'center',  //居中
			    	width:70,
			    	formatter:function(value,row,index){
			    		msg ='<a href="#" class="button white medium" onclick="updatabitPdepict(\''+row.pno+'\')">修改</a>';
			    		if(value==0 || value == undefined){
			    			//msg = '<a href="#" class="button white medium" onclick="uploadImg(\''+row.pno+'\')">添加描述</a> ';  
			    			msg = '<a href="#" class="button blue medium" onclick="addbitPdepict(\''+row.pno+'\')">添加</a> ' ;
			    		}
			    		return msg ;
			    	} , 
			    	//formatter : formatOper,  //添加点击事件
			    },
			    {
			    	field:'pheat',
			    	title:'热度',
			    	sortable:true, //可以排序
			    	align:'center',  //居中
			    	formatter:function(value,row,index){
			    		var msg = value ;
			    		if(value==null){
			    			msg = "0" 
			    		}
			    		return msg ;
			    	} , 
			    	//formatter : formatOper,  //添加点击事件
			    },
			    {
			    	field:'ptime',
			    	title:'时间',
			    	sortable:true,  
			    	align:'center', 
			    	
			    }
			 ]],
			pagination : true,  //显示分页
			pageSize : 10, //默认分页条数
			pageList : [10, 20, 30], //设置分页条数
			pageNumber : 1, //默认页数
			pagePosition : 'bottom', //设置分页显示位置
			sortName : 'ptime',   //时间排序 
			sortOrder : 'DESC',	  //升序 /降序 
			toolbar : '#tb',
			onDblClickRow : function(rowIndex,rowData){
				
				if(obj.editRow!=undefined){
					$('#comm').datagrid('endEdit', obj.editRow);
				}
				
				if(obj.editRow == undefined){
					$('#comm').datagrid('beginEdit', rowIndex);
					$('#save,#redo').show();
					obj.editRow = rowIndex ;
				}
				
			},
			onAfterEdit : function (rowIndex, rowData, changes) {
				$('#save,#redo').hide();
				
				var inserted = $("#comm").datagrid('getChanges','inserted');
				var updated = $("#comm").datagrid('getChanges','updated');
				
				//alert(commData)
				//console.log(inserted);
				
				
					//alert(datas)
				//添加
				if(inserted.length>0){
					var s= inserted[0];
					
					var datas = "pname="+s.pname+"&pPinkage="+s.pPinkage+"&pSelingPrice="+s.pSelingPrice+"&pbrand="+s.pbrand ;
						datas+= "&pdis="+s.pdis+"&pisExist="+s.pisExist+"&pnumber="+s.pnumber+"&pprice="+s.pprice ;
						datas+= "&pstate="+s.pstate+"&ptype="+ s.ptype;
					$.ajax({
						url:"<%=basePath%>/commodityAction/addProduct",
						data:{
							pname:s.pname,
							pPinkage:s.pPinkage,
							pSelingPrice:s.pSelingPrice,
							pbrand:s.pbrand,
							pdis:s.pdis,
							pisExist:s.pisExist,
							pnumber:s.pnumber,
							pprice:s.pprice,
							pstate:s.pstate,
							ptype:s.ptype,
						},
						type:"post",
						beforeSend:function() {
							$('#comm').datagrid('loading');  //显示加载
							
						},
						success:function(data){
							$('#comm').datagrid('loaded'); //隐藏加载
							$('#comm').datagrid('load');   //刷新当前
							$('#comm').datagrid('unselectAll');   //取消所有当前页中的所有行。
							if($.trim(data)!="false"){
								
								$.messager.show({
									title:'提示',
									msg: '1条商品信息添加成功，请添加商品描述信息。',
									timeout:3000,
									showType:'slide'
								});

							} else{
								$.messager.show({
									title:'提示',
									msg: '1条商品信息添加失败',
									timeout:3000,
									showType:'slide'
								});
							}
						}
						
					});
					
				}
					
				//修改
				if(updated.length>0){
					var s= updated[0];
					/* var datas ="pno="+s.pno+"&pname="+s.pname+"&pPinkage="+s.pPinkage+"&pSelingPrice="+s.pSelingPrice+"&pbrand="+s.pbrand ;
					datas+= "&pdis="+s.pdis+"&pisExist="+s.pisExist+"&pnumber="+s.pnumber+"&pprice="+s.pprice ;
					datas+= "&pstate="+s.pstate+"&ptype="+ s.ptype; */
					
					$.ajax({
						url:"<%=basePath%>/commodityAction/addProduct",
						data:{
							pno:s.pno,
							pname:s.pname,
							pPinkage:s.pPinkage,
							pSelingPrice:s.pSelingPrice,
							pbrand:s.pbrand,
							pdis:s.pdis,
							pisExist:s.pisExist,
							pnumber:s.pnumber,
							pprice:s.pprice,
							pstate:s.pstate,
							ptype:s.ptype,
						},
						type:"post",
						beforeSend:function() {
							$('#comm').datagrid('loading');  //显示加载
							
						},
						success:function(data){
							$('#comm').datagrid('loaded'); //隐藏加载
							$('#comm').datagrid('load');   //刷新当前
							$('#comm').datagrid('unselectAll');   //取消所有当前页中的所有行。
							//alert(data)
							if($.trim(data)!="false"){
								$.messager.show({
									title:'提示',
									msg: '1条商品信息修改成功',
									timeout:3000,
									showType:'slide'
								});

							} else{
								$.messager.show({
									title:'提示',
									msg: '1条商品信息修改失败',
									timeout:3000,
									showType:'slide'
								});
							}
						}
						
					});
				}
				
				obj.editRow = undefined;
				//console.log(inserted);
				//console.log(updated);
				
			}
		});
		
		
	});
	
	
	
	//图片
	function formatOper(val,row,index){  
		
		//console.log(row);
		//修改
	   // return '<a href="#" onclick="editUser('+index+')">修改</a>';  
	    //return "<img src='../../upload/"+row.pimage+"'/>";
	} 
	//下拉列表  -- 类型搜索
	$('#cc').combobox({    
    	url:'<%=basePath%>/brandAction/findAllBrand',   
    	width:100,
    	valueField:'brname',    
    	textField:'brname',
    	editable: false,    	  //不可编辑
    	onSelect:function(){
    		$("#comm").datagrid('load',{
    			pbrand : $.trim($('input[name="pbrand"]').val()),
			
			});
    		//console.log(pname);
    	},
	}); 
	
	//下拉列表  -- 国家
	$('#ccgj').combobox({    
    	url:'<%=basePath%>/countryAction/findAllCountry',   
    	width:100,
    	valueField:'ptdp',    
    	textField:'ptname',
    	editable: false,    	  //不可编辑
    	onSelect:function(){
    		$("#comm").datagrid('load',{
    			ptype : $.trim($('input[name="ptype"]').val()),
			
			});
    		//console.log(pname);
    	},
    	
	}); 
	
	function btu_add(i){
		//图片的上传
		//alert(pno);
		/* 添加描述图片 */
		if(i==0){
			$("#imgsimg").css("display","block");
			$('#ddImg').dialog({    
			    title: '选择图片',    
			    width: 400,    
			    height: 330,    
			    closed: false,    
			    cache: false,    
			    modal: true,
			    buttons:[{
					text:'保存',
					iconCls:'icon-ok',
					handler:function(){
						
						var form = new FormData($("#pimgImg")[0])
						$.ajax({
							url:"<%=basePath%>/commodityAction/addPrductImg?toImg="+i,
							data: form ,
							type: 'POST', 
							async:false,
							cache:false,
							contentType: false,  
					        processData: false, 
					        beforeSend:function() {
								//$('#ddImg').dialog('loading');  //显示加载
									
							 },
					         success: function (data) { 
					        	//$('#ddImg').dialog('loaded'); //隐藏加载
								//$('#ddImg').datagrid('load');   //刷新当前
					        	 
					        	 if(data==0){
					            	 $.messager.alert('恭喜','添加商品描述图片成功！',"info");  
					            	 $('#comm').datagrid('reload');    // 重新载入当前页面数据  
					            	 $("#btn_add").empty();
					            	 $("#btn_add").append(" <a style=' font-size: 12px;color:#CC99FF;'>如果选择有误，请<a href='#' id='newAdd' style=' font-size: 10px;'>重新选择</a></a>");
					            	 $('#ddImg').window('close');  // close a window  
					            	 
					             }else if(data == -1){
					            	 $.messager.alert('抱歉','添加商品图片描述失败。',"error");  
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
					iconCls:'icon-no',
					handler:function(){
						$('#dd').window('close');  // close a window  
					}
				}],
				toolbar:[{
					text:'添加一张图片',
					iconCls:'icon-add',
					handler:function(){
						var s = $(".pimgDivImg").length;
						//alert(s)
						if((s+1)>5){
							$.messager.alert('警告','添加失败，最多5张图片',"error");    
						}else{
							var $inp = "<div class='pimgDivImg'><a href='javascript:;' class='a-upload'><label class='upText'>图片("+(s+1)+"): </label> <input type='file' name='ufile' class='pimgImg' id='fileImg"+(s+1)+"'>点击这里选择图片</a> <span class='clos' id='pimgImg"+(s+1)+"'>&#10006;</span></div>" ; 
							$("#pimgImg").append($inp);
						}
					}
				},{
					text:'帮助',
					iconCls:'icon-help',
					handler:function(){alert('help')}
				}]
			}); 
		}
		
		
		/* 添加商品图片 */
		
		if(i==1){
			$("#imgs").css("display","block");
			$('#dd').dialog({    
			    title: '选择图片',    
			    width: 400,    
			    height: 330,    
			    closed: false,    
			    cache: false,    
			    modal: true,
			    buttons:[{
					text:'保存',
					iconCls:'icon-ok',
					handler:function(){
						
						var form = new FormData($("#pimg")[0])
						$.ajax({
							url:"<%=basePath%>/commodityAction/addPrductImg?toImg="+i,
							data: form ,
							type: 'POST', 
							async:false,
							cache:false,
							contentType: false,  
					         processData: false,  
					         success: function (data) {  
					        	 if(data==0){
					            	 $.messager.alert('恭喜','添加商品图片成功！',"info");  
					            	 $('#comm').datagrid('reload');    // 重新载入当前页面数据  
					            	 $("#btn_addCommImg").empty();
					            	 $("#btn_addCommImg").append(" <a style=' font-size: 12px;color:#CC99FF;'>如果选择有误，请<a href='#' id='newAdd' style=' font-size: 10px;'>重新选择</a></a>");
					            	 							
					            	 $('#dd').window('close');  // close a window  
					            	 
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
					iconCls:'icon-no',
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
							var $inp = "<div class='pimgDiv'><a href='javascript:;' class='a-upload'><label class='upText'>图片("+(s+1)+"): </label> <input type='file' name='ufile' class='pimg' id='file"+(s+1)+"'>点击这里选择图片</a> <span class='clos' id='clos"+(s+1)+"'>&#10006;</span></div>" ; 
							$("#pimg").append($inp);
						}
					}
				},{
					text:'帮助',
					iconCls:'icon-help',
					handler:function(){alert('help')}
				}]
			}); 
		}
	}; 
	//删除添加上传按钮
	$("body").on("click",".clos",function(){
		//删除指定元素
		$(this).parent().remove();
		
	});
	
	/* 添加描述信息 */
	function addbitPdepict(id){
		//显示
		$("#fileUploadCommForm").css("display","block");
		$("#pno").val(id);
		$('#winComm').dialog({
			title:'添加商品描述信息',
		    width:600,    
		    height:400,    
		    modal:true,
		    iconCls:'icon-add',
		    buttons:[{
				text:'提交',
				iconCls:'icon-ok',
				handler:function(){
					/* 提交数据 */
					var params = $("#fileUploadCommForm").serialize();
					params = decodeURIComponent(params,true);
					$.messager.defaults = { ok: "确定", cancel: "取消" };  
					$.messager.confirm('确认','您确认想要提交吗?',function(r){  
						
					    if (r){    
					    	$.ajax({
					    		url:"../../commodityAction/addPdepict",
					    		data: params ,
					    		type: 'POST', 
					            success: function (data) { 
					            	if("true"==data){
					            		$.messager.alert('恭喜','添加商品描述成功！',"info"); 
					            		$("#winComm").window('close');  // close a window  
					            		$("input").val(""); //清理输入框
					            		$("select").find("option[value='请选择'").attr("selected",true);
					            		$("#comm").datagrid('load',{
					        			
					        			});
					            	}else{
					            		$.messager.alert('抱歉','添加商品描述失败！',"error"); 
					            		
					            	}
					            	  
					             }
					    	}); 
					    }   
					
					});
				}
			},{
				text:'关闭',
				iconCls:'icon-no',
				handler:function(){
					$("#winComm").window('close');  // close a window  
				}
			}]
		});  
	}
	
	
	/* 修改描述信息 */
	
	function updatabitPdepict(id){
		//显示
		$("#fileUploadCommForm").css("display","block");
		$("#pno").val(id);
		
		$.ajax({
    		url:"../../commodityAction/findPdepictById_two?pno="+id,
    		type: 'POST', 
            success: function (data) { 
            	var da =eval('('+data+')');
            	$.each(da,function(i,o){
            		$("input[name='pdyear']").val(o[1].pdyear);
            		$("input[name='pdspirit']").val(o[1].pdspirit);
            		$("input[name='pdsoberUp']").val(o[1].pdsoberUp);
            		$("select").find("option[value='"+o[1].pdregion+"']").attr("selected",true);
            		$("select").find("option[value='"+o[1].pdlevel+"']").attr("selected",true);
            		$("select").find("option[value='"+o[1].pdtaste+"']").attr("selected",true);
            		$("select").find("option[value='"+o[1].pdvol+"']").attr("selected",true);
            		$("select").find("option[value='"+o[1].pdbreed+"']").attr("selected",true);
            		$("select").find("option[value='"+o[1].colorur+"']").attr("selected",true);
            	
            		$("#pnoMiao").val(o[1].pdno);
            		$("#pdimagesDepict").val(o[1].pdimagesDepict);
            		$("#pimagesReferral").val(o[1].pimagesReferral);
            	});
            	//alert(data)
            	
            	
             }
    	}); 
		
		$('#winComm').dialog({
			title:'商品描述修改',
		    width:600,    
		    height:400,    
		    modal:true,
		    iconCls:'icon-edit',
		    buttons:[{
				text:'提交',
				iconCls:'icon-ok',
				handler:function(){
					/* 提交数据 */
					var params = $("#fileUploadCommForm").serialize();
					params = decodeURIComponent(params,true);
					$.messager.defaults = { ok: "确定", cancel: "取消" };  
					$.messager.confirm('确认','您确认想要提交吗?',function(r){  
						
					    if (r){    
					    	$.ajax({
					    		url:"../../commodityAction/updataPdepictById",
					    		data: params ,
					    		type: 'POST', 
					            success: function (data) { 
					            	$('#comm').datagrid('unselectAll');   //取消所有当前页中的所有行。
					            	if("true"==data){
					            		$.messager.alert('恭喜','修改商品描述成功！',"info"); 
					            		$("#winComm").window('close');  // close a window  
					            		$("input").val(""); //清理输入框
					            		$("select").find("option[value='请选择'").attr("selected",true);
					            	}else{
					            		$.messager.alert('抱歉','修改商品描述失败！',"error"); 
					            		
					            	}
					            	  
					             }
					    	}); 
					    }   
					
					});
				}
			},{
				text:'关闭',
				iconCls:'icon-no',
				handler:function(){
					$("#winComm").window('close');  // close a window  
				}
			}]
		});  
		
		
		/*
			验证图片是否添加  --商品图片
		*/
		$("body").on("blur",".pimg",function() {
			var $parent = $(".pimgImg");
			//$parent.find(".formtips").remove();
			
			
				
			if ($(this).is("#file1")) {
					
						if(this.value != ""){
							//替换
							$("#clos1").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>");
						}
					}
			if ($(this).is("#file2")) {
				
				if(this.value != ""){
					//替换
					$("#clos2").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='clos2'>&#10006;</span>");
				}
			}
			if ($(this).is("#file3")) {
				
				if(this.value != ""){
					//替换
					$("#clos3").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='clos3'>&#10006;</span>");
				}
			}	
			if ($(this).is("#file4")) {
				
				if(this.value != ""){
					//替换
					$("#clos4").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='clos4'>&#10006;</span>");
				}
			}
			if ($(this).is("#file5")) {
				
				if(this.value != ""){
					//替换
					$("#clos5").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='clos5'>&#10006;</span>");
				}
			}
		}).keyup(function() {
			$(this).triggerHandler("blur");
		}).focus(function() {
			$(this).triggerHandler("blur");
		});

		/*=========================================================================  */
		/*=========================================================================  */
		/*=========================================================================  */

		/*
			验证图片是否添加  --商品描述图片
		*/
		$("body").on("blur",".pimgImg",function() {
			var $parent = $(".pimgDivImg");
			//$parent.find(".formtips").remove();
				
			if ($(this).is("#fileImg1")) {
					
						if(this.value != ""){
							//替换
							/* $("#pimgImg1").replaceWith("<span class='clos2'>&#10004;</span>"); */
							$("#pimgImg1").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>"); 
							
						}
					}
			if ($(this).is("#fileImg2")) {
				
				if(this.value != ""){
					//替换
					$("#pimgImg2").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='pimgImg2'>&#10006;</span>");
				}
			}
			if ($(this).is("#fileImg3")) {
				
				if(this.value != ""){
					//替换
					$("#pimgImg3").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='pimgImg3'>&#10006;</span>");
				}
			}	
			if ($(this).is("#fileImg4")) {
				
				if(this.value != ""){
					//替换
					$("#pimgImg4").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='pimgImg4'>&#10006;</span>");
				}
			}
			if ($(this).is("#fileImg5")) {
				
				if(this.value != ""){
					//替换
					$("#pimgImg5").replaceWith("<span class='clos2'><img src='<%=basePath%>/images/gou.png'></span>  <span class='clos' id='pimgImg5'>&#10006;</span>");
				}
			}
		}).keyup(function() {
			$(this).triggerHandler("blur");
		}).focus(function() {
			$(this).triggerHandler("blur");
		});

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
	
	
	<%-- $.get("<%=basePath%>/commodityAction/findAllComm","",function(data){
		/* var s = data ;
		s.replace("[","")
		alert(s) */
		
		
		/* $.each(data,function(i,v){
			var s = "<div>"+v[1].product.pno+"<div>" ;
			$("#test").append(s) ;
		}); */
	},"json"); --%>
	
</script>



