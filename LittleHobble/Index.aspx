<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LittleHobble.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="baidu-site-verification" content="tY2Cf9bMhz" />
    <meta name="description" content="说出来会被嘲笑的梦想，才有实现的价值，即使跌倒了姿势也很豪迈。" />
    <title>每个人都有点小梦想</title>
    <link rel="SHORTCUT ICON" href="Image/web_logo.ico" />
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="JavaScript/index.js"></script>
    <link href="Css/Index.css" rel="stylesheet" />
    <script type="text/ecmascript">
        function over(obj) {
            $(obj).find("div.mask1").css("display", "none");
        }
        function out(obj) {
            $(obj).find("div.mask1").css("display", "block");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="t">
            <div>
                <div id="tit">
                    <div id="logo">
                        <div>
                            <img src="Image/little hobby.png" />
                        </div>
                        <a href="#">
                            <img src="Image/little hobby.png" />
                        </a>
                        <a href="#" class="code">音乐
                        </a>
                        <a href="../move.aspx" class="code">电影
                        </a>
                        <a href="../code.aspx" class="code">代码
                        </a>
                    </div>
                    <div id="Navigation">
                        <a href="#">
                            <img src="Image/little hobby.png" />
                        </a>
                        <a href="#" class="code">音乐
                        </a>
                        <a href="html/move/move_title.html" class="code">电影
                        </a>
                        <a href="html/code/code_title.html" class="code">代码
                        </a>
                    </div>
                </div>
            </div>
            <div id="top_box">
                <video style="display: block" id="video2" autoplay="autoplay" width="100%"
                    loop="loop" src="../Video/14986116-1-hd.mp4">
                </video>
                <img style="display: none" src="Image/home_bk_7.8b2d29b4.jpg" />
            </div>
            <div id="block_overlay"></div>
            <div id="content">
                <div class="font_overlay">歌曲推荐</div>
                <div class="font_overlay1">The Weeknd-i feel it coming</div>
                <div class="font_overlay2">
                    <img src="Image/video_content_text2.png" />
                </div>
                <div id="bottom"></div>
            </div>
        </div>
        <div id="Small_rabbit"></div>
        <asp:Repeater ID="index_repeater" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div id="jump">
                    <%--<div class="date">- <%#index_aspx.sss(Convert.ToDateTime(Eval("Time")).ToString("yyyy-MM-dd")) %> -</div>--%>
                    <div class="date">- <%#Convert.ToDateTime(Eval("Time")).ToString("yyyy-MM-dd") %> -</div>
                    <div class="jump_link1"  onmouseover="over(this)" onmouseout="out(this)" style="background-image:url(<%#Eval("Index_imagers_path")%>)">
                        <div class="jump_tit">
                            <div class="jump_tit_a">
                                <div class="jump_tit_time"><%#Convert.ToDateTime(Eval("Time")).ToString("yyyy-MM-dd") %></div>
                                <%#Eval("Tittle") %>
                            </div>
                        </div>
                        <div class="mask1"></div>
                    </div>
            </ItemTemplate>
            <FooterTemplate>
                <div id="foot">
                        <div id="font_a_text">
                            <a href="#">意见反馈-用户协议-权利声明-作品投稿-商务合作</a><br />
                            <a href="http://www.miitbeian.gov.cn/">&copy;little hobby每个人都有点小梦想   2017-鄂ICP备17005780号</a>
                        </div>
                    </div>
                </div>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
<!--Google Analytics 网站分析插件-->
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-93214942-1', 'auto');
    ga('send', 'pageview');
</script>
<!--百度自动推送代码-->
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
<!--百度网站分析插件-->
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?6fe003466ad9fb5839265f96907bd2fd";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</html>

