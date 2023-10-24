<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DenunciaCategoria.aspx.cs" Inherits="Parcial1TP4_EnzoMelian_consigna10_.DenunciaCategoria" %>

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
            <asp:Label ID="Label2" runat="server" Text="Agregar categoria de denuncia"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Nombre de la categoría de denuncia: "></asp:Label>
            <asp:TextBox ID="tboxCDa" runat="server" Width="144px"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAgregarCD" runat="server" OnClick="btnAgregarCD_Click" Text="Agregar" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Modificar o eliminar categoria de denuncia"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Seleccionar categoria de denuncia: "></asp:Label>
            <asp:ListBox ID="lboxCD" runat="server" DataSourceID="SqlDataSourceCD" DataTextField="nombre" DataValueField="id" Height="48px" Width="114px" AutoPostBack="True" OnSelectedIndexChanged="lboxCD_SelectedIndexChanged"></asp:ListBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Nombre de la categoría:  "></asp:Label>
            <asp:TextBox ID="tboxCDme" runat="server" Width="144px" AutoPostBack="True"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificarCD" runat="server" OnClick="btnModificarCD_Click" style="height: 26px" Text="Modificar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminarCD" runat="server" OnClick="btnEliminarCD_Click" Text="Eliminar" />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnVolver" runat="server" OnClick="BtnVolver_Click" Text="Volver" />
            <asp:SqlDataSource ID="SqlDataSourceCD" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" DeleteCommand="DELETE FROM [DenunciaCategorias] WHERE [id] = @id" InsertCommand="INSERT INTO [DenunciaCategorias] ([nombre]) VALUES (@nombre)" SelectCommand="SELECT * FROM [DenunciaCategorias]" UpdateCommand="UPDATE [DenunciaCategorias] SET [nombre] = @nombre WHERE [id] = @id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="lboxCD" Name="id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tboxCDa" Name="nombre" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="tboxCDme" Name="nombre" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="lboxCD" Name="id" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceMostrarCD" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023 %>" SelectCommand="SELECT * FROM [DenunciaCategorias] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lboxCD" Name="id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
