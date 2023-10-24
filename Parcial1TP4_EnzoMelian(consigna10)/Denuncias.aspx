<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Denuncias.aspx.cs" Inherits="Parcial1TP4_EnzoMelian_consigna10_.Denuncias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Agregar denuncias"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Tipo de denuncia: "></asp:Label>
            <asp:ListBox ID="lboxDenunciaA" runat="server" DataSourceID="SqlDataSourceMostrarCD" DataTextField="nombre" DataValueField="id"></asp:ListBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Descripcion de la denuncia:"></asp:Label>
            <asp:TextBox ID="tboxDescripA" runat="server" Height="58px" Width="236px"></asp:TextBox>
            <asp:Label ID="lblAgregarDen" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnAgregarDen" runat="server" OnClick="btnAgregarDen_Click" Text="Agregar" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Modificar y eliminar denuncias"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Filtro: "></asp:Label>
            <asp:DropDownList ID="DDLfiltro" runat="server" DataSourceID="SqlDataSourceMostrarCD" DataTextField="nombre" DataValueField="id" Height="30px" Width="166px">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" Width="67px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDesfiltrar" runat="server" OnClick="btnDesfiltrar_Click" Text="Desfiltrar" />
            <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSourceD" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText=" id " InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="texto" HeaderText=" Denuncia " SortExpression="texto" />
                    <asp:BoundField DataField="idDenunciaCategoria" HeaderText=" idCategoria" SortExpression="idDenunciaCategoria" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceD" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" DeleteCommand="DELETE FROM [Denuncias] WHERE [id] = @id" InsertCommand="INSERT INTO [Denuncias] ([texto], [idDenunciaCategoria]) VALUES (@texto, @idDenunciaCategoria)" SelectCommand="SELECT * FROM [Denuncias]" UpdateCommand="UPDATE [Denuncias] SET [texto] = @texto, [idDenunciaCategoria] = @idDenunciaCategoria WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tboxDescripA" Name="texto" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lboxDenunciaA" Name="idDenunciaCategoria" PropertyName="SelectedValue" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="texto" Type="String" />
                    <asp:Parameter Name="idDenunciaCategoria" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceMostrarCD" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" SelectCommand="SELECT * FROM [DenunciaCategorias]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" />
        </div>
    </form>
</body>
</html>
