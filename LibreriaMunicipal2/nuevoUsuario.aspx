<%@ Page Title="Nuevo Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nuevoUsuario.aspx.cs" Inherits="LibreriaMunicipal2.nuevoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ingrese un Nuevo Usuario</h1>
    <br />
    <br />
    <table class="nav-justified" style="width: 75%; height: 204px; margin-bottom: 11px; margin-top: 0px;">
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Documento Nuevo Usuario</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtusuDocumento" runat="server" Width="620px">Ingrese el Documento del Nuevo Usuario</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Nombre del Nuevo Usuario</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #F8FAFA;" align="center">
                <asp:TextBox ID="TxtusuNombre" runat="server" Width="620px">Ingrese el Nombre del Usuario</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Dirección</td>
            <td style="border-style: solid; border-width: 1px; height: 52px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtusuDireccion" runat="server" Width="338px">Ingrese la Dirección del Usuario</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Teléfono</td>
            <td style="border-style: solid; border-width: 1px; height: 52px; background-color: #F8FAFA;" align="center">
                <asp:TextBox ID="TxtusuTelefono" runat="server" Width="618px">Ingrese el Teléfono del Usuario</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Correo Electrónico</td>
            <td style="border-style: solid; border-width: 1px; height: 50px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtusuCorreo" runat="server" Width="333px">Ingrese el Correo Electrónico del Usuario</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Estado Usuario</td>
            <td style="border-style: solid; border-width: 1px; height: 50px; background-color: #E3EAEB;" align="center">
                <asp:DropDownList ID="TxtusuEstado" AppendDataBoundItems="true" runat="server">
                    <asp:ListItem Text="Activo" Value="1" />
                    <asp:ListItem Text="Suspendido 15 Días" Value="2" />
                    <asp:ListItem Text="Suspendido 90 Días" Value="3" />
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="border-width: 1px; border-right-style: solid; border-left-style: solid;" colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border-width: 1px; border-bottom-style: solid; border-right-style: solid; border-left-style: solid;" colspan="2" align="center">
                <asp:Button ID="BtnNuevoUsuario" runat="server" Text="Agregar Nuevo Usuario" OnClick="BtnNuevoUsuario_Click" />
            </td>
        </tr>
    </table>
    <br /><br />
</asp:Content>
