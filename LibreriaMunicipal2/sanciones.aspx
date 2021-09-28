<%@ Page Title="Sanciones Usuarios" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sanciones.aspx.cs" Inherits="LibreriaMunicipal2.sanciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sanciones</h1>
    <br />
    <p>Nota:</p>
    <p>Para cambiar el estado del usuario, dirijase a Editar Usuario.</p>
    <h2>Tipos de Sancion</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sanCodigo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="sanCodigo" HeaderText="sanCodigo" ReadOnly="True" SortExpression="sanCodigo" />
            <asp:BoundField DataField="sanDiasSancion" HeaderText="sanDiasSancion" SortExpression="sanDiasSancion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>" SelectCommand="SELECT [sanCodigo], [sanDiasSancion] FROM [Sanciones]"></asp:SqlDataSource>
    
    <br />
    <br />
    <h2>Usuarios Suspendidos por 10 días</h2>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="usuDocumento" DataSourceID="SqlDataSource2" Width="612px">
        <Columns>
            <asp:BoundField DataField="usuDocumento" HeaderText="Documento" ReadOnly="True" SortExpression="usuDocumento" />
            <asp:BoundField DataField="usuNombre" HeaderText="Nombre" SortExpression="usuNombre" />
            <asp:BoundField DataField="usuCorreo" HeaderText="Correo Electrónico" SortExpression="usuCorreo" />
            <asp:BoundField DataField="usuEstado" HeaderText="Estado" SortExpression="usuEstado" />
        </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>" SelectCommand="SELECT [usuDocumento], [usuNombre], [usuCorreo], [usuEstado] FROM [Usuarios] WHERE ([usuEstado] = @usuEstado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="usuEstado" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
    <br />
    <h2>Usuarios Inhabilitados para Prestar Libros</h2>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="usuDocumento" DataSourceID="SqlDataSource3" style="margin-right: 0px" Width="607px">
        <Columns>
            <asp:BoundField DataField="usuDocumento" HeaderText="Documento" ReadOnly="True" SortExpression="usuDocumento" />
            <asp:BoundField DataField="usuNombre" HeaderText="Nombre" SortExpression="usuNombre" />
            <asp:BoundField DataField="usuCorreo" HeaderText="Correo" SortExpression="usuCorreo" />
            <asp:BoundField DataField="usuEstado" HeaderText="Estado" SortExpression="usuEstado" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>" SelectCommand="SELECT [usuDocumento], [usuNombre], [usuCorreo], [usuEstado] FROM [Usuarios] WHERE ([usuEstado] = @usuEstado)">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="usuEstado" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
