<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="PersonalInformationForm.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client</title>
    <link rel="icon" type="image/png" href="Image/wallet.png"/>
   <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
       
        .auto-style1 {
            height: 8px;
            width: 947px;
            position: absolute;
            top: 243px;
            left: 0px;
            z-index: 1;
        }
         .footer-basic footer{
            margin-top: 500px;
        }
        .auto-style5 {
            height: 24px;
            position: absolute;
            top: 889px;
            left: 422px;
            z-index: 1;
        }
        .auto-style7 {
            height: 26px;
            position: absolute;
            top: 889px;
            left: 517px;
            z-index: 1;
        }
        .auto-style8 {
            height: 25px;
            position: absolute;
            top: 891px;
            left: 757px;
            z-index: 1;
            width: 130px;
        }
        .auto-style9 {
            height: 25px;
            position: absolute;
            top: 890px;
            left: 645px;
            z-index: 1;
        }
        .auto-style10 {
            
            position: absolute;
            top: 890px;
            left: 905px;
            z-index: 1;
            width: 180px;
        }
        .auto-style18 {
            position: absolute;
            top: 308px;
            left: 310px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 134px;
            left: 315px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: -158px;
            left: 540px;
            z-index: 1;
            width: 27px;
            height: 26px;
        }
        .auto-style22 {
            position: absolute;
            top: 32px;
            left: 159px;
            z-index: 1;
        }
        .auto-style28 {
            width: 103%;
            display: flex;
            align-items: center;
            height: 89px;
        }
        .auto-style29 {
            position: absolute;
            top: 244px;
            left: 0px;
        }
        .auto-style30 {
            position: absolute;
            top: 168px;
            left: 18px;
            z-index: 1;
            width: 185px;
        }
        .auto-style31 {
            position: absolute;
            top: -75px;
            left: 184px;
            z-index: 1;
            width: 177px;
        }
        .auto-style32 {
            position: absolute;
            top: 101px;
            left: 466px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 99px;
            left: 562px;
            z-index: 1;
            width: 475px;
        }
        .auto-style34 {
            position: absolute;
            top: 84px;
            left: 0px;
            z-index: 1;
            width: 1222px;
            height: 84px;
        }
        .auto-style35 {
            width: 100%;
            min-height: 10vh;
            padding-left: 7%;
            padding-right: 5%;
            box-sizing: border-box;
            overflow: hidden;
            background-color: #0082C8;
        }
       
        .auto-style36 {
            position: absolute;
            top: 170px;
            left: 930px;
            z-index: 1;
            width: 146px;
        }
        .auto-style37 {
            position: absolute;
            top: 170px;
            left: 1079px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 381px;
            left: 831px;
            z-index: 1;
            width: 195px;
        }
        .auto-style39 {
            position: absolute;
            top: 308px;
            left: 820px;
            z-index: 1;
        }
        .auto-style40 {
            position: absolute;
            top: 142px;
            left: 704px;
            z-index: 1;
            width: 128px;
        }
       
        .auto-style41 {
            width: 53px;
            height: 46px;
            position: absolute;
            top: 559px;
            left: 476px;
            z-index: 1;
        }
        .auto-style42 {
            width: 59px;
            height: 50px;
            position: absolute;
            top: 556px;
            left: 614px;
            z-index: 1;
        }
        .auto-style43 {
            width: 54px;
            height: 53px;
            position: absolute;
            top: 556px;
            left: 786px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 558px;
            left: 959px;
            z-index: 1;
            width: 54px;
            height: 54px;
        }
               
        .auto-style45 {
            position: absolute;
            top: 823px;
            left: 597px;
            z-index: 1;
        }
        .auto-style46 {
            position: absolute;
            top: 823px;
            left: 696px;
            z-index: 1;
        }
        .auto-style47 {
            position: absolute;
            top: 822px;
            left: 799px;
            z-index: 1;
        }
               
        .auto-style48 {
            position: absolute;
            top: 89px;
            left: 1121px;
            z-index: 1;
            width: 94px;
        }
        .auto-style49 {
            position: absolute;
            top: 89px;
            left: 1070px;
            z-index: 1;
        }
        .auto-style50 {
            position: absolute;
            top: 142px;
            left: 569px;
            z-index: 1;
        }
               
    </style>
</head>
<body>
        <!--Menu Bar-->
     <div class="auto-style35">
            <!--Header-->
           <div class="auto-style28">
               <a  ref="pageLogo" href="#"><img class="icon" src="Image/wallet.png" alt="logo" ></a>
               <nav>
                <input type="checkbox" id="check">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style22" Font-Names="Bookman Old Style" Font-Size="X-Large" ForeColor="Black" Text="E-Save"></asp:Label>

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
     

        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style19" Text="Available Balance" Font-Size="15pt"></asp:Label>
            <a href="Cashin.aspx" class="auto-style29" style="z-index: 1">
                <img src="Image/plus_sign_007-removebg-preview.png" alt="plus-sign" class="auto-style20"/>
            

            </a>
            <asp:Label ID="acc_num" runat="server" CssClass="auto-style31" Font-Size="15pt"></asp:Label>
        </div>
    
        <a href="Cashin.aspx">
        &nbsp;<asp:Label ID="Label3" runat="server" CssClass="auto-style23" Text="Cash In" style="z-index: 1; position: absolute; top: 511px; left: 468px" Font-Size="14pt"></asp:Label> 
        <img class= "auto-style41" src="Image/wallet2.png" alt="Cash In" /></a><a href="Cashout.aspx"><img class= "auto-style42" src="Image/cash.png" alt="Cash Out"/>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style24" Text="Cash Out" style="z-index: 1; position: absolute; top: 512px; left: 599px" Font-Size="14pt"></asp:Label>
    </a>
    <a href="SendMoney.aspx">
        <img class= "auto-style43" src="Image/payment-method.png" alt="Send Money"/>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style25" Text="Send Money" style="z-index: 1; position: absolute; top: 513px; left: 757px; width: 109px;" Font-Size="14pt"></asp:Label>
    </a>
    <a href="#">
        <img class= "auto-style44" src="Image/investigation.png" alt="View Transactions"/>
        &nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style26" Text="Transactions" style="z-index: 1; position: absolute; top: 515px; left: 935px" Font-Size="14pt"></asp:Label>
    </a>
     <a href="#">
         &nbsp;</a><div>
            <asp:Label ID="Label14" runat="server" CssClass="auto-style36" Font-Size="15pt" Text="Registered Date:"></asp:Label>
            <asp:Label ID="tot_monsent" runat="server" CssClass="auto-style39" Font-Size="35pt">0.00</asp:Label>
            <asp:Label ID="Label13" runat="server" BackColor="#93AEFF" CssClass="auto-style34"></asp:Label>
             &nbsp;<asp:Label ID="Label12" runat="server" CssClass="auto-style32" Text="Hello," Font-Size="20pt"></asp:Label>
            <asp:Label ID="cli_create_date" runat="server" CssClass="auto-style37" Font-Size="15pt"></asp:Label>
        </div>
        
        <asp:Label ID="user_name" runat="server" CssClass="auto-style33" Font-Size="20pt"></asp:Label>
&nbsp;<asp:Label ID="acc_status" runat="server" CssClass="auto-style40"></asp:Label>
        <asp:Label ID="cli_status" runat="server" CssClass="auto-style48"></asp:Label>
                <asp:Label ID="acc_balance" runat="server" CssClass="auto-style18" Font-Size="35pt">0.00</asp:Label>

        <asp:Label ID="Label11" runat="server" CssClass="auto-style30" Text="Account Number:" Font-Size="15pt"></asp:Label>
            <asp:Label ID="Label15" runat="server" CssClass="auto-style38" Font-Size="15pt" Text="Total Money Sent"></asp:Label>
     <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1104px"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: -1px; width: 43px; height: 44px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -20px; left: 1px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -20px; left: -2px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="Client.aspx" class="auto-style5">Home</a></li>
                <li class="auto-style9"><a href="Cashin.aspx">Cash In</a></li>
                <li class="auto-style7"><a href="Cashout.aspx">Cash out</a></li>
                <li class="auto-style8"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style10"><a href="view_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 936px; left: 442px">E-Wallet Co. © 2023</p>
        </footer>
       
         <asp:Label ID="Label16" runat="server" CssClass="auto-style49" Text="Status:"></asp:Label>
         <asp:Label ID="Label17" runat="server" CssClass="auto-style50" Text="Verification Status:"></asp:Label>
       
    </div>
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
