<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Tienda.Shop.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/productos.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            dEBES INICIAR SESION
        </AnonymousTemplate>
        <LoggedInTemplate>
            hello world
        </LoggedInTemplate>
    </asp:LoginView>
    
    <div class="container">

        <asp:Repeater runat="server" ID="rpt">
            <ItemTemplate> 
               
                <div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img width="245" height="196" class="img-responsive" style="" src="<%#Eval("Url").ToString().Length > 0 ? Eval("Url").ToString() : "http://placehold.it/500x400"%>" alt="<%#Eval("Title") %>">
      			<h4><%#Eval("Title") %></h4>
      			<div class="ratings">
                      <%#GetStars(Eval("Stars")) %>
                </div>
      			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">$<%#Eval("Price") %></p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > BUY ITEM</button>
      				</div>
      				
      			</div>
    		</span>
  		&nbsp;&nbsp;</div>


            </ItemTemplate>
        </asp:Repeater>
</div>

</asp:Content>
