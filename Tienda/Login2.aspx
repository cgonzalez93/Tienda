<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Tienda.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <title>Inicio de Sessión</title>
    <style>
        cienxciento {
            width: 100%;
        }
    </style>
</head>
<body style="background-color:#C8C8C8;">
    <div class="container">
        <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title"><strong>Inicio de Sesión</strong></div>
                </div>
                <div style="padding-top: 30px" class="panel-body">
                    <form id="form1" runat="server" role="form" class="form-horizontal" >
                        <asp:Login ID="Login1" runat="server" OnLoggedIn="Login1_LoggedIn" CssClass="table table-condensed cienxciento">
                            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                            <LayoutTemplate>
                                <center>
                                <table class="cienxciento">
                                    <tr style="width:100%;">
                                        <td >
                                            <table class="cienxciento">
                                                <tr>
                                                    <td colspan="2" style="margin-bottom: 25px" >
                                                        <label for="UserName">Usuario*:</label>
                                                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" CssClass="text-danger" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">Usuario Requerido</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr style="margin-bottom: 25px;" >
                                                    <td colspan="2" style="margin-bottom: 25px">
                                                        <label for="Password">Contraseña*:</label>
                                                        <asp:TextBox ID="Password" CssClass="form-control cienxciento" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" CssClass="text-danger" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">Contraseña Requerida</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <%--<tr>
                                                    <td colspan="2">
                                                        <asp:CheckBox ID="RememberMe" runat="server" Text=" Recordármelo la próxima vez." />
                                                    </td>
                                                </tr>--%>
                                                <tr style="margin-top: 30px" class="form-group">
                                                    <td class="text-danger" colspan="2">
                                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    </td>
                                                </tr>
                                                <tr style="margin-top: 30px" class="form-group">
                                                    <td class="col-sm-12 controls" style="margin-top: 20px">
                                                        <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-success" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                </center>
                            </LayoutTemplate>
                            <LoginButtonStyle CssClass="btn btn-success" />
                            <TextBoxStyle CssClass="" />
                            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                        </asp:Login>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
