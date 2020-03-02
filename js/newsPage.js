window.onscroll = function() {
	scrollFunction()
};

function scrollFunction() {
	if(document.body.scrollTop > 46 || document.documentElement.scrollTop > 46) {
		document.getElementById("toplist").style.display = "block";
	} else {
		document.getElementById("toplist").style.display = "none";
	}
}

// 点击按钮，返回顶部
function topFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
(function() {

	var oList = document.querySelectorAll('.list1 h2'),

		oHide = document.querySelectorAll('.hide1'),

		oIcon = document.querySelectorAll('.list1 i'),

		lastIndex = 0;

	for(var i = 0; i < oList.length; i++) {

		oList[i].index = i;

		oList[i].isClick = false;

		oList[i].initHeight = oHide[i].clientHeight;

		oHide[i].style.height = '0';

		oList[i].onclick = function() {

			if(this.isClick) {

				oHide[this.index].style.height = '0';

				oIcon[this.index].className = '';

				oList[this.index].className = '';

				oList[this.index].isClick = false;

			} else {

				oHide[lastIndex].style.height = '0';

				oIcon[lastIndex].className = '';

				oList[lastIndex].className = '';

				oHide[this.index].style.height = '180px';

				oIcon[this.index].className = 'on';

				oList[this.index].className = 'on';

				oList[lastIndex].isClick = false;

				oList[this.index].isClick = true;

				lastIndex = this.index;

			}

		}

	}

})();