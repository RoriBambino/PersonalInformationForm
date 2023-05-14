<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="PersonalInformationForm.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Wallet</title>
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 519px;
            left: 607px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 518px;
            left: 689px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 519px;
            left: 768px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 591px;
            left: 854px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 591px;
            left: 772px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 590px;
            left: 688px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 591px;
            left: 603px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 591px;
            left: 530px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 172px;
            left: 676px;
            z-index: 1;
            width: 69px;
            height: 44px;
        }
        .auto-style10 {
            position: absolute;
            top: 271px;
            left: 539px;
            z-index: 1;
        }
        .forms{
             margin-right: 0px;
            height: 400px;
            width: 1063px;
        }
      
        .auto-style11 {
            position: absolute;
            top: 270px;
            left: 627px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 327px;
            left: 542px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 299px;
            left: 671px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 324px;
            left: 628px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 348px;
            left: 673px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 386px;
            left: 611px;
            z-index: 1;
            margin-bottom: 20;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 210px;
            height: 38px;
        }
        .auto-style19 {
            position: absolute;
            top: 429px;
            left: 617px;
            z-index: 1;
        }
      
        .auto-style22 {
            position: absolute;
            top: 427px;
            left: 764px;
            z-index: 1;
        }
      
    </style>
</head>
<body>
     <!--Menu Bar-->
      <div class="menu">
            <!--Header-->
           <div class="logo">
               <a  ref="pageLogo" href="PersonalInfoEntry.aspx"><img class="icon" src="Image/wallet.png" alt="logo" ></a>
               
               <nav>
                <input type="checkbox" id="check">
                <label for="check" class="checkbtn">
                    <i class="fas fa-bars">
                       
                    </i>
                </label>
                   <ul>
                       <!---Menu Buttons-->
                       <li class="click">
                           <a rel="Home" href="PersonalInfoEntry.aspx">
                               Home
                           </a>
                       </li>
                       <li><a href="#">Sign In</a></li>
                        <li>
                           <a href=" PersonalInfoentry2.aspx">
                              Sign Up
                           </a>
                       </li>
                   </ul>
               </nav>
           </div>   
    </div>
    <form id="form1" runat="server" class="forms">
      
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Font-Names="Haettenschweiler" Font-Size="XX-Large" ForeColor="#CB95E8" Text="Sign in"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Username" Font-Size="Medium"></asp:Label>
      
        <asp:TextBox ID="input_username" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:Label ID="Label" runat="server" CssClass="auto-style12" Text="Password"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="input_username" CssClass="auto-style13" ErrorMessage="* Input Username" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="check_pass" runat="server" CssClass="auto-style15" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="check_pass" CssClass="auto-style16" ErrorMessage="* Input Password" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Font-Names="Britannic Bold" Font-Size="X-Large" ForeColor="#CC99FF" OnClick="Button1_Click" Text="Sign In" />
        <asp:Label ID="Label3" runat="server" CssClass="auto-style19" Text="Don't have account yet?" Font-Size="Small"></asp:Label>
        
        <p CssClass="auto-style21"><a href="PersonalInfoentry2.aspx" class="auto-style22" style="font-size: 14px">Sign Up</a></p>
        
      
    </form>
    <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1054px"><a href="#" class="auto-style1"><i class="icon ion-social-instagram"></i></a><a href="#" class="auto-style3"><i class="icon ion-social-twitter"></i></a><a href="#" class="auto-style2"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="PersonalInfoEntry.aspx" class="auto-style8">Home</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style7">Services</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style6">About</a></li>
                <li class="list-inline-item"><a href="Signin.aspx" class="auto-style5">Sign In</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style4">Register</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 848px; height: 19px; position: absolute; top: 625px; left: 293px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
