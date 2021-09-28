<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nuevaArea.aspx.cs" Inherits="LibreriaMunicipal2.nuevaArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <h1>Ingrese una Nueva Área</h1>
    <table class="nav-justified" style="width: 75%; height: 204px; margin-bottom: 11px; margin-top: 0px;">
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Código del Área</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtareCodigo" runat="server" Width="620px">Ingrese el Código para la Nueva Área</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Nombre Nueva Área</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #F8FAFA;" align="center">
                <asp:TextBox ID="TxtareNombre" runat="server" Width="620px">Ingrese el Nombre de la Nueva Área</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Tiempo</td>
            <td style="border-style: solid; border-width: 1px; height: 52px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtareTiempo" runat="server" Width="338px">Ingrese el Tiempo Destinado al Área</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-width: 1px; border-right-style: solid; border-left-style: solid;" colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border-width: 1px; border-bottom-style: solid; border-right-style: solid; border-left-style: solid;" colspan="2" align="center">
                <asp:Button ID="BtnNuevaArea" runat="server" Text="Agregar Nueva Área" OnClick="BtnNuevaArea_Click" />
            </td>
        </tr>
    </table>
    <br /><br />
</asp:Content>
