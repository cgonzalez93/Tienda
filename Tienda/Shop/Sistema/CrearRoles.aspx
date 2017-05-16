<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="CrearRoles.aspx.cs" Inherits="Tienda.Shop.Configuracion.Sistema.CrearRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">Creacion de roles</div>
        <div class="panel-body">
            <label>Crear nuevo Rol </label> <asp:TextBox runat="server" ID="txtRole"></asp:TextBox>

                        
            <asp:Button runat="server" ID="btnCrearRole" Text="Crear role" OnClick="btnCrearRole_Click" CssClass="btn-primary" />
        </div>
    </div>
    

    <asp:GridView ID="RoleList" runat="server" AutoGenerateColumns="False" OnRowDeleting="RoleList_RowDeleting" CssClass="table-striped">
        <Columns>
            <asp:TemplateField HeaderText="Role">
                <ItemTemplate>
                    <asp:Label runat="server" ID="RoleNameLabel" Text='<%# Container.DataItem %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
