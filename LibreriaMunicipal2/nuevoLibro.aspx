<%@ Page Title="Nuevo Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nuevoLibro.aspx.cs" Inherits="LibreriaMunicipal2.nuevoLibro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ingrese un Nuevo Libro</h1>
    <br /><br />
    <table class="nav-justified" style="width: 75%; height: 204px; margin-bottom: 11px; margin-top: 0px;">
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Código del Libro</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtlibCodigo" runat="server" Width="620px">Ingrese el Código del Libro</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Nombre del Libro</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #F8FAFA;" align="center">
                <asp:TextBox ID="TxtlibNombre" runat="server" Width="620px">Ingrese el Nombre del Libro</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Páginas</td>
            <td style="border-style: solid; border-width: 1px; height: 52px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtlibNumPag" runat="server" Width="338px">Ingrese el Número de Páginas</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Autor</td>
            <td style="border-style: solid; border-width: 1px; height: 52px; background-color: #F8FAFA;" align="center">
                <asp:TextBox ID="TxtlibAutor" runat="server" Width="618px">Ingrese el Autor del Libro</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Editorial</td>
            <td style="border-style: solid; border-width: 1px; height: 50px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtlibEditorial" runat="server" Width="333px">Ingrese la Editorial del Libro</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">Área</td>
            <td style="border-style: solid; border-width: 1px; height: 51px; background-color: #F8FAFA;" align="center">
                <asp:DropDownList ID="TxtlibArea" runat="server" DataSourceID="SqlDataSource2" DataTextField="areNombre" DataValueField="areCodigo" Height="59px" Width="619px" Font-Size="Large">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>" SelectCommand="SELECT areCodigo, areNombre FROM [Areas]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="border-width: 1px; border-right-style: solid; border-left-style: solid;" colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="border-width: 1px; border-bottom-style: solid; border-right-style: solid; border-left-style: solid;" colspan="2" align="center">
                <asp:Button ID="BtnNuevoLibro" runat="server" Text="Agregar Libro" OnClick="BtnNuevoLibro_Click" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>"
        SelectCommand="SELECT [areCodigo], [areNombre] FROM [Areas]">
    </asp:SqlDataSource>

    <br /><br />
</asp:Content>
