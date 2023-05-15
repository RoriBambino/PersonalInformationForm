<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashin.aspx.cs" Inherits="PersonalInformationForm.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cash In</title>
   <link href="Style.css" rel="stylesheet"/>
    <link rel="icon" type="image/png" href="Image/wallet.png"/>

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
            width: 170px;
            height: 28px;
            position: absolute;
            top: 891px;
            left: 847px;
            z-index: 1;
        }
        .auto-style2 {
            display: inline-block;
            position: absolute;
            top: 891px;
            left: 423px;
            z-index: 1;
            width: 57px;
        }
        .auto-style3 {
            position: absolute;
            top: 703px;
            left: 509px;
            z-index: 1;
            width: 88px;
        }
        .auto-style4 {
            position: absolute;
            top: 727px;
            left: 600px;
            z-index: 1;
            width: 86px;
        }
        .auto-style6 {
            width: 121px;
            height: 28px;
            position: absolute;
            top: 892px;
            left: 703px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 163px;
            left: 0px;
        }
        .auto-style8 {
            position: absolute;
            top: 148px;
            left: 683px;
            z-index: 1;
            width: 117px;
            height: 46px;
        }
        .auto-style9 {
            position: absolute;
            top: 187px;
            left: 0px;
        }
        .auto-style10 {
            position: absolute;
            top: 219px;
            left: 605px;
            z-index: 1;
            width: 21px;
            height: 49px;
        }
        .auto-style11 {
            position: absolute;
            top: 229px;
            left: 638px;
            z-index: 1;
            width: 212px;
            height: 24px;
        }
        .auto-style12 {
            position: absolute;
            top: 304px;
            left: 685px;
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
            position: absolute;
            top: 260px;
            left: 655px;
            z-index: 1;
            width: 184px;
            height: 24px;
        }
        .auto-style14 {
            position: absolute;
            top: 259px;
            left: 663px;
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

            <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Font-Size="XX-Large" Text="Cash In"></asp:Label>

        </div>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Font-Bold="False" Font-Size="XX-Large" Text="₱"></asp:Label>
        <asp:TextBox ID="cash_money" runat="server" BorderStyle="Inset" CssClass="auto-style11"></asp:TextBox>
        <asp:Button ID="confirm_btn" runat="server" CssClass="auto-style12" Text="Confirm" Font-Names="Arial Black" Font-Size="Large" ForeColor="#CC99FF" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cash_money" CssClass="auto-style13" ErrorMessage="* Please Input Money Amount" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="cash_money" CssClass="auto-style14" ErrorMessage="* Money Inputed is Invalid" Font-Size="Small" ForeColor="#CC0000" MaximumValue="10000.00" MinimumValue="100.00"></asp:RangeValidator>
        
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
                <li class="auto-style6"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style1"><a href="view_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 948px; left: 447px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
