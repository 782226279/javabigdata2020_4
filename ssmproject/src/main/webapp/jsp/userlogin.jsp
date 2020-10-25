<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-9-27
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
    <title>系统后台用户登录</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="/css/mybootstrap.css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/carousel.js"></script>
    <script type="text/javascript" src="/js/mybootstrap.js"></script>


    <script language="JavaScript">
    var loginNameResult = false;
    var loginPasswordReuslt = false;

    $(function() {
        /*验证用户名*/
        $("#loginName").blur(function() {
            var loginNameResultInfo = $(this).val();
            if(loginNameResultInfo == null || loginNameResultInfo == "") {
                $(this).parent().next("div").children("p").html("*您还未输入登录账号");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            loginNameResult = true;

        });
        $("#loginName").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证密码*/
        $("#loginPassword").blur(function() {
            var loginPasswordInfo = $(this).val();
            if(loginPasswordInfo == null || loginPasswordInfo == "") {
                $(this).parent().next("div").children("p").html("*您还未输入密码");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            loginPasswordReuslt = true;
        });
        $("#inputPassword").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });

        /***********点击重置按钮清空所填内容******/
        $("#clearData").click(function() {
            $("#loginName").parent().next("div").children("p").html("*您还未输入登录账号");
            $("#loginPassword").parent().next("div").children("p").html("*您还未输入登录密码");

        });
    });

    function checkUserLogin() {
        if(loginNameResult & loginPasswordReuslt)
            return true;
        return false;
    }
    </script>
</head>

<body style="font-size: 12px;background-color: #F3F3F4;">
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-xs-12" style="background-color:#52A6D6;color:white;height: 40px;line-height: 40px;font-size: 14px;">
                <b>招标系统后台用户登录</b>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="height: 40px;line-height: 40px;">
                <i class="glyphicon glyphicon-home"></i>&nbsp;当前位置:<a href="index.html" class="myAbq">首页</a>&nbsp;>>&nbsp;
                <a href="#" style="color:#555555;">系统后台</a>&gt;&gt;
                <span style="color: #28A4C9;">用户登录</span>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="color:red;height: 40px;line-height: 40px;font-size: 14px;">
                *为保障您顺利使用本系统，请根据以下提示认真填写注册信息
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="color:red;height: 40px;line-height: 40px;font-size: 14px;">
                *以下带红星号的是必填项，只有合法用户才能登录此系统
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="color:red;height: 40px;line-height: 40px;font-size: 14px;">
                <font style="font-size: 20px;color: black;">登录信息</font>
            </div>
        </div>
        <!--系统后台用户登录表单 开始-->
        <fieldset>
            <legend align="center">欢迎系统后台用户登录</legend>
        </fieldset>
        <form class="form-horizontal" action="/userlogin" method="post" onsubmit="return checkUserLogin()">
            <!--登录账号-->
            <div class="form-group">
                <label for="loginName" class="col-sm-4 control-label"><font style="color: red;">*</font>&nbsp;登录账号：</label>
                <div class="col-sm-4">
                    <input type="text" name="worknum" class="form-control" id="loginName" placeholder="员工工号/员工姓名/员工手机号码">
                </div>
                <div class="col-sm-4">
                    <p class="form-control-static" style="color: red;"></p>
                </div>
            </div><br/>
            <!--登录密码-->
            <div class="form-group">
                <label for="loginPassword" class="col-sm-4 control-label"><font style="color: red;">*</font>&nbsp;登录密码：</label>
                <div class="col-sm-4">
                    <input type="text" name="userpwd" class="form-control" id="loginPassword" placeholder="登录密码">
                </div>
                <div class="col-sm-4">
                    <p class="form-control-static" style="color: red;"></p>
                </div>
            </div><br />
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-3">
                    <button type="submit" class="btn btn-default btn-primary" style="width: 45%;">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" class="btn" style="width: 45%;" id="clearData">重置</button>
                </div>
            </div>
        </form>
        <!--系统后台用户登录表单-->
    </div>

</div>
<div class="container">
    <!--首页尾部开始-->
    <!--<div class="row">
            <div class="col-xs-12" style="height: 60px;border: 1px dotted #D4D4D4;text-align: center;line-height: 30px;">
                Copyright @ 2012-2030 中国某某股份有限公司 版权所有 京ICP备14004955号<br /> 技术支持：某某科技有限公司

            </div>
    </div>-->
    <!--首页尾部结束-->
</div>
</div>
</body>

</html>
