<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalInfoEntry.aspx.cs" Inherits="PersonalInformationForm.WebForm1" %>

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
            width: 44px;
            height: 45px;
            position: absolute;
            top: 1265px;
            left: 750px;
            z-index: 1;
            margin-bottom: 7;
        }
        .auto-style2 {
            position: absolute;
            top: 1263px;
            left: 669px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 1265px;
            left: 590px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 1315px;
            left: 482px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 1317px;
            left: 835px;
            z-index: 1;
        }
        .auto-style6 {
            display: inline-block;
            position: absolute;
            top: 1316px;
            left: 742px;
            z-index: 1;
        }
        .auto-style7 {
            display: inline-block;
            position: absolute;
            top: 1318px;
            left: 654px;
            z-index: 1;
        }
        .auto-style8 {
            display: inline-block;
            position: absolute;
            top: 1316px;
            left: 551px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 182px;
            left: 263px;
            z-index: 1;
            width: 408px;
            height: 55px;
        }
        .auto-style10 {
            height: 827px;
        }
         .footer-basic footer{
            margin-top: 100px;
        }
        .auto-style11 {
            position: absolute;
            top: 250px;
            left: 646px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style12 {
            padding: 0;
            width: 171px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 395px;
            left: 919px;
            z-index: 1;
            height: 135px;
        }
        .auto-style13 {
            padding: 0;
            width: 145px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 538px;
            left: 659px;
            z-index: 1;
            height: 165px;
        }
        .auto-style14 {
            padding: 0;
            width: 144px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 398px;
            left: 366px;
            z-index: 1;
            height: 136px;
        }
        .auto-style15 {
            padding: 0;
            width: 146px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 581px;
            left: 97px;
            z-index: 1;
            height: 108px;
        }
        .auto-style16 {
            position: absolute;
            top: 549px;
            left: 125px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 612px;
            left: 386px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 506px;
            left: 663px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 597px;
            left: 902px;
            z-index: 1;
            width: 208px;
        }
        .auto-style20 {
            position: absolute;
            top: 308px;
            left: 500px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 34px;
            left: 154px;
            z-index: 1;
        }
       
    </style>
</head>
<body style="height: auto; width: auto; margin-left: 0px; margin-top: 0px; margin-bottom: 3px;">
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
                       <li><a href="Signin.aspx">Sign In</a></li>
                        <li>
                           <a href="PersonalInfoentry2.aspx">
                               Register
                           </a>
                       </li>
                   </ul>
               </nav>
           </div>   
    </div>


    <form id="form1" runat="server" class="auto-style10">
       
           
      
        
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Font-Names="Copperplate Gothic Bold,Bodoni MT Black,Berlin Sans FB Demi" Font-Size="45px" Text="FAST AND SAFE" ForeColor="#33CCFF"></asp:Label>
       
           
      
        
        <asp:Label runat="server" CssClass="auto-style11" Font-Names="Copperplate Gothic Bold,Bodoni MT Black,Berlin Sans FB Demi" Font-Size="45px" Text="TRANSACTION" ID="ctl06" ForeColor="#9966FF"></asp:Label>
       
           
      
        
        <asp:Label ID="Label2" runat="server" CssClass="auto-style16" Font-Names="Century" Font-Size="X-Large" Text="Cash In"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style17" Font-Names="Century" Font-Size="X-Large" Text="Cash Out"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style18" Font-Names="Century" Font-Size="X-Large" Text="Send Money"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style19" Font-Names="Century" Font-Size="X-Large" Text="View Transactions"></asp:Label>
       
           
      
        
        <asp:Label ID="Label6" runat="server" CssClass="auto-style20" Font-Names="Copperplate Gothic Bold,Bodoni MT Black,Berlin Sans FB Demi" Font-Size="45px" ForeColor="Fuchsia" Text="E-WALLET"></asp:Label>
       
           
      
        
        <asp:Label ID="Label7" runat="server" CssClass="auto-style21" Font-Names="Britannic Bold" Font-Size="X-Large" Text="E-Save"></asp:Label>
       
           
      
        
    </form>
    <a href="Signin.aspx"><img class= "auto-style15" src="Image/wallet2.png" alt="Cash In" /></a>
    <a href="Signin.aspx"><img class= "auto-style14" src="Image/cash.png" alt="Cash Out"/></a>
    <a href="Signin.aspx"><img class= "auto-style13" src="Image/payment-method.png" alt="Send Money"/></a>
    <a href="Signin.aspx"><img class= "auto-style12" src="Image/investigation.png" alt="View Transactions"/></a>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1056px"><a href="#" class="auto-style3"><i class="icon ion-social-instagram"></i></a><a href="#" class="auto-style2"><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -21px; left: -2px; width: 42px; height: 40px;"></i></a><a href="#" class="auto-style1"><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 2px; width: 36px"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="PersonalInfoEntry.aspx" class="auto-style4">Home</a></li>
                <li class="auto-style8"><a href="#">Services</a></li>
                <li class="auto-style7"><a href="#">About</a></li>
                <li class="auto-style6"><a href="Signin.aspx">Sign In</a></li>
                <li class="list-inline-item"><a href="PersonalInfoentry2.aspx" class="auto-style5">Register</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 945px; height: 19px; position: absolute; top: 1350px; left: 249px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
