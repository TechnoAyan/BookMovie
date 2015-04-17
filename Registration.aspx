<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BookMovie.Registration" %>

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
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 63%;
        }
        .auto-style8 {
            color: #FFFFFF;
            text-align: right;
            height: 35px;
        }
        .auto-style9 {
            text-align: left;
            height: 35px;
        }
        .auto-style11 {
            margin-bottom: 4px;
        }
        .auto-style12 {
            color: #FFFFFF;
            text-align: right;
            height: 28px;
        }
        .auto-style13 {
            text-align: left;
            height: 28px;
        }
        .auto-style14 {
            width: 151px;
        }
        .auto-style15 {
            text-align: left;
            height: 35px;
            width: 151px;
        }
        .auto-style16 {
            text-align: left;
            width: 151px;
        }
        .auto-style17 {
            text-align: left;
            height: 28px;
            width: 151px;
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
        
    
        
        <table align="center" class="auto-style7" style="margin-top: 100px;">
            <tr>
                <td class="auto-style3" colspan="2" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: x-large; color: #33CCFF">Registration</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Name</strong></td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>E-Mail</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style11" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Password</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Conform Password</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="*password are not same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Country</strong></td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                        <asp:ListItem>Select one</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>England</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Cannot be empty" ForeColor="Red" InitialValue="Select one"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" BackColor="#00FF99" BorderColor="#0099FF" Font-Bold="True" ForeColor="#0066FF" Text="Submit" Width="100px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        
    
        
    </form>
</body>
</html>

