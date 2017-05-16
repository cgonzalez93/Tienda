<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Tienda.Shop.Configuracion.Producto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Producto</h1>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_Product" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:           
            <asp:Label ID="id_ProductLabel1" runat="server" Text='<%# Eval("id_Product") %>' />
            <br />
            Titulo:           
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Descripción:           
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Url Imagen:           
            <asp:TextBox ID="UrlTextBox" runat="server" Text='<%# Bind("Url") %>' />
            <br />
            Price:           
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Titulo:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Descripción:
           
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Url Imagen:
            <asp:TextBox ID="UrlTextBox" runat="server" Text='<%# Bind("Url") %>' />
            <br />
            Precio:           
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="id_ProductLabel" runat="server" Text='<%# Eval("id_Product") %>' />
            <br />
            Titulo:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Descripción:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <br />
            Url Imagen:
            <asp:Label ID="UrlLabel" runat="server" Text='<%# Bind("Url") %>' />
            <br />
            Precio:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiendaConnectionString %>" InsertCommand="INSERT INTO Products(Title, Description, Url, Price) VALUES (@title, @description, @url, @price)" SelectCommand="SELECT id_Product, Title, Description, Url, Price FROM Products">
        <InsertParameters>
            <asp:Parameter Name="title" />
            <asp:Parameter Name="description" />
            <asp:Parameter Name="url" />
            <asp:Parameter Name="price" />
        </InsertParameters>
    </asp:SqlDataSource>

</asp:Content>
