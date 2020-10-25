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
    查询供应商
    <form class="form-inline" method="post" action="/supplierReviewed">
        <div class="form-group">
            <label for="exampleInputName2">供货商名字</label>
            <input type="text" name="suppliername" class="form-control" id="exampleInputName2" >
        </div>

        <input type="hidden" name="page" value="1">
        <input type="hidden" name="sign" value="${supplier.sign}">
        <button type="submit" class="btn btn-default">搜索</button>
    </form>

    <table class="table table-condensed table-hover table-striped table-bordered">
        <tr>
            <td>供货商名字</td>
            <td>手机</td>
            <td>地址</td>
            <td>保证金</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${suppliers}" var="v">
            <tr>
                <td>${v.suppliername}</td>
                <td>${v.tel}</td>
                <td>${v.address}</td>
                <td>${v.money}</td>
                <td><c:choose>
                    <c:when test="${v.sign==0}">待审核</c:when><c:when test="${v.sign==1}">审核不通过</c:when>
                    <c:when test="${v.sign==2}">待财务审核</c:when><c:when test="${v.sign==3}">财务审核不通过</c:when>
                    <c:when test="${v.sign==4}">正式供货商</c:when><c:when test="${v.sign==5}">黑名单企业</c:when>
                </c:choose>
                </td>
                <td>
                    <c:choose>
                        <c:when test="${v.sign==0}"><button onclick="window.location.href='/supplierReviewedSub?id=${v.id}'" type="button" class="btn btn-success">审核供应商</button></c:when><c:when test="${v.sign==1}">审核不通过</c:when>
                        <c:when test="${v.sign==2}">待财务审核</c:when><c:when test="${v.sign==3}">财务审核不通过</c:when>
                        <c:when test="${v.sign==4}">正式供货商</c:when><c:when test="${v.sign==5}">黑名单企业</c:when>
                    </c:choose>
                    </td>
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
