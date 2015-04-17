<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookMovie.aspx.cs" Inherits="BookMovie.BookMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <title>BookMovie</title>
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 559px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: right;
            width: 498px;
        }
        .auto-style5 {
            text-align: right;
        }

    </style>
</head>
<body style="background:url(image/header.png) no-repeat">
        
    
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td id="tableicon" class="auto-style2">
                    <asp:HyperLink ID="icon" runat="server" ImageUrl="~/image/Icon.png" NavigateUrl="~/Index.aspx"></asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="login" runat="server" ForeColor="White" NavigateUrl="~/Login.aspx">Login | Register</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" Visible="False">[HyperLink1]</asp:HyperLink>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" Visible="False" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    <asp:HyperLink ID="home" runat="server" ImageUrl="~/image/home.png" NavigateUrl="~/Index.aspx"></asp:HyperLink>
                    <asp:HyperLink ID="movie" runat="server" ImageUrl="~/image/movie.png" NavigateUrl="~/Movie.aspx"></asp:HyperLink>
                    <asp:HyperLink ID="contact" runat="server" ImageUrl="~/image/contact.png" NavigateUrl="~/Contact.aspx"></asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <table class="auto-style1" style="margin-top: 100px">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Number of Tickets</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Credit Card Number</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
