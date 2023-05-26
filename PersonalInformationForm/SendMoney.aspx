<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMoney.aspx.cs" Inherits="PersonalInformationForm.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Send Money</title>
    <link rel="icon" type="image/png" href="Image/wallet.png" />
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 180px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 818px;
        }
        .auto-style2 {
            width: 65px;
            height: 28px;
            position: absolute;
            top: 890px;
            left: 402px;
            z-index: 1;
        }
        .auto-style3 {
            width: 93px;
            height: 28px;
            position: absolute;
            left: 574px;
            z-index: 1;
            top: 889px;
        }
        .auto-style5 {
            width: 130px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 682px;
        }
        .auto-style7 {
            width: 81px;
            height: 28px;
            position: absolute;
            top: 890px;
            left: 481px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 444px;
            left: 762px;
            z-index: 1;
            width: 46px;
            height: 23px;
        }
        .auto-style9 {
            position: absolute;
            top: 233px;
            left: 558px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 231px;
            left: 683px;
            z-index: 1;
            width: 201px;
            right: 247px;
        }
        .auto-style11 {
            position: absolute;
            top: 256px;
            left: 696px;
            z-index: 1;
            width: 180px;
        }
        .auto-style12 {
            position: absolute;
            top: 315px;
            left: 702px;
            z-index: 1;
            width: 165px;
        }
        .auto-style13 {
            position: absolute;
            top: 360px;
            left: 554px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 360px;
            left: 687px;
            z-index: 1;
            width: 203px;
        }
        .auto-style15 {
            position: absolute;
            top: 391px;
            left: 554px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 391px;
            left: 696px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 474px;
            left: 557px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 473px;
            left: 643px;
            z-index: 1;
            width: 235px;
        }
        .auto-style19 {
            position: absolute;
            top: 473px;
            left: 627px;
            z-index: 1;
            height: 25px;
            width: 13px;
        }
        .auto-style20 {
            position: absolute;
            top: 226px;
            left: 900px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style21 {
            position: absolute;
            top: 586px;
            left: 690px;
            z-index: 1;
             text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style22 {
            position: absolute;
            top: 315px;
            left: 0px;
        }
        .auto-style23 {
            position: absolute;
            top: 528px;
            left: 556px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 526px;
            left: 643px;
            z-index: 1;
            width: 233px;
        }
        .auto-style25 {
            position: absolute;
            top: 497px;
            left: 707px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 498px;
            left: 648px;
            z-index: 1;
            width: 229px;
        }
        .auto-style27 {
            position: absolute;
            top: 549px;
            left: 701px;
            z-index: 1;
            width: 107px;
        }
        .auto-style28 {
            position: absolute;
            top: 498px;
            left: 654px;
            z-index: 1;
            width: 224px;
        }
        .auto-style29 {
            position: absolute;
            top: 473px;
            left: 917px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 284px;
            left: 737px;
            z-index: 1;
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
            <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Account Number:"></asp:Label>
            <asp:TextBox ID="txt_id" runat="server" CssClass="auto-style10" TextMode="Number"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_id" CssClass="auto-style11" ErrorMessage="* Input Account Id To proceed" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:Button ID="btnsearch" runat="server" CssClass="auto-style20" Text="Search" OnClick="btnsearch_Click"  CausesValidation="False" />

            <asp:Label ID="Label_sendmoney" runat="server" CssClass="auto-style8" Text="Send Money"></asp:Label>

             <asp:Label ID="Label_amount" runat="server" CssClass="auto-style17" Text="Amount:"></asp:Label>
            <asp:Label ID="Label_amount2" runat="server" CssClass="auto-style19" Text="₱"></asp:Label>


         <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text="Recipients Information"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text="Account Number:"></asp:Label>
        <asp:Label ID="txt_accnum" runat="server" CssClass="auto-style14"></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style15" Text="Reciepients Name:"></asp:Label>
        <asp:Label ID="txt_recname" runat="server" CssClass="auto-style16"></asp:Label>
        <asp:TextBox ID="txt_amount" runat="server" CssClass="auto-style18"></asp:TextBox>
        <asp:Button ID="btnsend" runat="server" CssClass="auto-style21" Text="Send" OnClick="btnsend_Click1"/>
        <asp:Label ID="Label_pass" runat="server" CssClass="auto-style23" Text="Password:"></asp:Label>
        <asp:TextBox ID="txt_password" runat="server" CssClass="auto-style24" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_amount" CssClass="auto-style25" ErrorMessage="* Input Amount" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_amount" CssClass="auto-style26" ErrorMessage="* Money Reached Min/Max Amount" Font-Size="Small" ForeColor="#CC0000" MaximumValue="10000.00" MinimumValue="100.00" Type="Currency"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_password" CssClass="auto-style27" ErrorMessage="* Input Password" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:Label ID="txt_status" runat="server" CssClass="auto-style30"></asp:Label>
        </div>
        
   <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 830px; left: 170px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: 472px; width: 43px; height: 44px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Client.aspx">Home</a></li>
                <li class="auto-style7"><a href="Cashin.aspx">Cash In</a></li>
                <li class="auto-style3"><a href="Cashout.aspx" >Cash out</a></li>
                <li class="auto-style5"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style1"><a href="view_transaction.aspx">View Transactions</a></li>
                
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 911px; left: 447px">E-Wallet Co. © 2023</p>
           
        </footer>
    </div>
       
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txt_amount" CssClass="auto-style28" ErrorMessage="*Amount Must be divisible by 100" Font-Size="Small" ForeColor="#CC0000"></asp:CustomValidator>
        <asp:Label ID="Label_err" runat="server" CssClass="auto-style29"></asp:Label>
       
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
