<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="PersonalInformationForm.WebForm9" %>

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
        .auto-style8 {
            position: absolute;
            top: 345px;
            left: 383px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style9 {
            position: absolute;
            top: 302px;
            left: 634px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 345px;
            left: 570px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style11 {
            position: absolute;
            top: 346px;
            left: 950px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style12 {
            position: absolute;
            top: 345px;
            left: 772px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style13 {
            width: 112px;
            height: 115px;
            position: absolute;
            top: 220px;
            left: 386px;
            z-index: 1;
        }
        .auto-style14 {
            width: 117px;
            height: 111px;
            position: absolute;
            top: 222px;
            left: 769px;
            z-index: 1;
        }
        .auto-style15 {
            width: 115px;
            height: 105px;
            position: absolute;
            top: 228px;
            left: 574px;
            z-index: 1;
        }
        .auto-style16 {
            width: 98px;
            height: 100px;
            position: absolute;
            top: 226px;
            left: 963px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 190px;
            left: 296px;
            z-index: 1;
            width: 401px;
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

             <asp:Label ID="txt_verifyacc" runat="server" CssClass="auto-style17"></asp:Label>
            <a href="user_verify.aspx" id="view_mode" runat="server" onclick="return false;">
                <img id="verify" runat="server" alt="Verify Account" class="auto-style13" src="Image/verified-account.png" />
                <asp:Button ID="btn_veracc" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Verify Account" ForeColor="#CC99FF" />
            </a>
            <a href="editacc.aspx">
                <asp:Button ID="btn_editacc" runat="server" CssClass="auto-style10" Text="Edit Account" ForeColor="#6699FF" OnClick="btn_editacc_Click" />
                <img id="edit" runat="server" alt="Edit Account" class="auto-style15" src="Image/Edit%20Account.png" />
            </a>
            <a href="#">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Text="Deactivate" ForeColor="#660066" />
                <img id="deactivate" runat="server" alt="Deactiviate PNG" class="auto-style14" src="Image/Deactivate%20Acc.png" />
            </a>
            
                <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Text="Sign Out" ForeColor="#3399FF" OnClick="Button2_Click" />
                <img id="logout" runat="server" alt="logout" class="auto-style16" src="Image/log-out.png" />
            


        </div>
    </form>
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

        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
