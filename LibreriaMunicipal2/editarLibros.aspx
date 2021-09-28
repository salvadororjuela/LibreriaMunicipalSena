<%@ Page Title="Editar Libros" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editarUsuario.aspx.cs" Inherits="LibreriaMunicipal2.editarLibros" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Editar Datos de Libros</h1>
    <br /><br />
    <table style="width: 100%">
        <tr>
            <td>Seleccione el Libro a Editar</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="libCodigo" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="5" Width="1046px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
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
                    UpdateCommand="UPDATE Libros SET libNombre = @libNombre, libNumPag = @libNumPag, libAutor = @libAutor, libEditorial = @libEditorial, libArea = @libArea WHERE libCodigo = @libCodigo">
                </asp:SqlDataSource>
                    
                <asp:ObjectDataSource ID="SqlDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.LibrosTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_libCodigo" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="libCodigo" Type="Decimal" />
                        <asp:Parameter Name="libNombre" Type="String" />
                        <asp:Parameter Name="libNumPag" Type="Decimal" />
                        <asp:Parameter Name="libAutor" Type="String" />
                        <asp:Parameter Name="libEditorial" Type="String" />
                        <asp:Parameter Name="libArea" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="libNombre" Type="String" />
                        <asp:Parameter Name="libNumPag" Type="Decimal" />
                        <asp:Parameter Name="libAutor" Type="String" />
                        <asp:Parameter Name="libEditorial" Type="String" />
                        <asp:Parameter Name="libArea" Type="Decimal" />
                        <asp:Parameter Name="libCodigo" Type="Decimal" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
