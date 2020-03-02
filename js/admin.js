var active1 = document.getElementById("active1");
var active2 = document.getElementById("active2");
var active3 = document.getElementById("active3");
var active4 = document.getElementById("active4");
var active5 = document.getElementById("active5");

// 显示个人信息
function show1() {
	document.getElementById("news").style.display = "none";
	document.getElementById('announce').style.display = 'none';
	document.getElementById('staff').style.display = 'none';
	document.getElementById('bar').style.display = 'none';
	var d = document.getElementById('myInformation');
	d.style.display = "block";
	active1.style.cssText = 'background-color: rgba(13, 13, 13, 0.2);color: white;';
	active2.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active3.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active4.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active5.style.cssText = 'background-color: transparent;color: #cfcfcf;';

}
// 显示学校新闻
function show2() {
	document.getElementById('myInformation').style.display = 'none';
	document.getElementById('announce').style.display = 'none';
	document.getElementById('staff').style.display = 'none';
	document.getElementById('bar').style.display = 'none';
	var d = document.getElementById('news');
	d.style.display = "block";
	active2.style.cssText = 'background-color: rgba(13, 13, 13, 0.2);color: white;';
	active1.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active3.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active4.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active5.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.border="0px";
}
// 显示通知公告
function show3() {
	document.getElementById('myInformation').style.display = 'none';
	document.getElementById('news').style.display = 'none';
	document.getElementById('staff').style.display = 'none';
	document.getElementById('bar').style.display = 'none';
	var d = document.getElementById('announce');
	d.style.display = "block";
	active3.style.cssText = 'background-color: rgba(13, 13, 13, 0.2);color: white;';
	active2.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active4.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active5.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.border="0px";
}
// 显示管理人员
function show4() {
	document.getElementById('news').style.display = 'none';
	document.getElementById('announce').style.display = 'none';
	document.getElementById('myInformation').style.display = 'none';
	document.getElementById('bar').style.display = 'none';
	var d = document.getElementById('staff');
	d.style.display = "block";
	active4.style.cssText = 'background-color: rgba(13, 13, 13, 0.2);color: white;';
	active2.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active3.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active5.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.border="0px";
}

// 显示本站导航
function show5() {
	document.getElementById('news').style.display = 'none';
	document.getElementById('announce').style.display = 'none';
	document.getElementById('staff').style.display = 'none';
	document.getElementById('myInformation').style.display = 'none';
	var d = document.getElementById('bar');
	d.style.display = "block";
	active5.style.cssText = 'background-color: rgba(13, 13, 13, 0.2);color: white;';
	active2.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active3.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active4.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.cssText = 'background-color: transparent;color: #cfcfcf;';
	active1.style.border="0px";
}

// 改名
function changename(obj) {

	document.getElementById("name").readOnly = false;
	var ts = document.getElementById("name").value;
	var cn = document.getElementById("changen");
	if(cn.innerHTML == "修改") {
		cn.innerHTML = "保存";
		ts.contentEditable = "true";
	} else {
		cn.innerHTML = "修改";
		ts.contentEditable = "false";
	}

}

// 改邮箱
function changeemail(obj) {

	document.getElementById("email").readOnly = false;
	var ts = document.getElementById("email").value;
	var cn = document.getElementById("changeme");
	if(cn.innerHTML == "修改") {
		cn.innerHTML = "保存";
		ts.contentEditable = "true";
	} else {
		cn.innerHTML = "修改";
		ts.contentEditable = "false";
	}

}

// 判断是否审核过
var a = Array();
var b = Array();
var c = Array();
for(var x = 0; x < 10; x++) {
	a[x] = document.getElementsByTagName("tr")[x];
	if(x > 0) {
		c = a[x].childNodes;
		var col = c[5].innerHTML;
		if(col == "未通过") {
			c[7].style.color = "red";
		}
	}
}

// 通过审核
function vet(obj) {
	var the_td = obj.parentNode;
	var condi = the_td.previousSibling.previousSibling;
	if(condi.innerHTML == "未通过") {
		condi.innerHTML = "通过";
		obj.style.color = "black";
		obj.parentNode.style.color = "black";
	} else {
		alert("该管理员已通过审核！");
	}
}

// 删除管理人员
function delet(obj) {
	var del_tr = obj.parentNode.parentNode;
	del_tr.parentNode.removeChild(del_tr);
}

// 弹出添加公告的界面
var fabu = document.getElementById("fabu");
var fb = document.getElementById("fb");
fabu.onclick = function() {
	fb.style.visibility = "visible";
}

function Show() {
	document.getElementById('shade').classList.remove('hide');
	document.getElementById('modal').classList.remove('hide');
}

function Hide() {
	document.getElementById('shade').classList.add('hide');
	document.getElementById('modal').classList.add('hide');
}

// 添加
function addsth(obj) {
	var changepic = document.getElementsByClassName("glyphicon glyphicon-edit x1")[0];
	var deletepic = document.getElementsByClassName("s1")[0];

	var newNode1 = changepic.cloneNode(true);
	var newNode2 = deletepic.cloneNode(true);
	var secondary = prompt("请输入您要添加的二级导航栏：");
	if(secondary.length != 0) {
		var tr = document.createElement("tr");

		var td1 = document.createElement("td");
		td1.innerHTML = secondary;
		tr.appendChild(td1);

		// 第一个编辑按钮
		var td2 = document.createElement("td");
		td2.appendChild(newNode1);

		// 第二个删除按钮
		td2.appendChild(newNode2);
		//		td2.innerHTML = "";

		// 在tr上添加td2
		tr.appendChild(td2);

		var table = obj.parentNode.parentNode.parentNode.nextSibling.nextElementSibling;
		table.appendChild(tr);
	} else {
		alert("数据不能为空！");
	}
}
//删除
function deletesth(obj) {
	var del_tr = obj.parentNode.parentNode;
	del_tr.parentNode.removeChild(del_tr);
}

//编辑 
var allX = document.getElementsByClassName("glyphicon glyphicon-edit x1");
for(var i = 0; i < allX.length; i++) {
	allX[i].onclick = function() {
		var ts = this.parentNode.parentNode;
		if(this.className == "glyphicon glyphicon-edit x1") {
			this.className = "glyphicon glyphicon-ok x1";
			ts.contentEditable = "true";
		} else {
			this.className = "glyphicon glyphicon-edit x1";
			ts.contentEditable = "false";
		}
	}
}

//删除
var allB = document.getElementsByClassName("glyphicon glyphicon-trash s1");
for(var i = 0; i < allB.length; i++) {
	allB[i].onclick = function() {
		var tr = this.parentNode.parentNode;
		tr.parentNode.removeChild(tr);
	}
}