<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-9-27
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/css/aftermain.html.css"/>
</head>

<body>
<div class="maintop">
    <ul class="commonul menuul">
        <li class="commonli m1">首页</li>
        <li class="commonli m1">系统</li>
        <li class="commonli m1">用户</li>
        <li class="commonli m1">任务</li>
        <li class="commonli m1" style="cursor: pointer" onclick="window.location.href='/jsp/userlogin.jsp'">重新登陆</li>
        <li class="commonli m1">当前用户:</li>
        <li class="commonli m1">${sessionScope.user.username}</li>
    </ul>

</div>
<div class="mainleft">
    <ul class="commonul mainleftul">
        <%--<li class="topmenu">系统菜单</li>--%>
        <%--<li class="li2"><a href="www.baidu.com" target="mainiframe">查询订单</a></li>--%>
        <%--<li class="li2"><a href="" target="mainiframe">增加商品</a></li>--%>
        <%--<li class="li2"><a href="" target="mainiframe">删除商品</a></li>--%>

        <c:forEach items="${usermenuList}" var="v">
            <li class="topmenu">${v.menuname}</li>
            <c:forEach items="${v.usermenuList}" var="v2">
                <li class="li2"><a href="${v2.menuhref}" target="mainiframe">${v2.menuname}</a></li>
            </c:forEach>
        </c:forEach>


    </ul>
</div>
<div class="mainright">

    <iframe name="mainiframe" src="" width="100%" height="99%" frameborder="0px" style="background: #FFFFFF;"></iframe>
</div>

</body>

</html>
