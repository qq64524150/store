<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	 img.src='../../images/delete.png';
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
		<form action="" id="comm_form">
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
						<input name="" placeholder="请输入商品折扣" /> 折(如：9.99)
					</td>
					
				</tr>
					
				<tr>
					<td class="comm_text01">
						<label>是否存在活动:</label>
					</td>
					
					<td>
						<input type="radio" name="pisExist" value="1" > 是
						<input type="radio" name="pisExist" value="0" checked="checked"> 否
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
						<input name="" placeholder="请输入实时商品销售价"/> ￥
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
						<input type="radio" name="pPinkage" value="1" > 是
						<input type="radio" name="pPinkage" value="0" checked="checked"> 否
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
					
					<td>
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
						<input name="" placeholder="请输入建议醒酒时间"> 分钟
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
						<input name="" placeholder="请输入年份"> 年
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
				
					<td class="comm_text01" colspan="4"><label>图片详细描述	:</label></td>
					<td>
						
						
						
						
						
					</td>
					
				</tr>
				<tr>
				
					<td class="comm_text01">图片介绍（大小）:</td>
					<td><input type="file" name=""></td>
					
				</tr>
				
				
		
			
			
		</form>
				
				
				
			</table>
		</form>
		
		
				
	</div>
	
</div>

<c:import url="../../test.jsp"></c:import>

 

