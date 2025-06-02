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
                        <asp:HyperLink ID="hl_AgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hl_ListarSucursales" runat="server">Listado de Sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hl_EliminarSucursales" runat="server" NavigateUrl="EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
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
                        <asp:Button ID="btn_MostrarTodo" runat="server" Text="Mostrar Todos" OnClick="btn_MostrarTodo_Click" />
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="btn_FiltrarDesc" runat="server" OnClick="btn_FiltrarDesc_Click" Text="Orden Descendente" />
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:RegularExpressionValidator ID="rev_valorNumerico" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationExpression="^[0-9]+$">Ingresar un valor numérico</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style39">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41" colspan="7">
                        <asp:GridView ID="gvSucursales" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Id_Sucursal" HeaderText="ID_Sucursal" />
                                <asp:BoundField DataField="NombreSucursal" HeaderText="Nombre" />
                                <asp:BoundField DataField="DescripcionSucursal" HeaderText="Descripción" />
                                <asp:BoundField DataField="DescripcionProvincia" HeaderText="Provincia" />
                                <asp:BoundField DataField="DireccionSucursal" HeaderText="Dirección" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </td>
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
                    <td class="auto-style24">
                        <asp:DropDownList ID="DDL_FiltrarProvincia" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
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
