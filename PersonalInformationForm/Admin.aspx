<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PersonalInformationForm.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="icon" type="image/png" href="Image/wallet.png"/>
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 169px;
            height: 28px;
            position: absolute;
            top: 888px;
            left: 827px;
            z-index: 1;
        }
        .auto-style2 {
            width: 103px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 515px;
        }
        .auto-style4 {
            width: 114px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 719px;
            z-index: 1;
        }
        .auto-style5 {
            width: 112px;
            height: 28px;
            position: absolute;
            top: 889px;
            left: 619px;
            z-index: 1;
        }
        .auto-style9 {
            width: 1014px;
            height: 48px;
            position: absolute;
            top: 266px;
            left: 128px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 2px;
            left: 595px;
            z-index: 1;
            width: 128px;
            height: 126px;
        }
        .auto-style11 {
            position: absolute;
            top: 132px;
            left: 617px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 1px;
            left: 263px;
            z-index: 1;
            width: 131px;
            height: 122px;
        }
        .auto-style13 {
            position: absolute;
            top: 1px;
            left: 821px;
            z-index: 1;
            width: 122px;
            height: 123px;
            display:flex;
        }
        .auto-style14 {
            position: absolute;
            top: 130px;
            left: 820px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 195px;
            left: 263px;
            z-index: 1;
            width: 123px;
            background-color:mistyrose;
            border-radius: 10px;
            height: 42px;
            padding: 10px;
        }
        .verify{
            background-color:dodgerblue;
            padding: 40px;
            border-radius: 10px;
        }
        .auto-style16 {
            position: absolute;
            top: 395px;
            left: 381px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 429px;
            left: 441px;
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
                           <a rel="Home" href="Admin.aspx">
                               Home
                           </a>
                       </li>
                
                        <li>
                           <a href="admin_verify.aspx">
                             Verify
                           </a>
                       </li>
                        <li>
                           <a href="admin_status.aspx">
                             Status
                           </a>
                       </li>
                        <li>
                           <a href="admin_transaction.aspx">
                             View Transactions
                           </a>
                       </li>
                        <li>
                            <a href="admin_settings.aspx">Settings </a>
                       </li>
                       
                   </ul>
               </nav>
           </div>   
    </div>
    <form id="form1" runat="server">
        <div class="auto-style9">
            <a href="#">
                <img src="Image/user%20status.png" class="auto-style10" /><br />
                <asp:Label ID="Label1" runat="server" Text="User Status" CssClass="auto-style11"></asp:Label>
            </a>
            
                  <a href="admin_verify.aspx">
                <img src="Image/verified-account.png" class="auto-style12" />
                <asp:Label ID="Label3" runat="server" Text="Verify Account" CssClass="auto-style15" ForeColor="#9900FF"></asp:Label>
            </a>
            
          
            <a href="#">
                <img src="Image/View%20Transaction.png" class="auto-style13" />
                <asp:Label ID="Label4" runat="server" Text="View Transactions" CssClass="auto-style14"></asp:Label>
            </a>
        </div>
    <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 830px; left: 170px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -21px; left: 475px; width: 38px; height: 41px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Admin.aspx">Home</a></li>
                <li class="auto-style5"><a href="admin_verify.aspx" >Verify</a></li>
                <li class="auto-style4"><a href="admin_status.aspx" >Status</a></li>
                <li class="auto-style1"><a href="admin_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 912px; left: 447px">E-Wallet Co. © 2023</p>
        </footer>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style16" Text="Number of Pendings:"></asp:Label>
    </div>
    
   
        <strong>
        <asp:Label ID="txt_nover" runat="server" CssClass="auto-style17"></asp:Label>
        </strong>
    
   
    </form>
    
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
