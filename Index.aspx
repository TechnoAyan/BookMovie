<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BookMovie.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
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
        
    
    <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="data1/images/fast_and_furious_7.jpg" alt="Fast And Furious 7" title="Fast And Furious 7" id="wows1_0"/></li>
		<li><img src="data1/images/guardians_of_galaxy.jpg" alt="Guardians Of Galaxy" title="Guardians Of Galaxy" id="wows1_1"/></li>
		<li><img src="data1/images/happy_new_year.jpg" alt="Happy New Year" title="Happy New Year" id="wows1_2"/></li>
		<li><a href="http://wowslider.com/vf"><img src="data1/images/pk.jpg" alt="full screen slider" title="PK" id="wows1_3"/></a></li>
		<li><img src="data1/images/transformers_4.jpg" alt="Transformers 4" title="Transformers 4" id="wows1_4"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Fast And Furious 7"><img src="data1/tooltips/fast_and_furious_7.jpg" alt="Fast And Furious 7"/>1</a>
		<a href="#" title="Guardians Of Galaxy"><img src="data1/tooltips/guardians_of_galaxy.jpg" alt="Guardians Of Galaxy"/>2</a>
		<a href="#" title="Happy New Year"><img src="data1/tooltips/happy_new_year.jpg" alt="Happy New Year"/>3</a>
		<a href="#" title="PK"><img src="data1/tooltips/pk.jpg" alt="PK"/>4</a>
		<a href="#" title="Transformers 4"><img src="data1/tooltips/transformers_4.jpg" alt="Transformers 4"/>5</a>
	</div></div><span class="wsl"><a href="http://wowslider.com/vu">image carousel</a> by WOWSlider.com v7.2</span>
	<div class="ws_shadow"></div>
	</div>
    <script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
        <!---footer--->
        <footer style="background:url(image/background.png) no-repeat" class="auto-style5">
           <p class="auto-style3" style="color: #FFFFFF">Copyright &copy; <a href="#" id="link1" style="color: #FFFFFF">Domain Name</a> <br>All Rights Reserved</p> 
            <div class="auto-style3" style="color: #FFFFFF">
      Design by <a target="_blank" href="#" id="link1" style="color: #FFFFFF">FireGroup</a><br>
     
        
      
            </div>
      
        </footer>
    </form>
</body>
</html>
