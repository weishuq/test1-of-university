<%--
  Created by IntelliJ IDEA.
  User: yellow
  Date: 2019/7/24
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/admin.css" type="text/css">
</head>
<body>
<div class="head">
    <div class="logo">
        <img src="image/adminPage/logo-2.jpg">
    </div>
    <div class="correlation">
        <div class="message">
            <a href="index.jsp"><img src="image/adminPage/message1.png"></a>
        </div>
        <div class="quit">
            <a href="index.jsp"><img src="image/adminPage/quit.png"></a>
            <!--<a href="homePage.html">退出</a>-->
        </div>
    </div>
</div>

<div class="main">
    <div class="personal">
        <div class="top">
            <div class="photo">
                <img src="image/adminPage/头像.png">
            </div>
            <div class="other">
                <div class="username">
                    <a>${userName}</a>
                </div>
                <div class="change">
                    <button type="button" class="btn btn-primary" ><a href="userLogin.jsp" style="color: #cfcfcf">切换账号</a></button>
                </div>
            </div>
        </div>
        <div class="menu">
            <ul>
                <li>
                    <button onclick="show1()">个人信息</button>
                </li>
                <li>
                    <button onclick="show3()">个人通知</button>
                </li>
            </ul>
        </div>
    </div>
    <div class="operate">
        <div id="myInformation">
            <form role="form">
                <div class="form-group">
                    <label for="name">用户昵称:</label>
                    <input type="text" class="form-control" id="name" value="${userName}" readonly>
                    <button type="button" class="btn btn-primary btn-sm" id="changen" onclick="changename(this)">修改</button>
                </div>
                <div class="form-group">
                    <label for="email">注册邮箱:</label>
                    <input type="text" class="form-control" id="email" value="${managerEmail}" readonly>
                    <button type="button" class="btn btn-primary btn-sm" id="changeme" onclick="changeemail(this)">修改</button>
                </div>
                <div class="form-group">
                    <label for="name">个人介绍：</label><br/>
                    <textarea class="form-control" id="area"></textarea>
                </div>
                <div class="form-group">
                    <label for="inputfile">头像选择</label>
                    <input type="file" id="inputfile">
                    <p class="help-block">浏览本地文件</p>
                </div>
                <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>

        <div id="news">
            <div class="search">
                <form action="NewsTableServlet" method="post">
                    <input type="text" id="keyWord" name="search" placeholder="标题/关键字">
                    <input type="button" value="查询"/>
                </form>
                <button class="dele">
                    <span class="glyphicon glyphicon-trash s1"></span>
                    <a href="managerLoginSuccess2.jsp" style="color: #cccccc">管理</a>
                </button>
                <button id="fabu" class="btn btn-info" data-toggle="modal" data-target="#myModal">
                    <span class="glyphicon glyphicon-plus" ></span>
                    发布
                </button>
                <div id="fb">
                    <form action="addNewsServlet" method="post">
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="关闭">
                                        <span aria-hidden="true">&times;</span>
                                    </button> -->
                                        <h4 class="modal-title" id="myModalLabel">添加新闻</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div>
                                            <span>标题：</span><br>
                                            <input type="text" class="form-control" name="title">
                                            <br>
                                            <span>新闻作者：</span><br>
                                            <input type="text" class="form-control" name="author">
                                            <br>
                                            <div class="form-group">
                                                <span>内容：</span><br>
                                                <textarea class="form-control" rows="15" name="content"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-primary" >发布</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div>
                <table border="1" width="80%" >
                    <tr>
                        <th>新闻标题</th>
                        <th>作者</th>
                        <th>发布时间</th>
                    </tr>
                    <tbody id="tableText"></tbody>
                </table>
            </div>
        </div>

        <div id="announce">
            <div class="search">
                <form>
                    <input type="text" id="myInput" placeholder="标题/关键字">
                </form>
                <button class="dele">
                    <span class="glyphicon glyphicon-trash s1"></span>
                    删除
                </button>
                <button id="fabu2" class="btn btn-info"  onclick="Show()">
                    <span class="glyphicon glyphicon-plus" ></span>
                    发布
                </button>
                <div id="shade" class="c1 hide"></div>
                <div id="modal" class="c2 hide">
                    <h4>添加公告</h4>
                    <div class="line"></div>
                    <form>
                        <span>公告标题：</span><br>
                        <input type="text" class="form-control">
                        <br>
                        <span>作者：</span><br>
                        <input type="text" class="form-control">
                        <br>
                        <div class="form-group">
                            <span>内容：</span><br>
                            <!--<label for="name">内容:</label>-->
                            <textarea class="form-control" rows="15"></textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" onclick="Hide()">关闭</button>
                            <button type="button" class="btn btn-primary">发布</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="staff">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>昵称</th>
                    <th class="shortLine">邮箱</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Tanmay</td>
                    <td>Bangalore@163.com</td>
                    <td>未通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Sachin</td>
                    <td>Mumbai@163.com</td>
                    <td>未通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Amy</td>
                    <td>Pune@163.com</td>
                    <td>通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Tanmay</td>
                    <td>Bangalore@163.com</td>
                    <td>未通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Sachin</td>
                    <td>Jklmai@163.com</td>
                    <td>通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Tim</td>
                    <td>FHopop5@163.com</td>
                    <td>通过</td>
                    <td><button id="warning" class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Tack</td>
                    <td>ADcvb233@163.com</td>
                    <td>未通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Torien</td>
                    <td>Mumbai@163.com</td>
                    <td>通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                <tr>
                    <td>Sachin</td>
                    <td>YHbnj@163.com</td>
                    <td>通过</td>
                    <td><button class="glyphicon glyphicon-ok x1" onclick="vet(this)"></button><button class="glyphicon glyphicon-trash s1" onclick="delet(this)"></button></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div id="bar">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th><a href="index.jsp">网站首页</a></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><a href="news.html">校园新闻</a></td>
                </tr>
                <tr>
                    <td><a href="announce.html">通知公告</a></td>
                </tr>
                </tbody>
            </table>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>部分介绍</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>部门简介</td>
                </tr>
                <tr>
                    <td>人员信息</td>
                </tr>
                </tbody>
            </table>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>日常管理</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>管理制度</td>
                </tr>
                <tr>
                    <td>业务办理</td>
                </tr>
                <tr>
                    <td>表格下载</td>
                </tr>
                </tbody>
            </table>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>队伍建设</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>纲领文件</td>
                </tr>
                <tr>
                    <td>培训培养</td>
                </tr>
                <tr>
                    <td>基层队伍</td>
                </tr>
                </tbody>
            </table>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>思政教育</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>入学导航</td>
                </tr>
                <tr>
                    <td>典型培育</td>
                </tr>
                <tr>
                    <td>红色体验</td>
                </tr>
                <tr>
                    <td>毕业教育</td>
                </tr><tr>
                    <td>网络思政</td>
                </tr><tr>
                    <td>学院特色工作</td>
                </tr>
                </tbody>
            </table>

            <table class="table table-hover">
                <thead>
                <tr>
                    <th>心灵港湾</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>中心简介</td>
                </tr>
                <tr>
                    <td>教育培训</td>
                </tr>
                <tr>
                    <td>心理咨询</td>
                </tr>
                <tr>
                    <td>危机干预</td>
                </tr>
                <tr>
                    <td>援助热线</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript " src="js/admin.js "></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
