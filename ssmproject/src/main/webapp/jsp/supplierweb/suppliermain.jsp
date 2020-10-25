<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-18
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/common.css" />
</head>

<body>
<div class="container-fluid">
    <div class="row" style="height: 50px;background-image: url(/img/title.jpg);">
        <div class="col-sm-1"></div>
        <div class="col-sm-5"><span style="color: beige;font-size: 24px;">【${sessionScope.loginsupplier.uname}-${sessionScope.loginsupplier.suppliername}】供应商后台</span></div>
    </div>

    <div class="row">
        <div class="col-sm-2" style="padding: 0px;">

            <div class="list-group">

                <a href="mymessage.html" class="list-group-item active" style="border-radius: 0px;">供应商信息修改</a>
                <a href="upmymessage.html" class="list-group-item" style="border-radius: 0px;">资质管理</a>
                <a href="adddeclareprj.html" class="list-group-item " style="border-radius: 0px;">供应商注销</a>
                <a href="declareprj.html" class="list-group-item " style="border-radius: 0px;">供应商密码管理</a>
                <a href="/supplierbidselect" class="list-group-item " style="border-radius: 0px;">我要投标</a>
                <a href="passdeclareprj.html" class="list-group-item " style="border-radius: 0px;">正在参与招标项目</a>
                <a href="notpassdeclareprj.html" class="list-group-item " style="border-radius: 0px;">我参与中标项目</a>
                <a href="notpassdeclareprj.html" class="list-group-item " style="border-radius: 0px;">我参与没有中标</a>
            </div>

        </div>

        <div class="col-sm-10" style="padding: 0px;border: 1px solid #D5D5D5;padding: 4px;height: 500px">

            <nav>
                <ul class="pager">
                    <li>
                        项目名字：<input type="text" name="" id="" value="" />
                    </li>
                    <li>
                        <a href="#">查询</a>
                    </li>
                    <li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </li>
                    <li>
                        <a href="#">增加申报项目</a>
                    </li>

                </ul>
            </nav>

            <table class="table table-condensed table-bordered">
                <tr>
                    <td>项目名字</td>
                    <td>项目编号</td>
                    <td>申报企业</td>
                    <td>申报时间</td>
                    <td>申报金额</td>
                    <td>申报项目类型</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
                <tr>
                    <td style="vertical-align: middle;">项目名字*****</td>
                    <td style="vertical-align: middle;">xm000023</td>
                    <td style="vertical-align: middle;">河北********有限公司</td>
                    <td style="vertical-align: middle;">2019-09-09</td>
                    <td style="vertical-align: middle;">100000</td>
                    <td style="vertical-align: middle;">高科技</td>
                    <td style="vertical-align: middle;color: red;">待申报</td>
                    <td style="vertical-align: middle;">
                        <button type="button" class="btn btn-default">查看</button>
                        <button type="button" class="btn btn-primary">修改</button>
                        <button type="button" class="btn btn-danger">删除</button>
                        <button type="button" class="btn btn-info">申报</button>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: middle;">项目名字*****</td>
                    <td style="vertical-align: middle;">xm000023</td>
                    <td style="vertical-align: middle;">河北********有限公司</td>
                    <td style="vertical-align: middle;">2019-09-09</td>
                    <td style="vertical-align: middle;">100000</td>
                    <td style="vertical-align: middle;">环保</td>
                    <td style="vertical-align: middle;color: red;">待申报</td>
                    <td style="vertical-align: middle;">
                        <button type="button" class="btn btn-default">查看</button>
                        <button type="button" class="btn btn-primary">修改</button>
                        <button type="button" class="btn btn-danger">删除</button>
                        <button type="button" class="btn btn-info">申报</button>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: middle;">项目名字*****</td>
                    <td style="vertical-align: middle;">xm000023</td>
                    <td style="vertical-align: middle;">河北********有限公司</td>
                    <td style="vertical-align: middle;">2019-09-09</td>
                    <td style="vertical-align: middle;">100000</td>
                    <td style="vertical-align: middle;">高科技</td>
                    <td style="vertical-align: middle;color: red;">待申报</td>
                    <td style="vertical-align: middle;">
                        <button type="button" class="btn btn-default">查看</button>
                        <button type="button" class="btn btn-primary">修改</button>
                        <button type="button" class="btn btn-danger">删除</button>
                        <button type="button" class="btn btn-info">申报</button>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: middle;">项目名字*****</td>
                    <td style="vertical-align: middle;">xm000023</td>
                    <td style="vertical-align: middle;">河北********有限公司</td>
                    <td style="vertical-align: middle;">2019-09-09</td>
                    <td style="vertical-align: middle;">100000</td>
                    <td style="vertical-align: middle;">高科技</td>
                    <td style="vertical-align: middle;color: red;">待申报</td>
                    <td style="vertical-align: middle;">
                        <button type="button" class="btn btn-default">查看</button>
                        <button type="button" class="btn btn-primary">修改</button>
                        <button type="button" class="btn btn-danger">删除</button>
                        <button type="button" class="btn btn-info">申报</button>
                    </td>
                </tr>
            </table>

            <nav>
                <ul class="pager">
                    <li>
                        <a href="#">首页</a>
                    </li>
                    <li>
                        <a href="#">上一页</a>
                    </li>
                    <li>
                        <a href="#">下一页</a>
                    </li>
                    <li>
                        <a href="#">末一页</a>
                    </li>
                </ul>
            </nav>

        </div>
    </div>

</div>
</body>

</html>
