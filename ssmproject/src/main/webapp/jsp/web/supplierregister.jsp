<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-11
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
    <title>供应商注册</title>
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
    var supplierNameResult = false;
    var supplierPhoneResult = false;
    var supplierAddressResult = false;
    var supplierTypeResult = false;
    var supplierFileResult = false;

    $(function() {
        /*验证用户名*/
        $("#inputUserName").blur(function() {
            var userNameInfo = $(this).val();
            if(userNameInfo.length < 6) {
                $(this).parent().next("div").children("p").html("*用户名为组合形式，用户名长度必须为6到16位！");
                return;
            }
            if(userNameInfo.length > 16) {
                $(this).parent().next("div").children("p").html("*用户名为组合形式，用户名长度必须为6到16位！");
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
            if(passwordInfo.length < 6) {
                $(this).parent().next("div").children("p").html("*密码的长度必须为6到16位！");
                return;
            }
            if(passwordInfo.length > 16) {
                $(this).parent().next("div").children("p").html("*密码的长度必须为6到16位！");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            passwordResult = true;
        });
        $("#inputPassword").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证供应商名字*/
        $("#inputSupplierName").blur(function() {
            var supplierNameInfo = $(this).val();
            var regSupplierName = /^[\u4e00-\u9fa5]{2,4}$/; /*昵称必须为2-4个汉字*/
            if(!regSupplierName.test(supplierNameInfo)) {
                $(this).parent().next("div").children("p").html("供应商姓名为必填项，为2~4个汉字");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='images/register_write_ok.gif'>");
            supplierNameResult = true;
        });
        $("#inputSupplierName").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证供应商手机号码*/
        $("#inputSupplierPhone").blur(function() {
            var supplierPhoneInfo = $(this).val();
            var regSupplierPhone = /^1\d{10}$/; /*以1来头的11位手机号码的正则表达式*/
            if(!regSupplierPhone.test(supplierPhoneInfo)) {
                $(this).parent().next("div").children("p").html("手机号码应为1开头的11位纯数字");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='images/register_write_ok.gif'>");
            supplierPhoneResult = true;
        });
        $("#inputSupplierPhone").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证供货商所在的地址*/
        $("#inputSupplierAddress").blur(function() {
            var supplierAddressInfo = $(this).val();
            if(supplierAddressInfo.length < 6) {
                $(this).parent().next("div").children("p").html("*请填写正确的供货商所在的地址");
                return;
            }
            if(supplierAddressInfo.length > 16) {
                $(this).parent().next("div").children("p").html("*请填写正确的供货商所在的地址");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            supplierAddressResult = true;
        });
        $("#inputSupplierAddress").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证供货商所属的类型*/
        $("#inputSupplierType").blur(function() {
            var supplierTypeInfo = $(this).val();
            var op = $(this).children("option[value='" + supplierTypeInfo + "']").text();
            if(supplierTypeInfo == "" || supplierTypeInfo == null) {
                $(this).parent().next("div").children("p").html("*请选择相应的供应商类型");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            supplierTypeResult = true;
            //alert(supplierTypeInfo);//获取选中的具体项的value值
            //alert(op);//获取选中的具体项的文本，如供应冶炼原材料
        });
        $("#inputSupplierType").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
        /*验证用户的资质文件图片（是否有选择上传）*/
        $("#inputSupplierFile").blur(function() {
            var supplierFileInfo = $(this).val();
            //					alert(supplierFileInfo);
            if(supplierFileInfo == "" || supplierFileInfo == null) {
                $(this).parent().next("div").children("p").html("*资质文件图片为必填项，请选择上传的文件图片");
                return;
            }
            $(this).parent().next("div").children("p").html("<img src='img/register_write_ok.gif'>");
            supplierTypeResult = true;
        });
        $("#inputSupplierFile").focus(function() {
            $(this).parent().next("div").children("p").html("");
        });
    });

    function checkRegister() {
        if(userNameResult & passwordResult & supplierNameResult & supplierPhoneResult & supplierAddressResult & supplierTypeResult & supplierFileResult)
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
                <b>供应商用户注册</b>
            </div>
        </div>

        <div class="row">
            <div class="col-xs-12" style="color:red;height: 40px;line-height: 40px;">
                *为保障您顺利使用本系统，请根据以下提示认真填写注册信息
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="color:red;height: 40px;line-height: 40px;">
                *以下带红星号的是必填项，必须按要求认真填写
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12" style="color:red;height: 40px;line-height: 40px;">
                *上传图片必须处理在1兆(1MB)以内
            </div>
        </div>
        <fieldset>
            <legend>注册基本信息</legend>
        </fieldset>
        <!--供应商注册表单 开始-->
        <form class="form-horizontal" action="/supplierRegisterWeb" method="post">
            <!--用户名-->
            <div class="form-group">
                <label for="inputUserName" class="col-sm-3 control-label">用户名：</label>
                <div class="col-sm-3">
                    <input type="text" name="uname" class="form-control" id="inputUserName" placeholder="用户名">
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*用户名为字母数字下划线等字符的组合，长度为6~16个字符</p>
                </div>
            </div>
            <!--密码-->
            <div class="form-group">
                <label for="inputPassword" class="col-sm-3 control-label">密码：</label>
                <div class="col-sm-3">
                    <input type="text" name="pwd" class="form-control" id="inputPassword" placeholder="密码">
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*密码为登录的依据，请务必认真填写,密码长度为6~16个字符</p>
                </div>
            </div>
            <!--供应商名字-->
            <div class="form-group">
                <label for="inputSupplierName" class="col-sm-3 control-label">供应商名字：</label>
                <div class="col-sm-3">
                    <input type="text" name="suppliername" class="form-control" id="inputSupplierName" placeholder="供应商名字">
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*请依据真实情况填写供应商的实际姓名，姓名为2~4个汉字</p>
                </div>
            </div>
            <!--手机号码-->
            <div class="form-group">
                <label for="inputSupplierPhone" class="col-sm-3 control-label">供应商手机号码：</label>
                <div class="col-sm-3">
                    <input type="text" name="tel" class="form-control" id="inputSupplierPhone" placeholder="供应商手机号码">
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*请依据真实情况填写供应商的预留手机号码</p>
                </div>
            </div>
            <!--供应商地址-->
            <div class="form-group">
                <label for="inputSupplierAddress" class="col-sm-3 control-label">供应商所在的地址：</label>
                <!--<div class="col-sm-1">
                    <select class="form-control" style="" id="inputSupplierProvince">
                        <option name="province" value="1">北京市</option>
                        <option name="province" value="2">上海市</option>
                        <option name="province" value="3">天津市</option>
                        <option name="province" value="4">重庆市</option>
                        <option name="province" value="5">山西省</option>
                        <option name="province" value="6">河北省</option>
                    </select>
                </div>
                <div class="col-sm-1">
                    <select class="form-control" style="" id="inputSupplierCity">
                        <option name="city" value="1">海淀区</option>
                        <option name="city" value="2">朝阳区</option>
                        <option name="city" value="3">东城区</option>
                        <option name="city" value="4">西城区</option>
                        <option name="city" value="5">怀柔区</option>
                        <option name="city" value="6">丰台区</option>
                    </select>
                </div>-->
                <div class="col-sm-3">
                    <input type="text" name="address" class="form-control" id="inputSupplierAddress" placeholder="供应商所在的地址">
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*请依据真实情况填写供应商所在地址</p>
                </div>
            </div>
            <!--供应商所属类型，供应原材料类型、半加工品类型等-->
            <div class="form-group">
                <label for="inputSupplierType" class="col-sm-3 control-label">供应商所属类型：</label>
                <!--<div class="col-sm-3">
                    <input type="text" class="form-control" id="inputSupplierType" placeholder="供应商所属类型">
                </div>-->
                <div class="col-sm-3">
                    <select class="form-control" style="" id="inputSupplierType">
                        <option name="type" value="1">供应冶炼原材料</option>
                        <option name="type" value="2">供应化工原材料</option>
                        <option name="type" value="3">供应冶炼设备</option>
                        <option name="type" value="4">供应化工设备</option>
                    </select>
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*请依据真实情况选择供应商所属类型</p>
                </div>
            </div>
            <!--供应商资质文件-->
            <div class="form-group">
                <label for="inputSupplierFile" class="col-sm-3 control-label">供应商的资质文件图片：</label>
                <!--<div class="col-sm-3">
                    <input type="file" class="form-control" id="inputSupplierFile" placeholder="供应商的资质文件图片">
                </div>
                <div class="col-sm-6">
                    <p class="form-control-static" style="color: red;">*请依据真实情况上传对应的资质文件图片</p>
                </div>-->
                <input type="file" id="inputSupplierFile" class="col-sm-3 control-label">
                <div class="col-sm-6">
                    <p class="help-block" class="col-sm-6 form-control-static" style="color: red;">*请依据真实情况上传对应的资质文件图片</p>
                </div>

            </div>
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-3">
                    <button type="submit" class="btn btn-default btn-primary" style="width: 80px;">提交</button>
                    <button type="reset" class="btn " style="width: 80px;">重置</button>
                </div>
                <div class="col-sm-6">
                    <a class="btn btn-default" href="/jsp/web/supplierlogin.jsp" role="button" style="background-color:lightgray;width: 160px;">已有账号，去登陆</a>
                </div>
            </div>
        </form>
        <!--供应商注册表单 结束-->
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
