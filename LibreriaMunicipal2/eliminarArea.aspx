<%@ Page Title="Eliminar Area" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="eliminarArea.aspx.cs" Inherits="LibreriaMunicipal2.eliminarArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Eliminar un Área del Sistema</h1>
    <br /><br />
    <table style="width: 100%">
        <tr>
            <td>Seleccione el Area a Editar</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="areCodigo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5" Width="1046px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            <asp:BoundField DataField="areCodigo" HeaderText="Código del Área" ReadOnly="True" SortExpression="areCodigo" />
                            <asp:BoundField DataField="areNombre" HeaderText="Nombre del Área" SortExpression="areNombre" />
                            <asp:BoundField DataField="areTiempo" HeaderText="Tiempo Área" SortExpression="areTiempo" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>"
                    SelectCommand="SELECT * FROM [Areas]"
                    DeleteCommand="DELETE FROM Areas WHERE areCodigo = @areCodigo">
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
