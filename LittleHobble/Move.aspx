<%@ Page Title="" Language="C#" MasterPageFile="~/title.Master" AutoEventWireup="true" CodeBehind="Move.aspx.cs" Inherits="LittleHobble.Move" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                <a href="article_ceshi.html?<%#Eval("ID") %>">
                                    <img class="content_img" src="<%#Eval("Index_imagers_path") %>" /></a></dd>
                            <dt>
                                <a href="article_ceshi.html?<%#Eval("ID") %>">
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
</asp:Content>
