<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Parcial1TP4_EnzoMelian_consigna10_.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <br />
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/DenunciaCategoria.aspx" runat="server">Denuncia categoria ABM</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Denuncias.aspx" runat="server">Denuncias ABM</asp:HyperLink>
        </div>
    </form>
</body>
</html>
