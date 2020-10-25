<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-18
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-18
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>供应商投标</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/common.css"/>
    <script src="/js/jquery.min.js"></script>
</head>

<body>
<div class="container-fluid">
    <div class="row" style="height: 50px;background-image: url(/img/title.jpg);">
        <div class="col-sm-1"></div>
        <div class="col-sm-2"><span style="color: beige;font-size: 24px;">供应商后台</span></div>
    </div>

    <div class="row">
        <div class="col-sm-2" style="padding: 0px;">

            <div class="list-group">

                <a href="mymessage.html" class="list-group-item " style="border-radius: 0px;">供应商信息修改</a>
                <a href="upmymessage.html" class="list-group-item" style="border-radius: 0px;">资质管理</a>
                <a href="adddeclareprj.html" class="list-group-item " style="border-radius: 0px;">供应商注销</a>
                <a href="declareprj.html" class="list-group-item " style="border-radius: 0px;">供应商密码管理</a>
                <a href="/supplierbidselect" class="list-group-item active" style="border-radius: 0px;">我要投标</a>
                <a href="passdeclareprj.html" class="list-group-item " style="border-radius: 0px;">正在参与招标项目</a>
                <a href="notpassdeclareprj.html" class="list-group-item " style="border-radius: 0px;">我参与中标项目</a>
                <a href="notpassdeclareprj.html" class="list-group-item " style="border-radius: 0px;">我参与没有中标</a>
            </div>

        </div>

        <div class="col-sm-10" style="padding: 0px;border: 1px solid #D5D5D5;padding: 4px;height: 500px">

            <fieldset>
                <legend>进行投标</legend>
                <form action="/bidsubmit" method="post"  enctype="multipart/form-data">
                    项目名字:${projectbidding.title}  <input type="hidden" value="${id}" name="projectbiddingid">
                    <br>
                    投标金额:<input type="text" name="money">
                    <br>
                    备注:<textarea name="bz"></textarea>
                    <br>
                    投标文件:
                    <input type="file" name="file">
                    <a href="javascript:void(0)" onclick="addfile(this)">增加一个招标文件</a>
                    <br>

                    <button type="submit" class="btn btn-primary">确认投标</button>

                </form>
                <script>
                    function addfile(t) {
                        $(t).before("<input type=\"file\" name=\"file\" >")
                    }
                </script>


            </fieldset>

        </div>
    </div>

</div>
</body>

</html>




