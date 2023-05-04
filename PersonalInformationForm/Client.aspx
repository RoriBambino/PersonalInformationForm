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
            width: 130px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 244px;
            left: 435px;
            z-index: 1;
            height: 89px;
        }
        .auto-style12 {
            padding: 0;
            width: 122px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 242px;
            left: 308px;
            z-index: 1;
            height: 91px;
        }
        .auto-style13 {
            padding: 0;
            width: 124px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 242px;
            left: 566px;
            z-index: 1;
            height: 90px;
        }
        .auto-style14 {
            padding: 0;
            width: 134px;
            cursor: pointer;
            margin: 20px 0;
            position: absolute;
            top: 244px;
            left: 167px;
            z-index: 1;
            height: 91px;
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
                           <a rel="Home" href="Client.aspx">
                               Home
                           </a>
                       </li>
                       <li><a href="#">Cash In</a></li>
                        <li>
                           <a href="#">
                             Cash Out
                           </a>
                       </li>
                        <li>
                           <a href="#">
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
        </div>
    </form>

    <a href="#"><img class= "auto-style14" src="Image/wallet2.png" alt="Cash In" /></a>
    <a href="#"><img class= "auto-style13" src="Image/cash.png" alt="Cash Out"/></a>
    <a href="#"><img class= "auto-style12" src="Image/payment-method.png" alt="Send Money"/></a>
    <a href="#"><img class= "auto-style11" src="Image/investigation.png" alt="View Transactions"/></a>

 <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1104px"><a href="#" class="auto-style3"><i class="icon ion-social-instagram"></i></a><a href="#" class="auto-style2"><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: -1px; width: 42px; height: 40px;"></i></a><a href="#" class="auto-style4"><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 2px; width: 36px"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="PersonalInfoEntry.aspx" class="auto-style5">Home</a></li>
                <li class="auto-style9"><a href="Cashin.aspx">Cash In</a></li>
                <li class="auto-style7"><a href="#">About</a></li>
                <li class="auto-style8"><a href="Signin.aspx">Sign In</a></li>
                <li class="auto-style10" style="z-index: 1"><a href="PersonalInfoentry2.aspx" class="auto-style6">Register</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 945px; height: 19px; position: absolute; top: 1030px; left: 217px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
