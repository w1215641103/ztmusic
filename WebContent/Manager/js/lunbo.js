//获取所有的li
var jsLis = document.getElementsByclassName("list_li");
//获取所有img节点
var jsImg = document.getElementById("lun_img");
//当前显示图片
var currentpage = 0;


//背景div属性为：e_conter_top
var jsTop = document.getElementById("e_conter_top");

//左右按钮
var jsLeftBtn = document.getElementById("leftbt");
var jsRightBtn = document.getElementById("rightbt")


//第一个小圆点初始化成白色！
jsLis[0].style.backgroundColor = "white";

//创建定时播放图片 -----
var pTimer = setInterval(func,1000);
function func(){
	currentPage++;
	if(currentPage ==6){
		
		currentPage =0;
	}
	//修改图片
	jsImg.src = "images/"+currentPage+".jpg";

	//清空所有小圆点的颜色
	for (var i = 0; i < jsLis.length; i++){
		jsLis[i].style.backgroundColor="#272726";
	}

	//修改小圆点的颜色
	jsLis[currentPage].style.backgroundColor = "white";
}


//给e_center_top添加鼠标进入事件，Top只是我定义的一个属性
jsTop.addEventListener("mousemove",function(){
	
	//停止定时器 即销毁 所以下方还需要再启动一次
	clearInterval(pTimer);
	
	jsLeftBtn.style.display = "block";
	jsRightBtn.style.display = "block";
},false);


jsTop.addEventListener("mouseout",function(){
	//启动定时器  -----
	pTimer = setInterval(func,1000);
	
	jsLeftBtn.style.display = "none";
	jsRightBtn.style.display = "none";
},false);



//左右按钮
jsLeftBtn.addEventListener("mouseover", function(){
	jsLeftBtn.style.backgroundColor = "rgba(0,0,0,0.6)";
},false);
jsRightBtn.addEventListener("mouseover", function(){
	jsRightBtn.style.backgroundColir = "rgba(0,0,0,0.6)";
},false);

jsLeftBtn.addEventListener("mouseout", function(){
	jsLeftBtn.style.backgroundColor = "rgba(0,0,0,0.2)";
},false);
jsRightBtn.addEventListener("mouseout", function(){
	jsRightBtn.style.backgroundColor = "rgba(0,0,0,0.2)";
},false);



//鼠标移入显示的左边按钮<
jsLeftBtn.addEventListener("click", function(){
	currentPage--;
	if(currentPage == -1){
		currentPage = 5;
	}
	jsImg.src = "images/"+currentPage+".jpg";
	//清空所有小圆点颜色
	for(var i = 0; i < jsLis.length; i++){
		jsLis[i].style.backgroundColor = "#272726";
		
	}
	//修改小圆点的颜色
	jsLis[currentPage].style.backgroundColor = "white";
},false);

//右边按钮>
jsRightBtn.addEventListener("click", function(){
	currentPage++;
	if(currentPage ==6){
		currentPage = 0;
	}
	jsImg.src = "images/"+currentPage+".jpg";
	for(var i = 0; i <jsLis.length; i++){
		jsLis[currentPage].style.backgroundColor = "#272726";
	}
	jsLis[currentPage].style.backgroundColor = "white";
},false);


//每一个小圆点都添加鼠标移入事件
for (var i = 0; i < jsLis.length; i++){
	jsLis[i].onmouseover =function(){
	//当前元素节点的文本节点
		
	//在事件函数中。this代表对应的元素节点
	currentPage = parseInt(this.innerHTML) - 1;
	jsImg.src = "images/"+currentPage+".jpg";
	for(var i = 0; i < jsLis.length; i++){
		jsLis[i].style.backgroundColor = "#272726";
	}
	jsLis[currentPage].style.backgroundColor = "white";
	}
}














