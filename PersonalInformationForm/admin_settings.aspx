<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_settings.aspx.cs" Inherits="PersonalInformationForm.WebForm17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Verify</title>
    <link rel="icon" type="image/png" href="Image/wallet.png"/>
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        .auto-style1 {
            width: 162px;
            height: 28px;
            position: absolute;
            top: 750px;
            left: 731px;
            z-index: 1;
        }
        .auto-style2 {
            width: 97px;
            height: 28px;
            position: absolute;
            top: 751px;
            left: 454px;
        }
        .auto-style3 {
            width: 94px;
            height: 28px;
            position: absolute;
            top: 751px;
            left: 638px;
            z-index: 1;
        }
        .auto-style4 {
            width: 94px;
            height: 28px;
            position: absolute;
            top: 751px;
            left: 550px;
            z-index: 1;
        }
        .auto-style5 {
            width: 150px;
            height: 150px;
            position: absolute;
            top: 234px;
            left: 309px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 171px;
            left: 642px;
            z-index: 1;
            width: 256px;
        }
        .auto-style8 {
            position: absolute;
            top: 268px;
            left: 622px;
            z-index: 1;
            width: 285px;
        }
        .auto-style9 {
            position: absolute;
            top: 307px;
            left: 540px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 307px;
            left: 621px;
            z-index: 1;
            width: 286px;
        }
        .auto-style11 {
            position: absolute;
            top: 267px;
            left: 933px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 86px;
            height: 28px;
        }
        .auto-style12 {
            position: absolute;
            top: 562px;
            left: 1079px;
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
            top: 350px;
            left: 702px;
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
            top: 269px;
            left: 568px;
            z-index: 1;
        }
    </style>
</head>
<body>
  <!--Menu Bar-->
     <div class="menu">
            <!--Header-->
           <div class="logo">
               <a  ref="pageLogo" href="Admin.aspx"><img class="icon" src="Image/wallet.png" alt="logo" ></a>
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
         <div>
             <img alt="settings" class="auto-style5" src="Image/Edit%20Account.png" /><asp:Label ID="Label3" runat="server" CssClass="auto-style6" Font-Size="XX-Large" ForeColor="#000099" Text="Account Settings"></asp:Label>
             <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="Password:"></asp:Label>
             <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Text="Save" ForeColor="#0099FF" />
             <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text="Email:"></asp:Label>
        </div>
 <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 693px; left: 103px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -21px; left: 475px; width: 38px; height: 41px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Admin.aspx">Home</a></li>
                <li class="auto-style4"><a href="admin_verify.aspx" >Verify</a></li>
                <li class="auto-style3"><a href="admin_status.aspx" >Status</a></li>
                <li class="auto-style1"><a href="#">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 771px; left: 398px">E-Wallet Co. © 2023</p>
            <asp:TextBox ID="txt_email" runat="server" CssClass="auto-style8"></asp:TextBox>
        </footer>
        <asp:TextBox ID="txt_pass" runat="server" CssClass="auto-style10"></asp:TextBox>
    </div>
    
   
         <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="Edit" ForeColor="#6699FF" OnClick="Button1_Click" />
         <asp:Button ID="Button2" runat="server" CssClass="auto-style12" ForeColor="#3399FF" Text="Log Out" OnClick="Button2_Click" />
    
   
    </form>
    
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>