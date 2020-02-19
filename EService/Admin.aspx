<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EService.WebForm2" %>

<asp:content runat="server" ID="admindash" ContentPlaceHolderID="ContentPlaceHolder1">
<body>
    <form class="form1">
        
            <div>
            Username: <asp:TextBox ID="User" runat="server"></asp:TextBox>
            Password: <asp:TextBox ID="Pwd" runat="server"></asp:TextBox>
            Account type: <asp:TextBox ID="acc_type" runat="server"></asp:TextBox>
            <asp:Button ID="Create" runat="server" Text="Create" OnClick="Create_Click" />
            <asp:Label ID="Label1" runat="server" Text="creating new account" Visible="false"></asp:Label>
            </div>
    </form>
</body>
        </asp:content>
