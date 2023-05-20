<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashout.aspx.cs" Inherits="PersonalInformationForm.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Cash Out</title>
    <link rel="icon" type="image/png" href="Image/wallet.png" />
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
           .footer-basic{
            text-align:center;
            margin-top: 200px;
        }
        .auto-style1 {
            width: 176px;
            height: 28px;
            position: absolute;
            top: 890px;
            left: 882px;
            z-index: 1;
        }
        .auto-style2 {
            width: 58px;
            height: 28px;
            position: absolute;
            top: 895px;
            left: 415px;
        }
        .auto-style3 {
            width: 123px;
            height: 28px;
            position: absolute;
            top: 731px;
            left: 501px;
            z-index: 1;
        }
        .auto-style4 {
            width: 99px;
            height: 28px;
            position: absolute;
            top: 705px;
            left: 638px;
            z-index: 1;
        }
        .auto-style5 {
            width: 124px;
            height: 28px;
            position: absolute;
            top: 891px;
            left: 749px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 164px;
            left: 719px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 187px;
            left: 0px;
        }
        .auto-style8 {
            position: absolute;
            top: 251px;
            left: 612px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 163px;
            left: 0px;
        }
        .auto-style10 {
            position: absolute;
            top: 251px;
            left: 712px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 250px;
            left: 729px;
            z-index: 1;
            width: 241px;
        }
        .auto-style12 {
            position: absolute;
            top: 371px;
            left: 693px;
            z-index: 1;
            height: 28px;
            width: 152px;
        }
        .auto-style13 {
            position: absolute;
            top: 243px;
            left: 860px;
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
            position: absolute;
            top: 413px;
            left: 659px;
            z-index: 1;
            width: 236px;
        }
        .auto-style15 {
            position: absolute;
            top: 414px;
            left: 638px;
            z-index: 1;
            height: 28px;
            width: 17px;
        }
        .auto-style16 {
            position: absolute;
            top: 443px;
            left: 677px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 173px;
            height: 20px;
        }
        .auto-style17 {
            position: absolute;
            top: 443px;
            left: 689px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 476px;
            left: 705px;
            z-index: 1;
             text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 112px;
            height: 35px;
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
        <div>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style10" Text="₱"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Font-Size="Large" Text="₱"></asp:Label>
        </div>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Cash Out"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text="Total Balance:"></asp:Label>
        <asp:Label ID="money_balance" runat="server" CssClass="auto-style11"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="Amount To Withdraw"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="Continue" CausesValidation="False" />
        <asp:TextBox ID="user_withdraw" runat="server" CssClass="auto-style14"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user_withdraw" CssClass="auto-style16" ErrorMessage="* Please Input Money Amount" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="user_withdraw" CssClass="auto-style17" ErrorMessage="* Money Inputed is Invalid" Font-Size="Small" ForeColor="#CC0000" MaximumValue="10000" MinimumValue="100"></asp:RangeValidator>        
        <asp:Button ID="withdraw_btn" runat="server" CssClass="auto-style18" Text="Withdraw" />
 
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
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 948px; left: 447px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
