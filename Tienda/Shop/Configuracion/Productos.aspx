<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Tienda.Shop.Configuracion.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>Listado productos</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Product,Stars" 
        DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered" OnRowDataBound="GridView1_RowDataBound" >
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id_Product" HeaderText="id_Product" InsertVisible="False" ReadOnly="True" SortExpression="id_Product"  Visible="false"/>
            <asp:BoundField DataField="Title" HeaderText="Producto" SortExpression="Title" />
            <asp:BoundField DataField="Description" HeaderText="Descripcion" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Precio" SortExpression="Price" />
            <asp:TemplateField HeaderText="Rating" SortExpression="Stars">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Stars") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                   <%#GetStars(Eval("Stars")) %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <PagerStyle CssClass="pagination-ys" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:TiendaConnectionString %>" 
    SelectCommand="SELECT [id_Product], [Title], [Description], [Price], [Stars] FROM [Products]"></asp:SqlDataSource>
</asp:Content>
