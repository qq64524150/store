

$(function(){
	
	InitLeftMenu();
	tabClose();
	tabCloseEven();
	



	/*$('#tabs').tabs('add',{
		title:'主页',
		content:createFrame('http://hxling.cnblogs.com')
	}).tabs({
        onSelect: function (title) {
            var currTab = $('#tabs').tabs('getTab', title);
            var iframe = $(currTab.panel('options').content);

			var src = iframe.attr('src');
			if(src)
				$('#tabs').tabs('update', { tab: currTab, options: { content: createFrame(src)} });

        }
    });*/

})

//初始化左侧

function InitLeftMenu() {
	
	var data = ManageCommentText();
	
	$("#nav").accordion({animate:false});
	$.post("../test/funs","",function(data){
			
	
	
	$.each(data, function(i, n) {
		
		var menulist ='';
		menulist +='<ul>';
        $.each(n.aso, function(j, o) {
			menulist += '<li><div><a ref="'+o.perno+'" rel="' + o.perurl + '" ><span class="icon '+o.perioce+'" >&nbsp;</span><span class="nav">' + o.pername + '</span></a></div></li> ';
		})
		menulist += '</ul>';

		$('#nav').accordion('add', {
            title: n.pername,
            content: menulist,
            /*iconCls: 'icon ' + n.perioce*/
            iconCls: 'icon-save'
        });
    });
	//点击显示
	$('body').on("click",".easyui-accordion li a",function(){
		var tabTitle = $(this).children('.nav').text();
		// $(this).attr("rel");
		var url = "manage.jsp"; //显示的内容路径
		var menuid = $(this).attr("ref");
		var icon = getIcon(menuid,icon);

		addTab(tabTitle,url,icon);
		$('.accordion-body li div').removeClass("selected");
		$(this).parent().addClass("selected");
		});/*.hover(function(){
			alert("经过");
			$('.accordion-body li div').removeClass("hover");
			$(this).parent().addClass("selected");
		},function(){
			$('.accordion-body li div').removeClass("hover");
			$(this).parent().addClass("selected");
			alert("离开");
		});*/

	
	
	
	//获取左侧导航的图标
	function getIcon(menuid){
		var icon = 'icon ';
		$.each(data, function(i, n) {
			 $.each(n.aso, function(j, o) {
			 	if(o.perno==menuid){
					icon += o.icon;
				}
			 })
		})

		return icon;
	}
	
	},"json");
	
	
	/*//选中第一个
	var panels = $('#nav').accordion('panels');
	var t = panels[0].panel('options').title;
    $('#nav').accordion('select', t);*/
	
	//鼠标经过&离开
	/*$('body').on("hover",".easyui-accordion li a",function(){
		$('.accordion-body li div').removeClass("hover");
		$(this).parent().addClass("hover");
		//$(this).parent().parent().addClass("hover"); 
		
	});*/

	
}






//定义
function ManageCommentText(text) {
    var result = text;
    $.ajax({
        data: "get",
        url: "../test/funs",
        cache: false,
        async: false,
        type:"json",
        success: function (data) {
            result = data;
        }
    });
    return result;
}

function addTab(subtitle,url,icon){
	if(!$('#tabs').tabs('exists',subtitle)){
		$('#tabs').tabs('add',{
			title:subtitle,
			content:createFrame(url),
			closable:true,
			icon:icon
		});
	}else{
		$('#tabs').tabs('select',subtitle);
		$('#mm-tabupdate').click();
	}
	tabClose();
}

function createFrame(url)
{
	var s = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
	return s;
}

function tabClose()
{
	//双击关闭TAB选项卡
	$(".tabs-inner").dblclick(function(){
		var subtitle = $(this).children(".tabs-closable").text();
		$('#tabs').tabs('close',subtitle);
	})
	//为选项卡绑定右键
	$(".tabs-inner").bind('contextmenu',function(e){
		$('#mm').menu('show', {
			left: e.pageX,
			top: e.pageY
		});

		var subtitle =$(this).children(".tabs-closable").text();

		$('#mm').data("currtab",subtitle);
		$('#tabs').tabs('select',subtitle);
		return false;
	});
}
//绑定右键菜单事件
function tabCloseEven()
{
	//刷新
	$('#mm-tabupdate').click(function(){
		var currTab = $('#tabs').tabs('getSelected');
		var url = $(currTab.panel('options').content).attr('src');
		$('#tabs').tabs('update',{
			tab:currTab,
			options:{
				content:createFrame(url)
			}
		})
	})
	//关闭当前
	$('#mm-tabclose').click(function(){
		var currtab_title = $('#mm').data("currtab");
		$('#tabs').tabs('close',currtab_title);
	})
	//全部关闭
	$('#mm-tabcloseall').click(function(){
		$('.tabs-inner span').each(function(i,n){
			var t = $(n).text();
			$('#tabs').tabs('close',t);
		});
	});
	//关闭除当前之外的TAB
	$('#mm-tabcloseother').click(function(){
		$('#mm-tabcloseright').click();
		$('#mm-tabcloseleft').click();
	});
	//关闭当前右侧的TAB
	$('#mm-tabcloseright').click(function(){
		var nextall = $('.tabs-selected').nextAll();
		if(nextall.length==0){
			//msgShow('系统提示','后边没有啦~~','error');
			alert('后边没有啦~~');
			return false;
		}
		nextall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});
	//关闭当前左侧的TAB
	$('#mm-tabcloseleft').click(function(){
		var prevall = $('.tabs-selected').prevAll();
		if(prevall.length==0){
			alert('到头了，前边没有啦~~');
			return false;
		}
		prevall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});

	//退出
	$("#mm-exit").click(function(){
		$('#mm').menu('hide');
	})
}

//弹出信息窗口 title:标题 msgString:提示信息 msgType:信息类型 [error,info,question,warning]
function msgShow(title, msgString, msgType) {
	$.messager.alert(title, msgString, msgType);
}
