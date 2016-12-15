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
<body>
	<table id='comm'></table>

</body>
</html>
<script type="text/javascript">
	$(function(){
		$("#comm").datagrid({
			width:500,
			url:'<%=basePath%>/commodityAction/findAllProduct',
			title:'商品列表',
			columns:[[
			    {
			    	field:'pname',
			    	title:'商品名称',
			        	  
			    },
			    {
			    	field:'pprice',
			    	title:'商品价格',
			    },
			    {
			    	field:'pdis',
			    	title:'商品折扣',
			    },
			    {
			    	field:'ptype',
			    	title:'商品类型',
			    },
			    {
			    	field:'pSelingPrice',
			    	title:'商品销售价',
			    },
			    {
			    	field:'pbrand',
			    	title:'品牌',
			    },
			    {
			    	field:'pnumber',
			    	title:'数量',
			    },
			    {
			    	field:'pstate',
			    	title:'状态',
			    }
			 ]],
			
			pagination : true,
			pageSize : 5,
			pageList : [5, 10, 15],
			pageNumber : 1,
			pagePosition : 'bottom',
			
			
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



