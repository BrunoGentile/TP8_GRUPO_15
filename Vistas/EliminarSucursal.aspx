<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="Vistas.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Sucursal</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style11 {
            width: 160px;
        }
        .auto-style12 {
            width: 160px;
            height: 23px;
        }
        .auto-style13 {
            width: 169px;
        }
        .auto-style14 {
            width: 169px;
            height: 23px;
        }
        .auto-style15 {
            width: 132px;
        }
        .auto-style16 {
            width: 132px;
            height: 23px;
        }
        .auto-style17 {
            width: 48px;
        }
        .auto-style18 {
            width: 48px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal - Copia.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style15">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style18"></td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Eliminar Sucursal</strong></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="lblSucursal" runat="server" Text="Ingresar ID Surcursal: "></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtIDSucursal" runat="server" Width="272px"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="btnElminar" runat="server" Text="Eliminar" OnClick="btnElminar_Click" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style18"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
