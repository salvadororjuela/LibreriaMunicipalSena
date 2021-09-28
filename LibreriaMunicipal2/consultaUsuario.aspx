<%@ Page Title="Consulta Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="consultaUsuario.aspx.cs" Inherits="LibreriaMunicipal2.consultaUsuario" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <h1>Consulta de Usuarios</h1>
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td>Seleccione Usuario:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="usuDocumento" DataValueField="usuDocumento" Height="16px" style="margin-left: 0px" Width="173px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString %>"
                            SelectCommand="SELECT [usuDocumento], [usuNombre], [usuDireccion], [usuTelefono], [usuCorreo], [usuEstado] FROM [Usuarios]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="usuDocumento" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="917px">
                            <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="usuDocumento" HeaderText="Documento" ReadOnly="True" SortExpression="usuDocumento" />
                                    <asp:BoundField DataField="usuNombre" HeaderText="Nombre" SortExpression="usuNombre" />
                                    <asp:BoundField DataField="usuDireccion" HeaderText="Direccion" SortExpression="usuDireccion" />
                                    <asp:BoundField DataField="usuTelefono" HeaderText="Telefono" SortExpression="usuTelefono" />
                                    <asp:BoundField DataField="usuCorreo" HeaderText="Correo" SortExpression="usuCorreo" />
                                    <asp:BoundField DataField="usuEstado" HeaderText="Estado" SortExpression="usuEstado" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"/>
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString %>"
                            SelectCommand="SELECT [usuDocumento], [usuNombre], [usuDireccion], [usuTelefono], [usuCorreo], [usuEstado] FROM [Usuarios] WHERE ([usuDocumento] = @usuDocumento)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="usuDocumento" PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Consultar" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
</asp:Content>
