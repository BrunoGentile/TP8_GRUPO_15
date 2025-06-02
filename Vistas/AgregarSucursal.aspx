<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="Vistas.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Sucursal</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 20px;
        }
        .auto-style4 {
            width: 20px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style7 {
            width: 154px;
        }
        .auto-style8 {
            height: 23px;
            width: 154px;
        }
        .auto-style9 {
            width: 168px;
        }
        .auto-style10 {
            height: 23px;
            width: 168px;
        }
        .auto-style11 {
            width: 141px;
        }
        .auto-style12 {
            height: 23px;
            width: 141px;
        }
        .auto-style13 {
            height: 23px;
            width: 185px;
        }
        .auto-style14 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="hlListadoDeSucursales" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style12">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"><strong>GRUPO N°</strong></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"><strong>Agregar Sucursal</strong></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">Nombre Sucursal:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TB_NombreSucursal" runat="server" Width="169px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvSucursal" runat="server" ControlToValidate="TB_NombreSucursal">Ingrese un nombre de sucursal</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">Descripción:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TB_Descripcion" runat="server" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="TB_Descripcion">Ingrese una descripcion</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">Provincia:</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Height="16px" Width="178px">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" InitialValue="--Seleccionar--">Seleccione una provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8">Dirección:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TB_Direccion" runat="server" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TB_Direccion">Ingrese una direccion</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="BTN_Aceptar" runat="server" Text="Aceptar" OnClick="BTN_Aceptar_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="lblSucursalAgregada" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
