<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursales.aspx.cs" Inherits="Vistas.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
            width: 15%;
        }
        .auto-style15 {
            width: 4%;
        }
        .auto-style16 {
            width: 16%;
        }
        .auto-style17 {
            width: 15%;
        }
        .auto-style18 {
            height: 23px;
            width: 16%;
        }
        .auto-style19 {
            height: 23px;
            width: 4%;
        }
        .auto-style24 {
            width: 23%;
            font-size: 24px;
        }
        .auto-style25 {
            height: 23px;
            width: 23%;
        }
        .auto-style26 {
            width: 23%;
            font-size: 24px;
            height: 31px;
        }
        .auto-style27 {
            width: 16%;
            height: 31px;
        }
        .auto-style28 {
            height: 31px;
        }
        .auto-style29 {
            width: 15%;
            height: 31px;
        }
        .auto-style30 {
            width: 4%;
            height: 31px;
        }
        .auto-style31 {
            font-size: 15px;
            height: 21px;
        }
        .auto-style32 {
            font-size: 24px;
            height: 30px;
        }
        .auto-style34 {
            height: 30px;
        }
        .auto-style35 {
            width: 15%;
            height: 30px;
        }
        .auto-style36 {
            width: 4%;
            height: 30px;
        }
        .auto-style37 {
            width: 8%;
            height: 30px;
        }
        .auto-style38 {
            width: 8%;
        }
        .auto-style39 {
            height: 23px;
            width: 8%;
        }
        .auto-style40 {
            width: 8%;
            height: 31px;
        }
        .auto-style41 {
            font-size: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31" colspan="7">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hl_AgregarSucursal" runat="server">Agregar Sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hl_ListarSucursales" runat="server">Listado de Sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hl_EliminarSucursales" runat="server">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="2"><strong>Listado de Sucursales</strong></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style25">Busqueda Ingrese Id Sucursal:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style39">
                        <asp:Button ID="btn_Filtrar" runat="server" Text="Filtrar" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btn_MostrarTodo" runat="server" Text="Mostrar Todos" />
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="4">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style40"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
