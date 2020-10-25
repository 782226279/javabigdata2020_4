<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-11
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
    <title>供应商登录</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="/css/mybootstrap.css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/carousel.js"></script>
    <script type="text/javascript" src="/js/mybootstrap.js"></script>

    <script language="JavaScript">
    var userNameResult = false;
    var passwordResult = false;
    var supplierCodeResult = false;

    $(function() {
        /*验证用户名*/
        $("#inputUserName").blur(function() {
            var userNameInfo = $(this).val();
            if(userNameInfo == null || userNameInfo == "") {
                $(this).parent().next("div").children("p").html("*您还未输入用户名");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            userNameResult = true;

        });
        $("#inputUserName").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证密码*/
        $("#inputPassword").blur(function() {
            var passwordInfo = $(this).val();
            if(passwordInfo == null || passwordInfo == "") {
                $(this).parent().next("div").children("p").html("*您还未输入密码");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            passwordResult = true;
        });
        $("#inputPassword").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*校验验证码*/
        $("#inputSupplierCode").blur(function() {
            var passwordInfo = $(this).val();
            if(passwordInfo == null || passwordInfo == "") {
                $(this).parent().parent().next("div").children("p").html("*验证码不正确");
                return;
            }
            $(this).parent().parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            passwordResult = true;
        });
        $("#inputSupplierCode").focus(function() {
            $(this).parent().parent().next("div").children("p").html("");
        });

    });

    function checkRegister() {
        if(userNameResult & passwordResult & supplierCodeResult)
            return true;
        return false;
    }

    /**
     * 换一张验证码图片
     */
    function resetimg() {
        $("#supplierLoginImg").attr("src","/supplierLoginImg?time="+new Date().getTime())
    }
    </script>
</head>

<body style="font-size: 12px;background-color: #F3F3F4;">
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-xs-12" style="background-color:#52A6D6;color:white;height: 40px;line-height: 40px;font-size: 14px;">
                <b>供应商用户登录</b>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="height: 40px;line-height: 40px;">
                <i class="glyphicon glyphicon-home"></i>&nbsp;当前位置:
                <a href="index.html" style="color:#555555;">首页</a>&gt;&gt;
                <span style="color: #28A4C9;">供应商登录</span>
            </div>
        </div>
        <!--供应商登录表单 开始-->
        <fieldset>
            <legend align="center">欢迎供应商用户登录系统</legend>
        </fieldset>
        <form class="form-horizontal"  action="/supplierLoginWeb" method="post">
            <!--用户名-->
            <div class="form-group">
                <label for="inputUserName" class="col-sm-4 control-label">用户名：</label>
                <div class="col-sm-4">
                    <input type="text" name="uname" class="form-control" id="inputUserName">
                </div>
                <div class="col-sm-4">
                    <p class="form-control-static" style="color: red;"></p>
                </div>
            </div>
            <!--密码-->
            <div class="form-group">
                <label for="inputPassword" class="col-sm-4 control-label">密码：</label>
                <div class="col-sm-4">
                    <input type="text" name="pwd" class="form-control" id="inputPassword">
                </div>
                <div class="col-sm-4">
                    <p class="form-control-static" style="color: red;"></p>
                </div>
            </div>
            <!--验证码-->
            <div class="form-group">
                <label for="inputSupplierCode" class="col-sm-4 control-label">验证码：</label>
                <div class="col-sm-4">
                    <div class="col-xs-4" style="margin-left: 0; padding-left: 0;">
                        <input type="text" class="form-control" id="inputSupplierCode" name="inimgr">
                    </div>
                    <div class="col-xs-4">
                        <%--<button type="button" class="btn btn-default " style="width: 115px;">验证码</button>--%>
                        <img src="/supplierLoginImg" id="supplierLoginImg" />
                    </div>
                    <div class="col-xs-4">
                        <button type="button" class="btn btn-default" style="width: 106px;" onclick="resetimg()">换一张</button>
                    </div>

                </div>
                <div class="col-sm-4">
                    <p class="form-control-static" style="color: red;"></p>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-5 col-sm-3">
                    <button type="submit" class="btn btn-default btn-primary" style="width: 80px;">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="reset" class="btn" style="width: 80px;">重置</button>
                </div>
                <div class="col-sm-4">
                    <a class="btn btn-default" href="/jsp/web/supplierregister.jsp" role="button" style="background-color:lightgray;width: 160px;">还没有账号，去注册</a>
                </div>
            </div>
        </form>
        <!--供应商登录表单 结束-->
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
