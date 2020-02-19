<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EService.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="master.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="Login" runat="server" class="box">
            <img src="E.png" />
        <h1>Book a Service</h1>
            <asp:TextBox ID="cstname" runat="server" placeholder="Customer Name" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="cstmob" runat="server" placeholder="Mobile number" CssClass="input"></asp:TextBox>
        <asp:DropDownList ID="city" runat="server" CssClass="mydropdownlist">
            <asp:ListItem Text="Select City" Value="" />
            <asp:ListItem Text="AHMEDABAD" Value="Ahmedabad" Selected="False"></asp:ListItem>

        </asp:DropDownList><br>
        <asp:DropDownList ID="dealer" runat="server" CssClass="mydropdownlist" >
            <asp:ListItem Text="Select Dealer" Value="" />
            <asp:ListItem Text="RIYA BIKES" Value="Riya Bikes"></asp:ListItem>

        </asp:DropDownList>
        <asp:TextBox ID="cstchasis" runat="server" placeholder="Chasis number(VIN)" CssClass="input" ></asp:TextBox>
            <asp:Button ID="Book_srvc" runat="server" Text="Book Service" />
        <a href="Login.aspx">EMPLOYEE LOGIN</a>
    </form>
    
</body>
</html>
