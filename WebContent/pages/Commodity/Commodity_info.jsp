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
</head>
<body style="margin: 0px;padding: 0px;">
	<table id='comm' width="100%;" border="0"></table>
	
	<div id="tb" style="padding:5px;height:auto">
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
			查 询 帐 号 ： <input class="textbox" name="pname"
			style="width:110px">
			创 建 时 间 从 ： <input class="easyui-datebox" name="date_from" editable ='false'
			style="width:110px">
			到 ： <input class="easyui-datebox" name="date_to" editable ='false'
			style="width:110px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search"
			onclick="obj.search();">查询</a>
		</div>
	</div>
	
</body>
</html>
<script type="text/javascript">
	$(function(){
		/* 搜索 */
		 var pipingLevel = [{"value":"上架","text":"上架"},{"value":"下架","text":"下架"},{"value":"无货","text":"无货"}];//json格式 
		obj = {
			editRow : undefined ,
			search : function(){
				$("#comm").datagrid('load',{
					pname : $.trim($('input[name="pname"]').val()),
					date_from : $.trim($('input[name="date_from"]').val()),
					date_to : $.trim($('input[name="date_to"]').val()),
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
				$('#save,#redo').hide();
				this.editRow = undefined;
				//将新增的一行设置为结束编辑状态
				$('#comm').datagrid('endEdit', 0);
			},
			//取消
			redo : function(){
				$('#save,#redo').hide();
				this.editRow = 0;
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
								pnos.push(rows[i].pno);
							}
							console.log(pnos.join(','));
							
						}
						
						
					});
					
					
				}else{
					$.messager.alert('提示','请选择要删除的信息。',"info"); 
				}
			},
			
			
			
		};
		
		
		
		$("#comm").datagrid({
			
			url:'<%=basePath%>/commodityAction/findAllProductPageBean',
			title:'商品列表',
			iconCls : 'icon-search', //设置图标
			striped : true ,  //设置斑马线样式
			rownumbers : true ,		//设置 true， 显示一个行号。 默认为 false
			//singleSelect : true ,  //设置 true， 只能选定一行。 默认为 false。
			fitColumns : true ,  //是否自动展开或收缩，以达到自适应。默认为 false。
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
			    	field:'pprice',
			    	title:'商品价格',
			    	sortable:true,
			    	align:'center',
			    	width:100,
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
			    	width:100,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'ptype',
			    	title:'商品类型',
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
			    		},
			    	},
			    },
			    {
			    	field:'pSelingPrice',
			    	title:'商品销售价',
			    	sortable:true,
			    	align:'center',
			    	width:100,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'pbrand',
			    	title:'品牌',
			    	sortable:true,
			    	align:'center',
			    	width:100,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'pnumber',
			    	title:'数量',
			    	sortable:true,
			    	align:'center',
			    	width:100,
			    	editor : {
			    		type : 'validatebox',
			    		options : {
			    			required : true,
			    		},
			    	},
			    },
			    {
			    	field:'pstate',
			    	title:'状态',
			    	sortable:true,
			    	align:'center',
			    	width:100,
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
			    {
			    	field:'ptime',
			    	title:'时间',
			    	sortable:true,  
			    	align:'center', 
			    	width:100,
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
				obj.editRow = undefined;
				console.log(rowData)
			}
		});
		
	});
	
	
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



