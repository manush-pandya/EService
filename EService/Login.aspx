<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EService.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="Login" runat="server" class="box">
            <img src="E.png" />
        <h1>Log In</h1>
            <asp:TextBox ID="Username" runat="server" placeholder="Username" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="input" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Lg_in" runat="server" Text="Log In" OnClick="Lg_in_Click" />
        <asp:Label ID="Label1" runat="server" BorderStyle="None" Text="LOG IN" visible="false"></asp:Label>
    </form>
</body>
</html>
