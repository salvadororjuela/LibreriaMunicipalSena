<%@ Page Title="Editar Areas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editarAreas.aspx.cs" Inherits="LibreriaMunicipal2.editarAreas" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Editar Datos de un Área</h1>
    <br /><br />
    <table style="width: 100%">
        <tr>
            <td>Seleccione el Area a Editar</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="areCodigo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5" Width="1046px" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
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
                    UpdateCommand="UPDATE Areas SET areNombre = @areNombre, areTiempo = @areTiempo WHERE areCodigo = @areCodigo">
                </asp:SqlDataSource>
                    
                <asp:ObjectDataSource ID="SqlDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.AreasTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_areCodigo" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="areCodigo" Type="Decimal" />
                        <asp:Parameter Name="areNombre" Type="String" />
                        <asp:Parameter Name="areTiempo" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="areNombre" Type="String" />
                        <asp:Parameter Name="areTiempo" Type="Decimal" />
                        <asp:Parameter Name="areCodigo" Type="Decimal" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
            </td>
        </tr>
    </table>

</asp:Content>
