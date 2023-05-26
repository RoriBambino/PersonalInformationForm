<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_verify.aspx.cs" Inherits="PersonalInformationForm.WebForm12" %>

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
            top: 887px;
            left: 812px;
            z-index: 1;
        }
        .auto-style2 {
            width: 97px;
            height: 28px;
            position: absolute;
            top: 888px;
            left: 506px;
        }
        .auto-style3 {
            width: 94px;
            height: 28px;
            position: absolute;
            top: 888px;
            left: 719px;
            z-index: 1;
        }
        .auto-style4 {
            width: 94px;
            height: 28px;
            position: absolute;
            top: 888px;
            left: 603px;
            z-index: 1;
        }
        .auto-style5 {
            width: 217px;
            height: 163px;
            position: absolute;
            top: 347px;
            left: 146px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 274px;
            left: 340px;
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
                            <a href="#">Settings </a>
                       </li>
                       
                   </ul>
               </nav>
           </div>   
    </div>

    <form id="form1" runat="server">
         <div>
            <asp:Button ID="btn_vwall" runat="server" CssClass="auto-style10" Text="View"  style="z-index: 1; position: absolute; top: 270px; left: 877px" OnClick="btn_vwall_Click" />
            <asp:TextBox ID="txt_dfrom" Height="25px" placeholder="Last Name" runat="server" style="text-indent: 10px; z-index: 1; position: absolute; top: 272px; left: 388px;" TextMode="Date" CssClass="auto-style25"></asp:TextBox>
            <asp:TextBox ID="txt_dto" Height="25px" placeholder="Last Name" runat="server" style="text-indent: 10px; z-index: 1; position: absolute; top: 272px; left: 672px;" TextMode="Date" CssClass="auto-style25"></asp:TextBox>
            <div class="auto-style5">
                <asp:GridView ID="vw_all" runat="server" ScrollBars="Vertical" PageSize="10" CssClass="auto-style16">

            </asp:GridView>

            </div>
            
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Font-Size="X-Large" ForeColor="#3333CC" Text="ACCOUNT VALIDATION" style="z-index: 1; position: absolute; top: 189px; left: 522px"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="TO:" style="z-index: 1; position: absolute; top: 274px; left: 632px; width: 35px"></asp:Label>
        </div>
 <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 830px; left: 170px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -21px; left: 475px; width: 38px; height: 41px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Admin.aspx">Home</a></li>
                <li class="auto-style4"><a href="admin_verify.aspx" >Verify</a></li>
                <li class="auto-style3"><a href="admin_status.aspx" >Status</a></li>
                <li class="auto-style1"><a href="admin_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 912px; left: 447px">E-Wallet Co. © 2023</p>
        </footer>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="FROM:"></asp:Label>
    </div>
    
   
    </form>
    
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
