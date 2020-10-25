<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-10-11
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8"/>
    <!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">-->
    <title>首页</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="/css/mybootstrap.css"/>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/carousel.js"></script>
    <script type="text/javascript" src="/js/mybootstrap.js"></script>
</head>

<body>
<!--头部的开始-->
<!--首页顶层导航条开始-->
<div class="container-fluid" style="background-color: #E6E2EB;height: 25px;">
    <div class="container" style="height: 25px;">
        <div class="row" style="line-height: 25px;">
            <div class="col-xs-4" style="">
                <span id="nowTime"></span>
            </div>
            <div class="col-xs-4 text-muted" id="kefuAndjianyi">
                <div class="col-xs-6">
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;<span>客服：<a href="#">001-123456789</a>
                </div>
                <div class="col-xs-2">
                    <a href="#" class="text-muted">服务指南</a>
                </div>
                <div class="col-xs-2">
                    <a href="#" class="text-muted">投诉建议</a>
                </div>
                <div class="col-xs-2">
                    <a href="#" class="text-muted">法律声明</a>
                </div>
            </div>
            <div class="col-xs-4 text-right text-muted" id="loginAndRegister">
                欢迎，<span id="myuser"></span>|&nbsp;
                <a class="text-muted" href="/jsp/web/supplierlogin.jsp">供应商登录</a>&nbsp;|&nbsp;
                <a class="text-muted" href="/jsp/userlogin.jsp">系统员工登录</a>&nbsp;|&nbsp;
                <a class="text-muted" href="/jsp/web/supplierregister.jsp">供应商注册</a>
            </div>
        </div>
    </div>
</div>
<!--首页顶层导航条结束-->
<!--主体container开始-->
<div class="container">
    <!--首页中间导航条开始-->
    <div class="row" style="height: 40px;">
        <div class="col-xs-8">
            <div class="text-muted text-left">
                <h4 style="font-weight: bold;color: #52A6D5;">中国某某招标系统</h4></div>
        </div>
        <div class="col-xs-4">
            <div id="" style="margin-top: 5px;">
                <form class="form-inline">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" placeholder="输入关键字">
                        <span class="input-group-btn">
        							<button class="btn btn-sm btn-info" type="button">搜索</button>
      							</span>
                    </div>
                    <!-- /input-group -->
                </form>
            </div>

        </div>
    </div>
    <!--首页中间导航条结束-->
    <!--首页导航开始-->
    <div id="mydaohang2" class="row" id="mydaohang">
        <div class="col-xs-1">
            <a href="index.html">
                <li class="dhzt">首页</li>
            </a>
        </div>
        <div class="col-xs-1">
            <a href="#">
                <li>公司简介</li>
            </a>
        </div>
        <div class="col-xs-1">
            <a href="zbcggg_list.html">
                <li>招标采购公告</li>
            </a>
        </div>
        <div class="col-xs-1">
            <a href="#">
                <li>中标公示</li>
            </a>
        </div>
        <div class="col-xs-1">
            <a href="purchase.html">
                <li>采购条件</li>
            </a>
        </div>
        <div class="col-xs-1">
            <a href="#">
                <li>供应商信息</li>
            </a>
        </div>

    </div>
    <!--首页导航条结束-->
    <!--幻灯片开始-->
    <div id="huandengpian" class="row clearfix" data-ride="carousel" data-interval="3000">
        <div class="col-xs-8 column" style="padding: 0px;width: 890px;">
            <div class="carousel slide" id="carousel-425774">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-425774">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-425774">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-425774" class="active">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item" height="100px">
                        <img alt="" src="/img/slider3.jpg"/>
                    </div>
                    <div class="item" height="100px">
                        <img alt="" src="/img/slider_4.jpg"/>
                    </div>
                    <div class="item active" height="100px">
                        <img alt="" src="/img/slider5.jpg"/>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-425774" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#carousel-425774" data-slide="next"><span
                        class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
        <div class="col-xs-1 column" style="width: 1px;height: 166px;">

        </div>
        <div class="col-xs-3 column xttz">
            <div class="col-xs-12 column" style="height: 30px;background:#52A6D5;">
                <i class="glyphicon glyphicon-bullhorn"></i>&nbsp;系统通知</span>
            </div>
            <div class="col-xs-12 column xttznl">
                <i class="glyphicon glyphicon-bell"></i>&nbsp;
                <a href="#">系统停机通告</a>--<span>2017-12-04</span>
            </div>
            <div class="col-xs-12 column xttznl">
                <i class="glyphicon glyphicon-bell"></i>&nbsp;
                <a href="#">系统停机通告</a>--<span>2017-12-04</span>
            </div>
            <div class="col-xs-12 column xttznl">
                <i class="glyphicon glyphicon-bell"></i>&nbsp;
                <a href="#">系统停机通告</a>--<span>2017-12-04</span>
            </div>
            <div class="col-xs-12 column xttznl">
                <i class="glyphicon glyphicon-bell"></i>&nbsp;
                <a href="#">系统停机通告</a>--<span>2017-12-04</span>
            </div>

        </div>
    </div>
</div>
<!--幻灯片结束-->
<!--头部的结束-->
<!--首页主体内容开始-->
<div class="container">

    <div id="zbxmgg" class="row">
        <div class="col-xs-6 marAndPadd">
            <i class="glyphicon glyphicon-list"></i> <span>招标项目公告</span>
        </div>
        <div class="col-xs-6 marAndPadd">
            <i class="glyphicon glyphicon-shopping-cart"></i> <span>询价公告</span>
        </div>
    </div>
    <div class="row">
        <div id="mybody1" class="col-xs-6">
            <div id="mybody11" class="col-xs-10" style="border-bottom: 0px;">
                <div class="col-xs-6">

                    <div class="col-xs-4">

                        <a href="#">
                            <li class="zbzt">正在招标</li>
                        </a>

                    </div>
                    <div class="col-xs-4">
                        <a href="#">
                            <li style="border-right: 0px;">即将开标</li>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="#">
                            <li>已经结束</li>
                        </a>
                    </div>

                </div>
            </div>

            <div id="mybody12" class="col-xs-2">
                <a href="zbzzzb_list.html">更多>></a>
            </div>
            <!--正在招标内容开始-->
            <div class="col-xs-12 marAndPadd" id="zzzb01">
                <jsp:include page="/selectNowProjectbiddingWeb"></jsp:include>

            </div>
            <!--正在招标内容结束-->
            <!--即将开标内容开始-->
            <div class="col-xs-12 marAndPadd" style="display: none;" id="jjkb01">
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">22222222222222222222222222222222222222222222222222222222222 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">22222222222222222222222222222222222222222222222222222222222 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">22222222222222222222222222222222222222222222222222222222222 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
            </div>
            <!--即将开标内容结束-->
            <!--已经结束内容开始-->
            <div class="col-xs-12 marAndPadd" style="display: none;" id="yjjs01">
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">3333333333333333333333333333333333333333333333333333333333 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">3333333333333333333333333333333333333333333333333333333333 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">3333333333333333333333333333333333333333333333333333333333 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-edit"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
            </div>
            <!--已经结束内容结束-->
        </div>

        <div id="mybody2" class="col-xs-6">
            <div id="mybody21" class="col-xs-10" style="border-bottom: 0px;">
                <div class="col-xs-6">

                    <div class="col-xs-4">

                        <a href="#">
                            <li class="zbzt">正在进行</li>
                        </a>

                    </div>
                    <div class="col-xs-4">
                        <a href="#">
                            <li>已经结束</li>
                        </a>
                    </div>
                </div>
            </div>

            <div id="mybody22" class="col-xs-2">
                <a href="#">更多>></a>
            </div>
            <!--询价公告正在进行内容开始-->
            <div class="col-xs-12 marAndPadd" id="xjggzzjx01">
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
            </div>
            <!--询价公告正在进行内容结束-->
            <!--询价公告已经结束内容开始-->
            <div class="col-xs-12 marAndPadd" id="xjggyjjs01" style="display: none;">
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">222222222222222222222222222222222222222222222222222222222 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">222222222222222222222222222222222222222222222222222222222 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">222222222222222222222222222222222222222222222222222222222 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
                <div class="col-xs-10">
                    <i class="glyphicon glyphicon-usd"></i>&nbsp;
                    <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
                </div>
                <div class="col-xs-2">
                    <span class="#">2017-11-29</span>
                </div>
            </div>
            <!--询价公告已经结束内容结束-->
        </div>
    </div>
    <!--招标上部分-->

    <div class="row">
        <div id="mybody1" class="col-xs-6">
            <div id="mybody11" class="col-xs-10" style="border-bottom: 0px;">
                <div id="zbgs" class="col-xs-6">

                    <i class="glyphicon glyphicon-list"></i> <span>中标公告</span>

                </div>
            </div>

            <div id="mybody12" class="col-xs-2">
                <a href="#">更多>></a>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-check"></i>&nbsp;
                <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-check"></i>&nbsp;
                <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-check"></i>&nbsp;
                <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-check"></i>&nbsp;
                <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-check"></i>&nbsp;
                <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-check"></i>&nbsp;
                <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
        </div>

        <div id="mybody2" class="col-xs-6">
            <div id="mybody21" class="col-xs-10" style="border-bottom: 0px;">
                <div id="fbgs" class="col-xs-6 col-sm-6">

                    <i class="glyphicon glyphicon-list"></i> <span>废标公告</span>

                </div>
            </div>

            <div id="mybody22" class="col-xs-2">
                <a href="#">更多>></a>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-trash"></i>&nbsp;
                <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-trash"></i>&nbsp;
                <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-trash"></i>&nbsp;
                <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-trash"></i>&nbsp;
                <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-trash"></i>&nbsp;
                <a href="#">中国移动河南公司郑州分公司郑东新区及高架快速路租用通信管道项目_采购公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
            <div class="col-xs-10">
                <i class="glyphicon glyphicon-trash"></i>&nbsp;
                <a href="#">2017-2019年技术及综合类培训服务框架采购项目（中移全通）_比选公告 </a>
            </div>
            <div class="col-xs-2">
                <span class="#">2017-11-29</span>
            </div>
        </div>
    </div>
    <!--首页主体内容结束-->
</div>
<!--主体container结束-->
<div class="container">
    <!--首页尾部开始-->
    <div class="row">
        <div class="col-xs-12" style="height: 60px;border: 1px dotted #D4D4D4;text-align: center;line-height: 30px;">
            Copyright @ 2012-2030 中国某某股份有限公司 版权所有 京ICP备14004955号<br/> 技术支持：某某科技有限公司

        </div>
    </div>
    <!--首页尾部结束-->
</div>
</body>

</html>
