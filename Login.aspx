<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookMovie.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <title>Login</title>
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
        
        .auto-style7 {
            color: #FFFFFF;
            text-align: right;
            height: 35px;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
            width: 184px;
            height: 35px;
        }
        .auto-style10 {
            width: 56%;
        }
        .auto-style11 {
            text-align: center;
            width: 184px;
        }
        .auto-style12 {
            text-align: center;
            height: 47px;
        }
        .auto-style13 {
            color: #FFFFFF;
            text-align: right;
            height: 37px;
        }
        .auto-style14 {
            text-align: left;
            width: 184px;
            height: 37px;
        }
        .auto-style15 {
            height: 37px;
        }
        .auto-style16 {
            height: 35px;
        }
        .auto-style17 {
            margin-bottom: 9px;
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
        <!---Login--->
        
    
        <table align="center" class="auto-style10" style="margin-top: 100px">
            <tr>
                <td class="auto-style12" colspan="3" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: x-large; color: #3399FF">Login</td>
            </tr>
            <tr>
                <td class="auto-style13">Email</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Password</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:HyperLink ID="register" runat="server" ForeColor="#33CC33" NavigateUrl="~/Registration.aspx">New Member</asp:HyperLink>
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Buttonlogin" runat="server" BackColor="#00CC66" BorderColor="#0066FF" CssClass="auto-style17" Font-Bold="True" ForeColor="#0066FF" Text="Login" Width="100px" OnClick="Buttonlogin_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    
        
    </form>
</body>
</html>
