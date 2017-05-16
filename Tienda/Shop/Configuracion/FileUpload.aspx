<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="Tienda.Shop.FileUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-bottom: 0px" accept=".csv" />
    <asp:Button ID="btnFileLoad" runat="server" Text="Subir Archivo" OnClick="btnFileLoad_Click" />
    <br />
    <br />
    <asp:Label ID="lblMessage" runat="server" ForeColor="Black" Font-Bold="true"></asp:Label>
    <br />
</asp:Content>
