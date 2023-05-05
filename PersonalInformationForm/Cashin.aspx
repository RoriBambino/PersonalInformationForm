<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cashin.aspx.cs" Inherits="PersonalInformationForm.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cash In</title>
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
        <div>
        </div>
    </form>
     <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1054px"><a href="#" class="auto-style1"><i class="icon ion-social-instagram"></i></a><a href="#" class="auto-style3"><i class="icon ion-social-twitter"></i></a><a href="#" class="auto-style2"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="PersonalInfoEntry.aspx" class="auto-style8">Home</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style7">Services</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style6">About</a></li>
                <li class="list-inline-item"><a href="Signin.aspx" class="auto-style5">Sign In</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style4">Register</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 848px; height: 19px; position: absolute; top: 625px; left: 293px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</body>
</html>
