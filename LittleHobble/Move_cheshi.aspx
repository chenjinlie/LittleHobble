<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Move_cheshi.aspx.cs" Inherits="LittleHobble.Move_cheshi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>每个人都有点小梦想</title>
    <link rel="SHORTCUT ICON" href="Image/web_logo.ico" />
    <script src="JavaScript/jquery-3.1.1.min.js"></script>
    <link href="Css/bootstrap.css" rel="stylesheet" />
    <link href="Css/html/move_title.css" rel="stylesheet" />
    <script src="JavaScript/bootstrap.js"></script>
    <script src="JavaScript/html/move_title.js"></script>
</head>
<body>
<form id="form1" runat="server">
        <!--导航栏-->
        <nav class="navbar-inverse" role="navigation" style="background-color: #393a44;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../../index.html" style="color: #fff;">little hobby</a>
                <!--<a class="navbar-brand" href="#"><img class="img-responsive" src="image/little hobby.png" /></a>-->
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#about" style="color: #fff;">代码</a></li>
                    <li><a href="#contact" style="color: #fff;">音乐</a></li>
                    <li><a href="move_title.html" style="color: #fff;">电影</a></li>
                    <li class="dropdown" style="color: #fff;">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: #fff;">更多<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">代码技巧</a></li>
                            <li class="divider">这是一条分割线</li>
                            <li><a href="#">最新文章</a></li>
                            <li><a href="#">关于我</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <!--导航栏部分完成-->
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-image: url(../../Image/move/timg.jpg); background-repeat: no-repeat; background-size: cover; background-position: center;" id="img">
            <div id="glass"></div>
        </div>
        <div id="content">
            <asp:Repeater ID="Repeater_title" runat="server">
                <HeaderTemplate>
                    <div id="content_box">
                    <h1 style="margin-top: 50%; text-align: center;">影片推荐</h1>
                </HeaderTemplate>
                <ItemTemplate>
                        <dl>
                            <dd>
                                <a href="Guardians of the Galaxy.html">
                                    <img class="content_img" src="<%#Eval("Index_imagers_path") %>" /></a></dd>
                            <dt>
                                <a href="La La Land.html">
                                    <div style="font-size: 18px; font-family: 'Microsoft YaHei'; font-weight: 600;"><%#Eval("Tittle") %></div>
                                </a>
                                <br />
                                <img src="../../Image/作者.png" />&nbsp;&nbsp;<%#Eval("UserName") %><br />
                                <div style="font-weight: 400; color: #808080; margin-top: 2%;"><%#Eval("ArticleDescription") %></div>
                            </dt>
                        </dl>
                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
