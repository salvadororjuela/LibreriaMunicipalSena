<%@ Page Title="Préstamo de Libros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prestamos.aspx.cs" Inherits="LibreriaMunicipal2.prestamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Realizar un Préstamo</h1>

    <table  class="nav-justified" style="width: 93%; height: 204px; margin-bottom: 11px; margin-top: 0px;">
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">
                Cógido Prestamo:</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtdtpPrestamo" runat="server" ToolTip="Código Generado por Sistema"></asp:TextBox>
                Código Generado Automáticamente por el Sistema</td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">
                <asp:Label ID="Label1" runat="server" Text="Fecha de Préstamo"></asp:Label>
                :</td>
            <td  style="border-style: solid; border-width: 1px; height: 54px; background-color: #F8FAFA;" align="center">
                <asp:Label ID="labelhoy" runat="server" Text="Label" >
                    <p> <%: DateTime.Now.Date %>  </p>
                </asp:Label>
                <asp:TextBox ID="TxtdtpFechaFin" runat="server">Digite la Fecha de Hoy</asp:TextBox>
            </td>
        </tr>
        <tr>

            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">
                <asp:Label ID="Label6" runat="server" Text="Usuario:"></asp:Label>
            </td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #E3EAEB;" align="center">
                <asp:DropDownList ID="TxtdtpUsuario" runat="server" DataSourceID="SqlDataSource1" DataTextField="usuDocumento" DataValueField="usuDocumento" Height="23px" style="margin-left: 0px" Width="173px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString %>" SelectCommand="SELECT [usuDocumento], [usuNombre] FROM [Usuarios]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">
                <asp:Label ID="Label3" runat="server" Text="Libro:"></asp:Label>
            </td>
            <td  style="border-style: solid; border-width: 1px; height: 54px; background-color: #F8FAFA;" align="center">
                <asp:DropDownList ID="TxtdtpLibro" runat="server" datasourceid="SqlDataSource2" DataTextField="libNombre" DataValueField="libCodigo" Height="23px" style="margin-left: 0px" Width="173px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>" SelectCommand="SELECT [libCodigo], [libNombre], [libNumPag], [libAutor], [libEditorial], [libArea] FROM [Libros]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">
                Cantidad a Prestar:</td>
            <td style="border-style: solid; border-width: 1px; height: 54px; background-color: #E3EAEB;" align="center">
                <asp:TextBox ID="TxtdtpCantidad" runat="server" ReadOnly="False" ToolTip="Solo Un Título Disponible por Usuario" MaxLength="1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: solid; border-width: 1px; background-color: #1C5E55; color: #FFFFFF; font-weight: bold;" align="center">
                <asp:Label ID="Label5" runat="server" Text="Limite de Entrega"></asp:Label>
            </td>
            <td  style="border-style: solid; border-width: 1px; height: 54px; background-color: #F8FAFA;" align="center">
                <asp:Label ID="labeldevolver" runat="server" Text="Label" value="DateTime.Now.Date.AddDays(15)"><p> <%: DateTime.Now.Date.AddDays(15) %>  </p></asp:Label>
                <asp:TextBox ID="TxtdtpFechaDev" runat="server">Digite la Fecha de Entrega</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="BtnPrestamo" runat="server" Text="Prestar Libro" OnClick="BtnPrestamo_Click"/>
            </td>
        </tr>
    </table>

</asp:Content>