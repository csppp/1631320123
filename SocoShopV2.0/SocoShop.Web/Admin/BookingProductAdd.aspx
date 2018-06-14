﻿<%@ Page Language="C#" MasterPageFile="MasterPage.Master" AutoEventWireup="True" CodeBehind="BookingProductAdd.aspx.cs" Inherits="SocoShop.Web.Admin.BookingProductAdd" %><%@ Import Namespace="SocoShop.Common" %><%@ Register Namespace="SkyCES.EntLib" Assembly="SkyCES.EntLib" TagPrefix="SkyCES"%><asp:Content ID="MasterContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server"><div class="position"><img src="/Admin/Style/Images/PositionIcon.png"  alt=""/>缺货登记查看</div><div class="add">	<ul>		<li class="left">产品名称：</li>		<li class="right"><%=bookingProduct.ProductName%></li>	</ul>	<ul>		<li class="left">联系人：</li>		<li class="right"><%=bookingProduct.RelationUser %></li>	</ul>	<ul>		<li class="left">Email：</li>		<li class="right"><%=bookingProduct.Email %></li>	</ul>	<ul>		<li class="left">联系电话：</li>		<li class="right"><%=bookingProduct.Tel %></li>	</ul>	<ul>		<li class="left">用户备注：</li>		<li class="right"><%=bookingProduct.UserNote %></li>	</ul>	<ul>		<li class="left">登记时间：</li>		<li class="right"><%=bookingProduct.BookingDate.ToString("yyyy-MM-dd") %></li>	</ul>	<ul>		<li class="left">IP：</li>		<li class="right"><%=bookingProduct.BookingIP %></li>	</ul>	<ul>		<li class="left">用户名：</li>		<li class="right"><%if(bookingProduct.UserID==0){ResponseHelper.Write("匿名用户");}else{ResponseHelper.Write(bookingProduct.UserName);} %></li>	</ul>	<ul>		<li class="left">是否处理：</li>		<li class="right"><asp:RadioButtonList ID="IsHandler" runat="server" RepeatDirection="Horizontal"><asp:ListItem Value="0">否</asp:ListItem><asp:ListItem Value="1">是</asp:ListItem></asp:RadioButtonList></li>	</ul>	<ul>		<li class="left">处理备注：</li>		<li class="right"><SkyCES:TextBox ID="HandlerNote" CssClass="input" runat="server"  TextMode="MultiLine" Width="400px" Height="50px" /></li>	</ul></div><div class="action">    <asp:Button CssClass="button" ID="SubmitButton" Text=" 确 定 " runat="server"  OnClick="SubmitButton_Click" /></div></asp:Content>