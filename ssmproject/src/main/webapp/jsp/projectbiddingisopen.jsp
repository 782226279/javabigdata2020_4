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
    <title>待开标项目</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/css/bootstrap-theme.min.css"/>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">

    <fieldset>
        <legend>招标项目相关信息</legend>
        <table class="table table-condensed table-hover table-striped table-bordered">
            <tr>
                <td>标题</td>
                <td>内容</td>
                <td>截止时间</td>
                <td>开标时间</td>
                <td>招标金额</td>
                <td>招标文件</td>

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

                    </td>

                </tr>
                <tr>
                    <td colspan="6">
                        <div style="color: red;">招标文件</div>
                        <c:forEach items="${v.projectbiddingfileList}" var="v2">
                            <a href="">${v2.filepath}</a><br>
                        </c:forEach>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </fieldset>

    <fieldset>
        <legend>参与投标的供应商相关信息及投标信息</legend>

        <c:forEach items="${bids}" var="v">
            <div>
                供应商名字:${v.supplier.suppliername}&nbsp;<button class="btn btn-primary" onclick="setbidwinner(${v.supplier.id},${v.projectbiddingid})">确认供应商为中标单位</button><br>
                供应商电话:${v.supplier.tel}<br>
                供应商地址:${v.supplier.address}<br>
                注册金额:${v.supplier.money}<br>
                备注:${v.supplier.bz}<br>
                投标金额:${v.money}<br>
                投标备注:${v.bz}<br>
                投标文件:<c:forEach items="${v.bidfileList}" var="v2">
               <a href="">${v2.filepath}</a> &nbsp;&nbsp;&nbsp;
            </c:forEach>

            </div>
            <hr>
        </c:forEach>

    </fieldset>

</div>

<script>
    function setbidwinner(supplierid,projectbiddingid) {
        if(confirm("是否确认该供应商为中标单位")){
            window.location.href="/setBidwinner?supplierid="+supplierid+"&projectbiddingid="+projectbiddingid;;
        }
    }

</script>
</body>
</html>
