// JavaScript Document
//加入收藏
function AddFavorite(sURL, sTitle) {

    sURL = encodeURI(sURL);

    try {

        window.external.addFavorite(sURL, sTitle);

    } catch (e) {

    try {

        window.sidebar.addPanel(sTitle, sURL, "");

    } catch (e) {

        alert("加入收藏失败,请使用Ctrl+D进行添加,或手动在浏览器里进行设置.");

        }
    }
}
//数量加减
$(function(){
 $("#quantity").keyup(function(){
  if(isNaN($(this).val()) || parseInt($(this).val())<1){
   $(this).val("1");
   $("#totalPrice").html($("#price").val());
   return;
  }
  var total = parseFloat($("#price").val())*parseInt($(this).val());
  $("#totalPrice").html(total.toFixed(2));
 })

})

/*商品数量+1*/
/*function numAdd(){
 var num_add = parseInt($(".text_box").val())+1;
 if($(".text_box").val()==""){
  num_add = 1;
 }
 $(".text_box").val(num_add);
 //var total = parseFloat($("#price").val())*parseInt($("#quantity").val());
 //$("#totalPrice").html(total.toFixed(2));
}
/*商品数量-1*/
/*function numDec(){
 var num_dec = parseInt($(".text_box").val())-1;
 if(num_dec<1){
  //购买数量必须大于或等于1
  alert("购买数量至少为1");
 }else{
  $(".text_box").val(num_dec);
  //var total = parseFloat($("#price").val())*parseInt($("#quantity").val());
  //$("#totalPrice").html(total.toFixed(2));
 }
} */



//增加购物数量：传入的是input对象
function add(btnObj){
	//找到按钮所在单元格的所有子元素
	var nodes = btnObj.parentNode.childNodes;

	//循环：找到那个type为text的INPUT节点
	for(var i=0;i<nodes.length;i++){
		//找到文本框
		if(nodes[i].nodeName == "INPUT" && nodes[i].type == "text"){
			var str = nodes[i].value;
			var n = parseInt(str);
			n++;
			nodes[i].value = n;
		}
	}
	//数量发生更改后，重新计算
	calTotal();
}

//减少购物数量
function sub(btnObj){
	//找到按钮所在单元格的所有子元素
	var nodes = btnObj.parentNode.childNodes;
	//循环：找到那个type为text的INPUT节点
	for(var i=0;i<nodes.length;i++){
		if(nodes[i].nodeName == "INPUT" && nodes[i].type == "text"){
			var str = nodes[i].value;
			var n = parseInt(str);
			if(n>1)
				n--;
			nodes[i].value = n;
		}
	}
	//数量发生更改后，重新计算
	calTotal();
}

//方法：计算小计以及总计
function calTotal() {
	//先找到表格的所有行
	var table = document.getElementById("shoppingCart");
	var rows = table.getElementsByTagName("tr");
	//循环：从第二行开始
	var total = 0;
	for(var i=1;i<rows.length-1;i++){
		var curRow = rows[i];
		//每一行中：价格--第二个单元格中
		var price = parseFloat(
			curRow.getElementsByTagName("td")[2].innerHTML);
		//数量：第三个单元格中的第二个input中
		var q = parseInt(
			curRow.getElementsByTagName("td")[3].getElementsByTagName("input")[1].value);

		//小计：显示第四个单元格中（保留2位）
		var sum = price * q;
		curRow.getElementsByTagName("td")[4].innerHTML = sum.toFixed(2);

		//累加总计
		total += sum;
	}
	//显示总计
	document.getElementById("sum").innerHTML = total.toFixed(2);
}


function gouwu(obj){
    var goods=document.getElementByName("good");
    var totalPrice=0;
    //遍历所有的checkbox，计算新的总价
    for(var i=0;i<goods.length;i++){
        //判断是否选择
        if(goods[i].checked){
            totalPrice+=parseFloat(goods[i].value);
        }
    }
    myspan.innerText=totalPrice+"元";
}
function selectCheck(obj){
var goods=document.getElementsByName("good");
if(obj.checked){
    for(i=0;i<goods.length;i++){
        goods[i].checked=true;
    }
}else{
    for(i=0;i<goods.length;i++){
        goods[i].checked=false;
    }
}
}

//响应复选框
function selectCheck2(){
var goods=document.getElementsByName("good");
if(myselect.checked){
    for(i=0;i<goods.length;i++){
        goods[i].checked=true;
    }
}else{
    for(i=0;i<goods.length;i++){
        goods[i].checked=false;
    }
}
}

