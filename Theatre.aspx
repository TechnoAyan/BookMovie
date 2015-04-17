<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Theatre.aspx.cs" Inherits="BookMovie.Theatre" %>

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
            height: 131px;
            margin-top:100px;
            text-align: center;
        }

        .auto-style6 {
            width: 70%;
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
                    <asp:HyperLink ID="theatre" runat="server" ImageUrl="~/image/theatre.png" NavigateUrl="~/Theatre.aspx"></asp:HyperLink>
                    <asp:HyperLink ID="contact" runat="server" ImageUrl="~/image/contact.png" NavigateUrl="~/Contact.aspx"></asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>




    <footer style="background:url(image/background.png) no-repeat" class="auto-style5">
           <p class="auto-style3" style="color: #FFFFFF">Copyright &copy; <a href="#" id="link1" style="color: #FFFFFF">Domain Name</a> <br>All Rights Reserved</p> 
            <div class="auto-style3" style="color: #FFFFFF">
      Design by <a target="_blank" href="#" id="A1" style="color: #FFFFFF">FireGroup</a><br>
     
        
      
            </div>
      
        </footer>
    </form>
</body>
</html>
