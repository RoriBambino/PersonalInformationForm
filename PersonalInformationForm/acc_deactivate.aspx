<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acc_deactivate.aspx.cs" Inherits="PersonalInformationForm.WebForm14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Settings</title>
    <link rel="icon" type="image/png" href="Image/wallet.png"/>
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 181px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 833px;
            z-index: 1;
        }
        .auto-style2 {
            width: 68px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 447px;
        }
        .auto-style3 {
            width: 133px;
            height: 28px;
            position: absolute;
            top: 587px;
            left: -125px;
            z-index: 1;
        }
        .auto-style4 {
            width: 126px;
            height: 28px;
            position: absolute;
            top: 726px;
            left: 604px;
            z-index: 1;
        }
        .auto-style5 {
            width: 131px;
            height: 28px;
            position: absolute;
            top: 888px;
            left: 707px;
            z-index: 1;
        }
        .auto-style6 {
            height: 176px;
            width: 971px;
        }
        .auto-style7 {
            position: absolute;
            top: 162px;
            left: 0px;
        }
        .auto-style9 {
            position: absolute;
            top: 302px;
            left: 634px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 414px;
            left: 674px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style14 {
            width: 117px;
            height: 111px;
            position: absolute;
            top: 224px;
            left: 686px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 171px;
            left: 594px;
            z-index: 1;
            width: 305px;
            height: 45px;
        }
        .auto-style16 {
            position: absolute;
            top: 351px;
            left: 459px;
            z-index: 1;
            width: 557px;
            height: 45px;
        }
        .auto-style17 {
            position: absolute;
            top: 495px;
            left: 548px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 163px;
            left: 4px;
        }
        .auto-style19 {
            position: absolute;
            top: 495px;
            left: 696px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 526px;
            left: 503px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 416px;
            left: 0px;
        }
        .auto-style22 {
            position: absolute;
            top: 523px;
            left: 677px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 600px;
            left: 830px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style24 {
            position: absolute;
            top: 551px;
            left: 716px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 602px;
            left: 570px;
            z-index: 1;
             text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
    </style>
</head>
<body>
 <!--Menu Bar-->
     <div class="menu">
            <!--Header-->
           <div class="logo">
               <a  ref="pageLogo" href="Client.aspx"><img class="icon" src="Image/wallet.png" alt="logo" ></a>
               <nav>
                <input type="checkbox" id="check">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style22" Font-Names="Bookman Old Style" Font-Size="X-Large" ForeColor="Black" Text="E-Save" style="z-index: 1; position: absolute; top: 33px; left: 169px"></asp:Label>

                <label for="check" class="checkbtn">
                    <i class="fas fa-bars">
                       
                    </i>
                </label>
                   <ul>
                       <!---Menu Buttons-->
                       <li class="click">
                           <a rel="Home" href="Client.aspx">
                               Home
                           </a>
                       </li>
                       <li><a href="Cashin.aspx">Cash In</a></li>
                        <li>
                           <a href="Cashout.aspx">
                             Cash Out
                           </a>
                       </li>
                        <li>
                           <a href="SendMoney.aspx">
                             Send Money
                           </a>
                       </li>
                        <li>
                           <a href="view_transaction.aspx">
                             View Transactions
                           </a>
                       </li>
                        <li>
                            <a href="Account.aspx">Account </a>
                       </li>
                       
                   </ul>
               </nav>
           </div>   
    </div>
    <form id="form1" runat="server">
        <div class="auto-style6">

  
                <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Text="Deactivate" ForeColor="#660066" OnClick="Button4_Click" CausesValidation="False" />
                <img id="deactivate" runat="server" alt="Deactiviate PNG" class="auto-style14" src="Image/Deactivate%20Acc.png" />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Font-Size="X-Large" Text="Are you sure you want to Deactivate Your account?"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style15" Font-Size="XX-Large" Text="Account Deactivation"></asp:Label>
          
             <asp:Label ID="Label25" runat="server" Text="Username:" CssClass="auto-style18" style="z-index: 1; position: absolute; top: 469px; left: 596px"></asp:Label>
            <asp:Label ID="txt_username" runat="server" CssClass="auto-style21" style="z-index: 1; position: absolute; top: 466px; left: 690px"></asp:Label>
                <asp:Label ID="Label26" runat="server" CssClass="auto-style17" Text="Account Number:"></asp:Label>
                <asp:Label ID="txt_accnum" runat="server" CssClass="auto-style19"></asp:Label>
        </div>
   <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 830px; left: 170px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: 472px; width: 43px; height: 44px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Client.aspx">Home</a></li>
                <li class="auto-style9"><a href="Cashin.aspx" class="auto-style3">Cash In</a></li>
                <li class="auto-style7"><a href="Cashout.aspx" class="auto-style4">Cash out</a></li>
                <li class="auto-style5"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style1"><a href="view_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 912px; left: 447px">E-Wallet Co. © 2023</p>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_password" CssClass="auto-style24" ErrorMessage="* Input Password" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>

            <asp:TextBox ID="txt_password" runat="server" CssClass="auto-style22" TextMode="Password"></asp:TextBox>

        </footer>
    </div>
        <asp:Label ID="Label27" runat="server" CssClass="auto-style20" Text="Confirmation Password:"></asp:Label>
        <asp:Button ID="btn_confirm" runat="server" CssClass="auto-style23" Text="Confirm" ForeColor="#993399" OnClick="btn_confirm_Click" />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style25" ForeColor="#993366" Text="Cancel" OnClick="Button5_Click" />
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
