<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%
    //项目名
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
    <link rel="stylesheet" href="<%=basePath%>home/css/home.css">
    <link rel="stylesheet" href="<%=basePath%>public/bs/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>home/css/raise.css">
    <%--jquery.js必须在引入bootstrap.js之前导入--%>
    <script src="<%=basePath%>public/js/jquery.js"></script>
    <script src="<%=basePath%>public/bs/js/bootstrap.js"></script>
    <script src="<%=basePath%>public/js/docs.min.js"></script>

	<meta charset="UTF-8">
	<link rel="shortcut icon" href="../images/favicon.ico">
	<title>知农之家官方网站-互联网养殖</title>
</head>
<body>
<div class="header">
    <div class="row" style="width: 100%;margin: 0px;">
        <div class="container" style="padding-left: 0px;padding-right: 0px;">
            <div class="col-md-6" style="padding-left: 0px;padding-right: 0px;">
                <p class="" style="line-height: 38px;">
                    <span class="glyphicon glyphicon-equalizer"></span>
                    <span>知农，乐农，富农！</span>
                </p>
            </div>
            <div class="col-md-6" style="padding-left: 0px;padding-right: 0px;">
                <ul class="header-right topullist">
                    <li>
                        <a href="">
                            <span class="glyphicon glyphicon-user"></span>
                            <span>你好，欢迎来到知农之家！</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath%>home/user">
                            <span class="glyphicon glyphicon-star-empty"></span>
                            <span>个人中心</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%=basePath%>home/signout">
                            <span class="glyphicon glyphicon-cog"></span>
                            <span>退出</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- 导航条 -->
<nav style="height:103px;width:100%;position: relative;margin-top: 6px;">
    <div class="row" style="padding:20px 0px">
        <div class="container" style="padding-right:0px;margin-left: 117px;">
            <div class="col-xs-2 col-md-2" style="padding-left:0px;">
                <a href=""><img src="<%=basePath%>home/images/logo.png" title="乐农" alt="乐农"></a>
            </div>
            <style>
                .nav>li>a:focus,.nav>li>a:hover{
                    background-color: white;
                    color: #338c22;
                }
            </style>
            <div class="col-xs-10 col-md-10" style="margin:6px 0px;padding-right: 0px;padding-left:0px;">
                <nav class="navbar" style="width:100%;margin-left: 15px;">
                    <ul class="nav navbar-nav column">
                        <li>
                            <a href="<%=basePath%>" alt="首页" style=" " class="">首页</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>home/raise" alt="掘金农场" style="" class="">掘金农场</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>home/market" alt="欢乐集市" style="" class="">欢乐集市</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>home/science" alt="科学种养" style="" class="uline">科学种养</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>home/user" alt="用户中心" style="" class="">用户中心</a>
                        </li>
                        <li>
                            <a href="<%=basePath%>home/about" alt="关于我们" style="" class="">关于我们</a>
                        </li>
                        <li><a href="<%=basePath%>home/news" alt="媒体报道" style="" class="">媒体报道</a>
                        </li>
                        </li>
                        <li class="clear"></li>
                    </ul>
                    <style>
                        .btn-primary1{
                            border-radius:0px;
                            color:#fff;
                            background-color:#338c22;
                            border-color:#338c22
                        }
                        .btn-primary1:hover{
                            color:#fff;
                            background-color:#2d9920;
                            border-color:#2d9920;
                        }
                        .Search{
                            float:right;
                            border:1px solid #338c22;
                            height: 36px;
                            line-height: 36px;
                            border-radius: 5px;
                            position: relative;
                            width: 220px;
                            z-index: 105;
                            margin-top:10px;
                            margin-right:23px;
                            overflow:hidden;
                        }
                        .Search button,.Search input{
                            border:none #338c22;
                            outline :0px;
                        }
                        .Search button{
                            height: 34px;
                            width: 80px;
                            font-size: 16px;
                            margin:0;
                            float:right;
                        }
                        .Search input{
                            height: 30px;
                            line-height: 30px;
                            padding:7px;
                            width:135px;
                            margin-left:2px;
                        }

                    </style>
                    <script>
                        $('.column li a').mouseenter(function(){
                            $(this).addClass('uline');
                            $('.column li a').not($(this)).removeClass('uline');
                        });
                    </script>

                    <div class="Search" style="left: 44px;">
                        <form action="/search" method="GET">
                            <input type="text" name="name" placeholder="搜索" class="searchinput">
                            <button type="submit" class="btn btn-primary1">搜索</button>
                        </form>
                    </div>
                </nav>
                <script>


                    $('.searchinput').focus(function(){
                        $(this).attr({'placeholder':'输入农资名称'});
                        $('.Search').animate({
                            'width':'267px'
                        },500);
                        $(this).animate({
                            'width':'183px'
                        },500);
                    });
                    $('.searchinput').blur(function(){
                        $(this).css({'width':'135px'}).attr({'placeholder':'农资搜索'});
                        $('.Search').animate({
                            'width':'220px'
                        },500);
                        $(this).animate({
                            'width':'135px'
                        },500);
                    });
                </script>
            </div>
        </div>
    </div>
</nav>

    <!-- 主体内容 -->
    <div class="content">
        <div style="width: 1200px;position: relative;margin: 0 auto;">
            <div class="head">
                <span></span>
                <h2 style="color: #848484;">核对订单信息</h2>
            </div>
            <div class="product">
                <h2>商品信息</h2>
                <img src="<%=basePath%>admin/images/raise/${raiseDetail.raiseThums}" alt="">
                <ul>
                    <li>
                        <span>商品名称</span>
                        <p>${raiseDetail.raiseName}</p>
                    </li>
                    <li>
                        <span>单价</span>
                        <p>${raiseDetail.marketPrice}</p>
                    </li>
                    <li>
                        <span>认养数量</span>
                        <p>${raiseMount}</p>
                    </li>
                    <li>
                        <span>总金额</span>
                        <p>${totalMoney}</p>
                    </li>
                </ul>
            </div>
            <div class="pay">
                <span>支付金额</span>
                <strong>${totalMoney}元</strong>
                <a href="">提交订单</a>
            </div>
            <script>
                $(".pay>a").click(function(){
                    $(this).attr("href","<%=basePath%>home/raise/raise_pay?raiseId=${raiseDetail.raiseId}&raiseMount=${raiseMount}&totalMoney=${totalMoney}");
                });
            </script>
        </div>
    </div>

<footer class="footer">
    <div class="" style="width: 1200px;margin: 0 auto">
        <div class="container">
            <div class="row">
                <div class="col-md-3"><img src="<%=basePath%>home/images/logo.png" alt="" style="margin-top: 20px;"></div>
                <div class="col-md-6">
                    <div class="footer_menu">
                        <ul>
                            <li>关于我们</li>
                            <li>联系我们</li>
                            <li>常见问题</li>
                            <li>加入我们</li>
                        </ul>
                        <div class="copytright">
                            <img src="<%=basePath%>home/images/footer/copyright.png" alt="" style="width: 20px">
                            <span style="margin-left: 10px;">赣公网安备14010902000157号 赣ICP备14001940号-4 </span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <img src="<%=basePath%>home/images/footer/mywx.png" alt="" width="100px">
                    <img src="<%=basePath%>home/images/footer/mygzh.jpg" alt="" width="100px" style="margin-left: 10px;">
                </div>
            </div>
        </div>
    </div>
</footer>

    <div class="gotop" style="display: none;"></div>
</body>
<script src="<%=basePath%>home/js/index.js"></script>
</html>