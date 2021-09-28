<%@ Page Title="Consulta Áreas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="consultaAreas.aspx.cs" Inherits="LibreriaMunicipal2.consultaAreas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Consulta de Áreas</h1>
    <br />
            <br />
            <table class="nav-justified">
                <tr>
                    <td>Seleccione El Área a Consultar:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="areNombre" DataValueField="areCodigo" Height="16px" style="margin-left: 0px" Width="173px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString %>"
                            SelectCommand="SELECT [areCodigo], [areNombre], [areTiempo] FROM [Areas]">
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
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="areNombre" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="917px">
                            <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="areCodigo" HeaderText="Código Área" ReadOnly="True" SortExpression="areCodigo" />
                                    <asp:BoundField DataField="areNombre" HeaderText="Nombre Área" SortExpression="areNombre" />
                                    <asp:BoundField DataField="areTiempo" HeaderText="Tiempo" SortExpression="areTiempo" />
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
                            SelectCommand="SELECT [areCodigo], [areNombre], [areTiempo] FROM [Areas] WHERE ([areCodigo] = @areNombre)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="areNombre" PropertyName="SelectedValue" Type="Decimal" />
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
                        <asp:Button ID="BtnConsultaArea" runat="server" Text="Consultar" OnClick="BtnConsultaArea_Click" />
                    </td>
                </tr>
            </table>

</asp:Content>
