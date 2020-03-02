<%--
  Created by IntelliJ IDEA.
  User: yellow
  Date: 2019/7/23
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <link rel="stylesheet" href="css/registe.css" type="text/css">
    <script src="js/register.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        //在页面加载完成后
        $(function () {
            //给username绑定blur事件
            $("#userName").blur(function () {
                //获取username文本输入框的值
                var userName = $(this).val();
                //发送ajax请求
                //期望服务器响应回的数据格式：{"userExist":true,"msg":"此用户名太受欢迎了，请换一个"}
                //{"userExist":false,"msg":"此用户名可用"}
                $.get("CheckUserServlet",{userName:userName},function (data) {
                    //判断userExist键的值是否是true
                    var span = $("#s_userName");
                    if(data.userExist){
                        //用户名存在
                        span.css("color","red");//样式
                        span.html("*该用户名已存在");
                    }else {
                        //用户名不存在
                        span.css("color","blue");//样式
                        span.html("*此用户名可用");
                    }
                },"json");
            });
        });
        function changeCode() {
            document.getElementById("code").src = "${pageContext.request.contextPath}/RSCode?d="+new Date().getTime();
        }
    </script>
</head>
<body>
<form action="UserRegisterServlet" method="get"  >
<div class="main">
    <p class="user">用户注册</p>

    <table>

        <tr>
            <td class="short">
                <font color="red">*</font>
                <span>用户名:</span>
            </td>
            <td><input id="userName" name="userName" type="text" class="form-control" placeholder="请输入用户名 长度6-12个字符" style="width: 220px;"/><span style="font-size: 14px;" id="s_userName"></span></td>
        </tr>
        <tr>
            <td>
                <font color="red">*</font>
                <span>密码:</span>
            </td>
            <td><input name="userPassword" type="password" class="form-control"  placeholder="请输入密码 长度6-12个字符">
            </td>
        </tr>
        <tr>
            <td>
                <font color="red">*</font>
                <span>确认密码:</span>
            </td>
            <td><input name="repeatPassword" type="password"  class="form-control"  placeholder="请重复输入密码"></td>
        </tr>
        <tr>
            <td>
                <font color="red">*</font>
                <span>邮箱地址:</span>
            </td>
            <td><input name="phoneNumber" type="text" class="form-control" placeholder="请输入正确的邮箱地址"></td>
        </tr>
        <tr>
            <td>
                <font color="red">*</font>
                <span>性别:</span>
            </td>
            <td>
                <input type="radio" name="radiobutton" value="男" >男
                <input type="radio" name="radiobutton"  value="女"  style="margin-left: 34px;">女
            </td>
        </tr>

        <tr>
            <td>
                <font color="red">*</font>
                <span>验证码:</span>
            </td>
            <td>
                <input name="resultCode" type="text" class="form-control"  id="yanzheng" placeholder="输入验证码" style="width:90px;float: left;">
                <!--<button id="code" οnclick="createnew()"></button>-->
                <img src="RSCode" id="code">
                <a id="refresh" href="javascript:void(0);" onclick="changeCode()">换一张</a>
            </td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <button type="submit" class="btn btn-primary" onclick="submit1(this)">注册</button>
                <button type="button" class="btn btn-primary" onclick="reset1(this)" style="margin-left: 35px;">重置</button>
            </td>
        </tr>
    </table>

</div>
</form>
</body>
</html>
