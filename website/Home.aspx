<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>

    <h3>Hello <%: Session["Username"]%></h3>

    <form id="form1" runat="server">
        <asp:RadioButtonList ID="Gender" runat="server">
            <asp:ListItem Selected="True">Boy</asp:ListItem>
            <asp:ListItem>Girl</asp:ListItem>
        </asp:RadioButtonList>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Go to Hobbies..." OnClick="Hobbies_Click" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Go to Places..." OnClick="Places_Click"/>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" Text="Blog" OnClick="Blog_Click"/>
        </p>
    </form>

</body>
</html>
