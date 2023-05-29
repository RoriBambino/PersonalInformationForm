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
            top: 1013px;
            left: 766px;
            z-index: 1;
        }
        .auto-style2 {
            width: 97px;
            height: 28px;
            position: absolute;
            top: 1012px;
            left: 495px;
        }
        .auto-style3 {
            width: 94px;
            height: 28px;
            position: absolute;
            top: 1013px;
            left: 679px;
            z-index: 1;
        }
        .auto-style4 {
            width: 94px;
            height: 28px;
            position: absolute;
            top: 1013px;
            left: 588px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 591px;
            left: 565px;
            z-index: 1;
            margin-bottom: 1px;
            width: 254px;
        }
          .gridViewContainer1 {
         height: 300px; /* Set the desired height for the scrollable area */
         width: 700px;
         overflow-y: auto;
         overflow-x:auto;
         background-color:white;
         text-align:center;
         display: flex;
         justify-content: center;
         margin: 150px;
         margin-bottom: 100px;
         }
        
        .auto-style7 {
            position: absolute;
            top: 653px;
            left: 254px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 652px;
            left: 308px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 633px;
            left: 256px;
            z-index: 1;
            width: 28px;
        }
        .auto-style10 {
            position: absolute;
            top: 633px;
            left: 281px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 673px;
            left: 254px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 205px;
            left: 577px;
            z-index: 1;
            width: 275px;
        }
        .auto-style13 {
            position: absolute;
            top: 673px;
            left: 371px;
            z-index: 1;
            height: 23px;
        }
        .auto-style15 {
            position: absolute;
            top: 691px;
            left: 336px;
            z-index: 1;
        }
        
        .auto-style17 {
            position: absolute;
            top: 711px;
            left: 253px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 692px;
            left: 255px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 712px;
            left: 386px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 729px;
            left: 255px;
            z-index: 1;
            width: 32px;
        }
        .auto-style21 {
            position: absolute;
            top: 729px;
            left: 291px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 792px;
            left: 0px;
        }
        .auto-style23 {
            position: absolute;
            top: 749px;
            left: 253px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 748px;
            left: 385px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 636px;
            left: 594px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 636px;
            left: 688px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 636px;
            left: 919px;
            z-index: 1;
            width: 105px;
        }
        .auto-style29 {
            position: absolute;
            top: 767px;
            left: 252px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 767px;
            left: 370px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 786px;
            left: 252px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 784px;
            left: 372px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 805px;
            left: 252px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 804px;
            left: 316px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 824px;
            left: 252px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 823px;
            left: 363px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 842px;
            left: 252px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 842px;
            left: 328px;
            z-index: 1;
            height: 24px;
        }
        
        .auto-style40 {
            height: 300px; /* Set the desired height for the scrollable area */;
            width: 1000px;
            overflow-y: auto;
            overflow-x: auto;
            background-color: white;
            text-align: center;
            display: flex;
            justify-content: center;
            margin-bottom: 200px;
            margin-left: 100px;
            margin-right: -30px;
            margin-top: 150px;
            padding-left: 800px;
        }
        
        .auto-style42 {
            position: absolute;
            top: 672px;
            left: 859px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 919px;
            left: 697px;
            z-index: 1;
            border-radius: 5px;

        }
        .auto-style44 {
            position: absolute;
            top: 919px;
            left: 597px;
            z-index: 1;
            border-radius: 5px;
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
                            <a href="#">Settings </a>
                       </li>
                       
                   </ul>
               </nav>
           </div>   
    </div>

    <form id="form1" runat="server">
         <div>
             
            <div class="auto-style40">
                <asp:GridView ID="vw_all" runat="server" ShowHeaderWhenEmpty="True" 
                    AutoGenerateColumns="false"
                    CssClass="table table-bordered table-condensed table-responsive table-hover">
                       <columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Select</asp:LinkButton>                     
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CLI_ID" HeaderText="CLIENT ID"></asp:BoundField>
                        <asp:BoundField DataField="CLI_LNAME" HeaderText="LAST NAME"></asp:BoundField>
                        <asp:BoundField DataField="CLI_FNAME" HeaderText="FIRST NAME"></asp:BoundField>
                        <asp:BoundField DataField="CLI_MNAME" HeaderText="MIDDLE NAME"></asp:BoundField>
                        <asp:BoundField DataField="CLI_DOB" HeaderText="DATE OF BIRTH"  DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                        <asp:BoundField DataField="CLI_STREET_ADD" HeaderText="ADDRESS"></asp:BoundField>
                        <asp:BoundField DataField="CLI_APP_UNIT" HeaderText="APPARTMENT UNIT"></asp:BoundField>
                        <asp:BoundField DataField="CLI_CITY" HeaderText="CITY"></asp:BoundField>
                        <asp:BoundField DataField="CLI_MARITAL_STATUS" HeaderText="MARITAL STATUS"></asp:BoundField>
                        <asp:BoundField DataField="CLI_SEX" HeaderText="SEX"></asp:BoundField>
                        <asp:BoundField DataField="CLI_MOBILE_NUM" HeaderText="MOBILE NUMBER"></asp:BoundField>
                        <asp:BoundField DataField="CLI_USERNAME" HeaderText="USERNAME"></asp:BoundField>
                        <asp:BoundField DataField="CLI_DATE_CREATED" HeaderText="DATE CREATED"  DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                        <asp:BoundField DataField="CLI_DATE_UPDATED" HeaderText="DATE UPDATED"  DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                        <asp:BoundField DataField="CLI_STATUS" HeaderText="STATUS"></asp:BoundField>
                        <asp:BoundField DataField="CLI_VERIFY" HeaderText="VERIFY"></asp:BoundField>
                        <asp:BoundField DataField="CLI_BALANCE" HeaderText="BALANCE"></asp:BoundField>
                       </columns>
            </asp:GridView>
                 <br /> <br />
            </div>
              <br />
              <asp:Image ID="vw_image" runat="server" Height="25%" Width="20%" CssClass="auto-style42" />
              <br />
              <br />
             <div class="info">
                  <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="CLIENT INFORMATION" Font-Size="X-Large" ForeColor="#CC3399"></asp:Label>
              <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text="NAME:"></asp:Label>
                <asp:Label ID="txt_name" runat="server" CssClass="auto-style8"></asp:Label>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style9" Text="ID:"></asp:Label>
                <asp:Label ID="txt_id" runat="server" CssClass="auto-style10"></asp:Label>
                <asp:Label ID="txt_dob" runat="server" CssClass="auto-style13"></asp:Label>
                <asp:Label ID="txt_address" runat="server" CssClass="auto-style15"></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Font-Size="X-Large" ForeColor="#3333CC" Text="ACCOUNT VERIFICATION"></asp:Label>
             <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text="DATE OF BIRTH:"></asp:Label>
             <asp:Label ID="Label1" runat="server" CssClass="auto-style17" Text="MARITAL STATUS:"></asp:Label>

             <asp:Label ID="Label10" runat="server" CssClass="auto-style18" Text="ADDRESS:"></asp:Label>

             <br />
             <asp:Label ID="Label18" runat="server" CssClass="auto-style35" Text="VERIFICATION:"></asp:Label>
                  <asp:Button ID="btn_approve" runat="server" CssClass="auto-style43" OnClick="btn_approve_Click" Text="Approve" BackColor="#339933" BorderStyle="Dotted" Font-Bold="True" Font-Size="Large" />
                  <asp:Button ID="btn_decline" runat="server" CssClass="auto-style44" OnClick="btn_decline_Click" Text="Decline" BackColor="Red" BorderStyle="Dotted" Font-Bold="True" Font-Size="Large" />
             <br />
             <asp:Label ID="txt_mnum" runat="server" CssClass="auto-style24"></asp:Label>
             <asp:Label ID="txt_status" runat="server" CssClass="auto-style34"></asp:Label>
             <br />
             <asp:Label ID="txt_marital" runat="server" CssClass="auto-style19"></asp:Label>
             <asp:Label ID="txt_sex" runat="server" CssClass="auto-style21"></asp:Label>
             <asp:Label ID="Label13" runat="server" CssClass="auto-style25" Text="USERNAME:"></asp:Label>
             <asp:Label ID="txt_username" runat="server" CssClass="auto-style26"></asp:Label>
             <asp:Label ID="Label14" runat="server" CssClass="auto-style27" Text="ID PICTURE:"></asp:Label>
             <asp:Label ID="txt_dcreated" runat="server" CssClass="auto-style30"></asp:Label>
             <asp:Label ID="Label16" runat="server" CssClass="auto-style31" Text="DATE UPDATED:"></asp:Label>
             <asp:Label ID="txt_verification" runat="server" CssClass="auto-style36"></asp:Label>
             <asp:Label ID="Label19" runat="server" CssClass="auto-style37" Text="BALANCE:"></asp:Label>
             <br />
             <asp:Label ID="Label11" runat="server" CssClass="auto-style20" Text="SEX:"></asp:Label>
             <asp:Label ID="Label15" runat="server" CssClass="auto-style29" Text="DATE CREATED:"></asp:Label>
             <asp:Label ID="Label17" runat="server" CssClass="auto-style33" Text="STATUS:"></asp:Label>
                 <asp:Label ID="Label12" runat="server" CssClass="auto-style23" Text="MOBILE NUMBER:"></asp:Label>
        <asp:Label ID="txt_dupdated" runat="server" CssClass="auto-style32"></asp:Label>
        <asp:Label ID="txt_balance" runat="server" CssClass="auto-style38"></asp:Label>
             <br />
             </div>
             
        </div>
 <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 973px; left: 141px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -11px; left: 475px; width: 38px; height: 41px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -10px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -10px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Admin.aspx">Home</a></li>
                <li class="auto-style4"><a href="admin_verify.aspx" >Verify</a></li>
                <li class="auto-style3"><a href="admin_status.aspx" >Status</a></li>
                <li class="auto-style1"><a href="admin_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 1031px; left: 415px">E-Wallet Co. © 2023</p>
        </footer>
        
    </div>
    
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    
   
    </form>
    
   
    </body>
</html>
