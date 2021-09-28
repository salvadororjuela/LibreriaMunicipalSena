<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eliminarLibro.aspx.cs" Inherits="LibreriaMunicipal2.eliminarLibro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Eliminar Libros del Sistema</h1>
    <br /><br />
    <table style="width: 100%">
        <tr>
            <td>Seleccione el Libro a Eliminar</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="libCodigo" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="5" Width="1046px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            <asp:BoundField DataField="libCodigo" HeaderText="Codigo Libro" ReadOnly="True" SortExpression="libCodigo" />
                            <asp:BoundField DataField="libNombre" HeaderText="Nombre Libro" SortExpression="libNombre" />
                            <asp:BoundField DataField="libNumPag" HeaderText="Páginas" SortExpression="libNumPag" />
                            <asp:BoundField DataField="libAutor" HeaderText="Autor" SortExpression="libAutor" />
                            <asp:BoundField DataField="libEditorial" HeaderText="Editorial" SortExpression="libEditorial" />
                            <asp:BoundField DataField="libArea" HeaderText="Area" SortExpression="libArea" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString %>"
                    SelectCommand="SELECT * FROM [Libros]"
                    DeleteCommand="DELETE FROM Libros WHERE libCodigo = @libCodigo">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
