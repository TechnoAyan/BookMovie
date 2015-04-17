<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BookMovie.WebForm2" %>

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
        }
        .auto-style6 {
            text-align: right;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style10 {
            width: 34%;
        }

    </style>
</head>
<body style="background:url(image/background.png) no-repeat">
        
    
    
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
        <table class="auto-style10" style="margin-top: 100px" align="center">
            <tr>
                <td class="auto-style9" colspan="2" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: x-large; color: #00CCFF">Change your Password</td>
            </tr>
            <tr>
                <td class="auto-style4" style="color: #FFFFFF">Old Passwor</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="color: #FFFFFF">New Password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#00FF99" Font-Bold="True" ForeColor="#0066FF" OnClick="Button2_Click" Text="Button" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
