<%--
  Created by IntelliJ IDEA.
  User: yellow
  Date: 2019/7/23
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/online.css" type="text/css">
    <script src="js/online.js" type="text/javascript"></script>
    <script type="text/javascript">
        // 时间戳 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
        function changeCode() {
            document.getElementById("CodePicture").src = "${pageContext.request.contextPath}/LCCode?d="+new Date().getTime();
            document.getElementById("CodePicture2").src = "${pageContext.request.contextPath}/LCCode?d="+new Date().getTime();
        }
    </script>
</head>
<body>
<!--顶部-->
<div class="head">
    <div class="top">
        <div class="logo">
            <img src="image/login/logo-1.jpg">
        </div>
    </div>
</div>
<div class="main">
    <div class="left">
        <img src="image/login/timg2.jpg" class="bg">
    </div>
    <!--顶部分类导航-->
    <div class="denglu">
        <ul>
            <li class="li-1">
                <button onclick="show1()" class="stud">学 生</button>
            </li>
            <li class="li-2">
                <button onclick="show2()" class="teac">管 理 员</button>
            </li>
        </ul>
        <!--下方登陆栏-->
        <div class="enter">
            <!--学生登陆栏-->
            <div class="enter1" id="enter1">
                <form action="UserLoginServlet" method="post" class="loginForm" >
                    <img src="image/login/man.png" class="man1">
                    <input type="text" placeholder="用户名" name="userName" id="username" class="form-control">
                    <br/>
                    <img src="image/login/lock.png" class="lock1">
                    <input type="password" placeholder="密码" name="userPassword" class="form-control" id="mima1">
                    <!--验证码-->
                    <div class="yanzheng">
                        <div class="shuru">
                            <!--<span>验证：</span>-->
                            <input type="text" placeholder="验证码" name="code" class="form-control">
                        </div>
                        <div class="xianshi"><img id="CodePicture" src="${pageContext.request.contextPath}/LCCode"></div>
                        <div class="refresh">
                            <a href="javascript:void(0);" onclick="changeCode()">换一张</a>
                        </div>
                    </div>
                    <div class="more">
                        <div class="rem">
                            <input type="checkbox" class="remember1">
                            <a class="remem1">记住密码</a>
                        </div>
                        <div class="for">
                            <a href="how2j.cn" class="forget1">忘记密码？</a>
                        </div>
                    </div>
                    <button class="on" type="submit" onclick="submit1()">登陆</button>
                </form>
                <button class="on">
                    <a href="userRegister.jsp">注册</a>
                </button>
                <!--下方外部链接-->
                <div class="part">
                    <a style="font-size: 12px;color: grey;">------------------ 使用合作账户登陆 ------------------</a>
                    <img src="image/login/qq.png" class="pic3">
                    <img src="image/login/weixin.png" class="pic4">
                    <img src="image/login/douban.png" class="pic4">
                    <img src="image/login/weibo.png" class="pic5">
                </div>
            </div>
            <!--管理员登陆栏-->
            <div class="enter1" id="enter2">
                <form action="ManagerLoginServlet" method="post" class="loginForm" >
                    <img src="image/login/man.png" class="man1">
                    <input type="text" placeholder="管理员ID/手机号" name="managerName" class="form-control">
                    <br/>
                    <img src="image/login/lock.png" class="lock1">
                    <input type="password" placeholder="密码" name="managerPassword" class="form-control">
                    <!--验证码-->
                    <div class="yanzheng">
                        <div class="shuru">
                            <!--<span>验证：</span>-->
                            <input type="text" placeholder="验证码" name="code" class="form-control">
                        </div>
                        <div class="xianshi"><img id="CodePicture2" src="${pageContext.request.contextPath}/LCCode"></div>
                        <div class="refresh">
                            <a href="javascript:void(0);" onclick="changeCode()">换一张</a>
                        </div>
                    </div>
                    <div class="more">
                        <div class="rem">
                            <input type="checkbox" class="remember1">
                            <a class="remem1">记住密码</a>
                        </div>
                        <div class="for">
                            <a href="#" class="forget1">忘记密码？</a>
                        </div>
                    </div>
                    <button type="submit" class="on" onclick="submit1();">登陆</button>
                    <button class="on">
                        <a href="#">注册</a>
                    </button>
                </form>
                <!--下方外部链接-->
                <div class="part">
                    <a style="font-size: 12px;color: grey;">------------------ 使用合作账户登陆 ------------------</a>
                    <img src="image/login/qq.png" class="pic3">
                    <img src="image/login/weixin.png" class="pic4">
                    <img src="image/login/douban.png" class="pic4">
                    <img src="image/login/weibo.png" class="pic5">
                </div>
            </div>
        </div>
    </div>
</div>
























<%--<div style="position: absolute;width:150px;height:135px;left:50%;top:50%;margin-left:-75px;margin-top:-60px;">--%>
<%--    <form action="UserLoginServlet" method="post">--%>
<%--        <table>--%>
<%--            <tr>--%>
<%--                <td><input placeholder="用户名" type="text" name="userName"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td><input placeholder="密码" type="password" name="userPassword"></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td><input placeholder="验证码" type="text" name="code"></td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--        <table>--%>
<%--            <tr>--%>
<%--                <td style="width:90px;"><img id="CodePicture" src="LCCode"></td>--%>
<%--                <td><a href="javascript:void(0);" onclick="changeCode()">换一张</a></td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--        <input type="submit" value="登录"/>--%>
<%--        &lt;%&ndash;    <a href="register.jsp" style="text-decoration: none">注册</a></button>&ndash;%&gt;--%>
<%--    </form>--%>
<%--</div>--%>

</body>
</html>
