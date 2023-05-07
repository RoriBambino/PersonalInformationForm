<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="PersonalInformationForm.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client</title>
   <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
         .footer-basic footer{
            margin-top: 500px;
        }
        .auto-style2 {
            position: absolute;
            top: 946px;
            left: 764px;
            z-index: 1;
        }
        .auto-style3 {
            height: 21px;
            position: absolute;
            top: 943px;
            left: 668px;
        }
        .auto-style4 {
            height: 21px;
            position: absolute;
            top: 944px;
            left: 579px;
            z-index: 1;
        }
        .auto-style5 {
            height: 21px;
            position: absolute;
            top: 995px;
            left: 574px;
            z-index: 1;
        }
        .auto-style6 {
            height: 21px;
            position: absolute;
            top: 996px;
            left: 574px;
            z-index: 1;
        }
        .auto-style7 {
            height: 21px;
            position: absolute;
            top: 995px;
            left: 661px;
            z-index: 1;
        }
        .auto-style8 {
            height: 21px;
            position: absolute;
            top: 993px;
            left: 857px;
            z-index: 1;
            
        }
        .auto-style9 {
            height: 21px;
            position: absolute;
            top: 994px;
            left: 758px;
            z-index: 1;
        }
        .auto-style10 {
            display: inline-block;
            position: absolute;
            top: 991px;
            left: 462px;
        }
        .auto-style11 {
            padding: 0;
            width: 77px;
            cursor: pointer;
            margin: 20px 0 7px 0;
            position: absolute;
            top: 379px;
            left: 846px;
            z-index: 1;
            height: 81px;
        }
        .auto-style12 {
            padding: 0;
            width: 79px;
            cursor: pointer;
            margin: 20px 0 10px 0;
            position: absolute;
            top: 377px;
            left: 687px;
            z-index: 1;
            height: 77px;
        }
        .auto-style13 {
            padding: 0;
            width: 91px;
            cursor: pointer;
            margin: 20px 0 8px 0;
            position: absolute;
            top: 375px;
            left: 509px;
            z-index: 1;
            height: 80px;
        }
        .auto-style14 {
            padding: 0;
            width: 87px;
            cursor: pointer;
            margin: 20px 0 7px 0;
            position: absolute;
            top: 374px;
            left: 333px;
            z-index: 1;
            height: 70px;
        }
        .auto-style18 {
            position: absolute;
            top: 203px;
            left: 604px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 268px;
            left: 591px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 201px;
            left: 753px;
            z-index: 1;
            width: 29px;
            height: 26px;
        }
        .auto-style21 {
            position: absolute;
            top: 524px;
            left: 330px;
            z-index: 1;
            width: 97px;
            height: 99px;
        }
        .auto-style22 {
            position: absolute;
            top: 33px;
            left: 151px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 495px;
            left: 349px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 500px;
            left: 523px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 503px;
            left: 684px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 502px;
            left: 840px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 620px;
            left: 352px;
            
        }
    </style>
</head>
<body>
        <!--Menu Bar-->
      <div class="menu">
            <!--Header-->
           <div class="logo">
               <a  ref="pageLogo" href="PersonalInfoEntry.aspx"><img class="icon" src="Image/wallet.png" alt="logo" ></a>
               <form> 
                <asp:Label ID="Label2" runat="server" CssClass="auto-style22" Font-Names="Bookman Old Style" Font-Size="X-Large" ForeColor="Black" Text="E-Save"></asp:Label>

               </form>
               <nav>
                <input type="checkbox" id="check">
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
                           <a href="#">
                             View Transactions
                           </a>
                       </li>
                        <li>
                           <a href="#">
                            Settings
                           </a>
                       </li>
                       
                   </ul>
               </nav>
           </div>   
    </div>

    <form id="form1" runat="server">
        <div class="auto-style1">

            <asp:Label ID="Label3" runat="server" CssClass="auto-style23" Text="Cash In"></asp:Label>

            <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Text="Available Balance"></asp:Label>
            <a href="Cashin.aspx">
                <img src="Image/plus_sign_007-removebg-preview.png" alt="plus-sign" class="auto-style20"/>

           
            <asp:Label ID="Label4" runat="server" CssClass="auto-style24" Text="Cash Out"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style25" Text="Send Money"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style26" Text="Transactions"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style27" Text="Settings"></asp:Label>

            </a>
       
           
      
        
        </div>

    <a href="Cashin.aspx"><img class= "auto-style14" src="Image/wallet2.png" alt="Cash In" /></a>
    <a href="Cashout.aspx"><img class= "auto-style13" src="Image/cash.png" alt="Cash Out"/></a>
    <a href="SendMoney.aspx"><img class= "auto-style12" src="Image/payment-method.png" alt="Send Money"/></a>
    <a href="#"><img class= "auto-style11" src="Image/investigation.png" alt="View Transactions"/></a>
    <a href="#"><img src="Image/settings.png" alt="Settings" class="auto-style21" /> </a>

 &nbsp;
    </form>
<div class="footer-basic">
        <footer>
            <div class="social" style="width: 1104px"><a href="#" class="auto-style3"><i class="icon ion-social-instagram"></i></a><a href="#" class="auto-style2"><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: -1px; width: 42px; height: 40px;"></i></a><a href="#" class="auto-style4"><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 2px; width: 36px"></i></a>
                <asp:Label ID="show_money" runat="server" CssClass="auto-style18"></asp:Label>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="Client.aspx" class="auto-style5">Home</a></li>
                <li class="auto-style9"><a href="Cashin.aspx">Cash In</a></li>
                <li class="auto-style7"><a href="Cashout.aspx">Cash out</a></li>
                <li class="auto-style8"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style10" style="z-index: 1"><a href="#" class="auto-style6">View Transactions</a></li>
            </ul>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
