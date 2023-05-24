<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_transaction.aspx.cs" Inherits="PersonalInformationForm.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Transaction</title>
   <link rel="icon" type="image/png" href="Image/wallet.png" />
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 189px;
            height: 28px;
            position: absolute;
            top: 890px;
            left: 782px;
            z-index: 1;
        }
        .auto-style2 {
            width: 114px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 412px;
        }
        .auto-style5 {
            width: 164px;
            height: 28px;
            position: absolute;
            top: 890px;
            left: 647px;
            z-index: 1;
        }
        .auto-style6 {
            width: 120px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 487px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style7 {
            width: 102px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 580px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 192px;
            left: 626px;
            z-index: 1;
            height: 24px;
            width: 234px;
        }
        .auto-style10 {
            position: absolute;
            top: 273px;
            left: 930px;
            z-index: 1;
              text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
        }
        .auto-style11 {
            width: 613px;
            height: 163px;
            position: absolute;
            top: 319px;
            left: 386px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 159px;
            left: 600px;
            z-index: 1;
            width: 261px;
        }
        .auto-style13 {
            position: absolute;
            top: 275px;
            left: 325px;
            z-index: 1;
        }
        .auto-style14 {
            padding: 50px 0;
            background-color: #ffffff;
            color: #4b4c4d;
            margin-left: 40px;
        }
        .auto-style15 {
            position: absolute;
            top: 274px;
            left: 638px;
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
            <asp:Label ID="Label1" runat="server" Text="Sent, Cash Out, Recieved" CssClass="auto-style9"></asp:Label>
            <asp:Button ID="btn_vwall" runat="server" CssClass="auto-style10" Text="View" OnClick="btn_vwall_Click" />
            <asp:TextBox ID="txt_dfrom" Height="25px" placeholder="Last Name" runat="server" style="text-indent: 10px; z-index: 1; position: absolute; top: 272px; left: 388px;" TextMode="Date" CssClass="auto-style25"></asp:TextBox>
            <asp:TextBox ID="txt_dto" Height="25px" placeholder="Last Name" runat="server" style="text-indent: 10px; z-index: 1; position: absolute; top: 272px; left: 672px;" TextMode="Date" CssClass="auto-style25"></asp:TextBox>

            <asp:GridView ID="vw_all" runat="server" CssClass="auto-style11">
            </asp:GridView>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Font-Size="X-Large" ForeColor="#3333CC" Text="Statement of Account"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="TO:"></asp:Label>
        </div>
 
     <div class="auto-style14">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 830px; left: 170px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: 472px; width: 43px; height: 44px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Client.aspx">Home</a></li>
                <li class="auto-style6"><a href="Cashin.aspx" >Cash In</a></li>
                <li class="auto-style7"><a href="Cashout.aspx" >Cash out</a></li>
                <li class="auto-style5"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style1"><a href="view_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 948px; left: 447px">E-Wallet Co. © 2023</p>
        </footer>
         <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="FROM:"></asp:Label>
    </div>
 
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
