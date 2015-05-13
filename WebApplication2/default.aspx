<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Default page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        <asp:Literal ID="ltlmsg" runat="server" Text="test"></asp:Literal>
        <asp:TextBox ID="txtbox" runat="server"></asp:TextBox>
        
        <div>
            <h4>List Controls</h4>
            Toppings: <asp:Label ID="lbltoppings" runat="server"></asp:Label>
            <asp:CheckBoxList ID="cblToppings" runat="server" AutoPostBack="false">
            <asp:ListItem Value ="1" Text="Pep"></asp:ListItem>
            <asp:ListItem Value ="2" Text="cheese"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <asp:DropDownList ID="ddlSize" runat="server">
                <asp:ListItem Value="S" Text="Small"></asp:ListItem>
                <asp:ListItem Value="M" Text="Medium"></asp:ListItem>
                <asp:ListItem Value="L" Text="Large"></asp:ListItem>
                <asp:ListItem Value="XL" Text="Extra Large"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnShowSelections" runat="server" Text="Show selections" OnClick="btnShowSelections_Click" />
        </div>

    </div>
    </form>
</body>
</html>
