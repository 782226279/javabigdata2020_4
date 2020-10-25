<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-9-29
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
            <td>供货商名字</td>
            <td>${supplier2.suppliername}</td>
        </tr>
        <tr>
            <td>手机</td>
            <td>${supplier2.tel}</td>
        </tr>
        <tr>
            <td>地址</td>
            <td>${supplier2.address}</td>
        </tr>
        <tr>
            <td>注册金额</td>
            <td>${supplier2.money}</td>
        </tr>
        <tr>
            <td>资质文件</td>
            <td>
                <c:forEach items="${supplier2.qualificationsList}" var="v">
                    <img class="img-thumbnail" style="width: 100px;height: 100px" src="${v.imgpath}">
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <form action="/supplierReviewedSubmit">
                    <input value="${supplier2.id}" name="id" style="display: none;">
                    <textarea name="bz"></textarea><br>
                    <label><input type="radio" name="bzint" value="0" checked>审核通过</label> <label><input name="bzint" type="radio" value="1">审核不通过</label>
                    <button type="submit" class="btn btn-warning">审核</button>
                </form>
            </td>
        </tr>

    </table>


</div>
</body>
</html>
