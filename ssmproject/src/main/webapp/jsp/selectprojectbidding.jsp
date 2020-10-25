<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-9-29
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/css/bootstrap-theme.min.css"/>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">


    <table class="table table-condensed table-hover table-striped table-bordered">
        <tr>
            <td>标题</td>
            <td>内容</td>
            <td>截止时间</td>
            <td>开标时间</td>
            <td>招标金额</td>
            <td>招标文件</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${projectbiddings}" var="v">
            <tr>
                <td>${v.title}</td>
                <td>${v.body}</td>
                <td>${v.endtime}</td>
                <td>${v.ontime}</td>
                <td>${v.money}
                </td>
                <td>
            <c:forEach items="${v.projectbiddingfileList}" var="v2">
                ${v2.filepath}}<br>
            </c:forEach>
                </td>
                <td><button class="btn btn-success" onclick="window.location.href='/okProjectbidding?id=${v.id}'">确认发布招标</button></td>
            </tr>
        </c:forEach>
    </table>

    <nav>
        <ul class="pager">
            <li><a href="/supplierReviewed?sign=${supplier.sign}&page=1">首页</a></li>
            <li><a href="/supplierReviewed?sign=${supplier.sign}&page=${pageInfo.pageNum-1}">上一页</a></li>
            <li><a href="/supplierReviewed?sign=${supplier.sign}&page=${pageInfo.pageNum+1}">下一页</a></li>
            <li><a href="/supplierReviewed?sign=${supplier.sign}&page=${pageInfo.pages}">末页</a></li>
        </ul>
    </nav>


</div>
</body>
</html>
