<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eliminarUsuario.aspx.cs" Inherits="LibreriaMunicipal2.eliminarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Eliminar Usuarios del Sistema</h1>
    <br /><br />
    <table style="width: 100%">
        <tr>
            <td>Seleccione El Usuario a Editar</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="usuDocumento" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5" Width="1046px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            <asp:BoundField DataField="usuDocumento" HeaderText="Documento" ReadOnly="True" SortExpression="usuDocumento" />
                            <asp:BoundField DataField="usuNombre" HeaderText="Nombre" SortExpression="usuNombre" />
                            <asp:BoundField DataField="usuDireccion" HeaderText="Direccion" SortExpression="usuDireccion" />
                            <asp:BoundField DataField="usuTelefono" HeaderText="Telefono" SortExpression="usuTelefono" />
                            <asp:BoundField DataField="usuCorreo" HeaderText="Correo" SortExpression="usuCorreo" />
                            <asp:BoundField DataField="usuEstado" HeaderText="Estado" SortExpression="usuEstado" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"/>
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString %>"
                    SelectCommand="SELECT * FROM [Usuarios]" 
                    DeleteCommand="DELETE FROM Usuarios WHERE usuDocumento = @usuDocumento">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
