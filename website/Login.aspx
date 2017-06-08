<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="Username" runat="server" type="text" placeholder="Username..." />
        <p>
            <input id="Password" runat="server" type="password" placeholder="Password..."/>
        </p>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Login_Click"/>
    </form>

</body>
</html>
