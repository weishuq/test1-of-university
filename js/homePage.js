
window.onscroll = function() {scrollFunction()};
 
function scrollFunction() {
    if (document.body.scrollTop > 46 || document.documentElement.scrollTop > 46) {
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
