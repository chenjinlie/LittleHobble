﻿<%@ Page Title="" Language="C#" MasterPageFile="~/title.Master" AutoEventWireup="true" CodeBehind="Article.aspx.cs" Inherits="LittleHobble.Article" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="JavaScript/html/move.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-image: url(../../Image/code/IMG_2718-1200x800.jpg); background-repeat: no-repeat; background-size: cover; background-position: center;" id="img">
        <!--<img class="img-responsive" src="image/IMG_2718-1200x800.jpg" style="width:100%;height:70%;" />-->
        <div id="glass"></div>
    </div>



    <div class="col-lg-12 col-md-12 col-sm-12 container" style="background-color: #f9f9f9; height: 90px;">
        <div class="col-lg-4 col-lg-offset-4 container">
            <img class="img-circle" src="../../Image/个人图片.PNG" style="width: 45px; height: 45px; margin-top: 20px;" />
            <img src="../../Image/作者.png" style="margin-left: 20px;" />
            <span style="margin-left: 20px; font-weight: bold;">陈锦烈</span>
            <p style="margin-left: 70px; margin-top: -15px;">来源：自述</p>
        </div>
    </div>
    <!--左边推荐栏-->
    <div class="col-lg-2 col-md-2 visible-lg" style="margin-top: 40px; border-right: 1px solid #dddddd;" id="list">
        <asp:Repeater runat="server" ID="recommend">
            <HeaderTemplate>
                <h2>其他推荐</h2>
            </HeaderTemplate>
            <ItemTemplate>
                <p class="text-capitalize" style="border-top:1px dotted #888888;">
                <div style="height:10px;"></div>
                <a href="code_1.html" style="text-decoration:none;color:#888888;font-size:16px;"><%#Eval("Tittle") %></a><br/>
                <div style="color:#c1cbdd;">2017-3-31</div>
            </p>
            </ItemTemplate>
            <FooterTemplate>

            </FooterTemplate>
        </asp:Repeater>
    </div>
    <!--左边推荐栏完成-->
    <div class="col-lg-10 col-md-10">
        <div class="page-header" style="text-align: center;">
            <h1>解决delete 删除sql语句，标识还保留删除之前的问题
                   <!-- <small style="padding-left:40px;">无名</small>-->
            </h1>

        </div>
        <div class="col-lg-2">
        </div>
        <%--<div class="col-lg-8" style="overflow-y: scroll;" id="article">
            <p>
                我有一些数据，想要删除，首先想到的是delete，但是它会保留之前的标识，后来想用truncate来进行删除，但是，它会全部删除，并且不能加条件，只能回过头使用delete，以下是解决delete删除不保留之前的标识值
            </p>
            <p>
                <img src="../../Image/code/文章1/文章1_1.png" />
            </p>
            <p>
                delete from Emplyoee where EmplyoeeId between 19 and 31
            </p>
            <p>
                <img src="../../Image/code/文章1/文章1_2.png" />
            </p>
            <p>
                DBCC CHECKIDENT ('dbo.Emplyoee',reseed, 7)---标识从8开始<br />
                insert into Emplyoee values('cc','男','1996-10-01',201,5500,'湖北十堰','中国')<br />
                insert into Emplyoee values('cc1','男','1996-10-01',201,5500,'湖北十堰','中国')<br />
                insert into Emplyoee values('cc2','男','1996-10-01',201,5500,'湖北十堰','中国')<br />
            </p>
            <p>
                <img src="../../Image/code/文章1/文章1_3.png" />
            </p>
            <p>
                ok，解决了！<br />
                DBCC CHECKIDENT ('dbo.Emplyoee',reseed, 0)<br />
                DBCC CHECKIDENT ：如果存在大量数据删除，考虑在删除后，使用 dbcc checkident 重置一下自增值<br />
                是标识从1开始，dbo.Emplyoee 是表名，0这里自定义，如果从4开始，那么就写3，其它都是固定的
                <br />
            </p>
            <div style="height: 200px;">
            </div>
        </div>--%>


    </div>
</asp:Content>
