<%@ Page Title="Consulta Libros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="consultaLibros.aspx.cs" Inherits="LibreriaMunicipal2.consultaLibros" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Consulta de Libro por Nombre</h1>
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td>Seleccione El Libro a Consultar:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="libNombre" DataValueField="libNombre" Height="16px" style="margin-left: 0px" Width="173px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibreriaMunicipalConnectionString2 %>"
                    SelectCommand="SELECT [libCodigo], [libNombre], [libNumPag], [libAutor], [libEditorial], [libArea] FROM [Libros]">
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="libCodigo" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="917px">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="libCodigo" HeaderText="Código Libro" ReadOnly="True" SortExpression="libCodigo" />
                            <asp:BoundField DataField="libNombre" HeaderText="Nombre Libro" SortExpression="libNombre" />
                            <asp:BoundField DataField="libNumPag" HeaderText="Páginas" SortExpression="libNumPag" />
                            <asp:BoundField DataField="libAutor" HeaderText="Autor" SortExpression="libAutor" />
                            <asp:BoundField DataField="libEditorial" HeaderText="Editorial" SortExpression="libEditorial" />
                            <asp:BoundField DataField="libArea" HeaderText="Área" SortExpression="libArea" />
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
                    SelectCommand="SELECT * FROM Libros WHERE ([libNombre] = @libNombre)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="libNombre" PropertyName="SelectedValue" Type="String" />
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
                <asp:Button ID="BtnConsultaLibro" runat="server" Text="Consultar" OnClick="BtnConsultaLibro_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
