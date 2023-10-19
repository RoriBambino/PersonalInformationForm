<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_transaction.aspx.cs" Inherits="PersonalInformationForm.WebForm16" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Transaction</title>
   <link rel="icon" type="image/png" href="Image/wallet.png" />
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 189px;
            height: 28px;
            position: absolute;
            top: 1911px;
            left: 856px;
            z-index: 1;
        }
        .auto-style2 {
            width: 114px;
            height: 24px;
            position: absolute;
            top: 1914px;
            left: 420px;
        }
        .auto-style5 {
            width: 123px;
            height: 28px;
            position: absolute;
            top: 1911px;
            left: 757px;
            z-index: 1;
        }
        .auto-style6 {
            width: 120px;
            height: 25px;
            position: absolute;
            top: 1914px;
            left: 530px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style7 {
            width: 102px;
            height: 25px;
            position: absolute;
            top: 1914px;
            left: 658px;
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
            top: 289px;
            left: 996px;
            z-index: 1;
              text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 94px;
            height: 33px;
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
            top: 293px;
            left: 259px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 846px;
            left: 541px;
            z-index: 1;
            width: 27px;
            height: 26px;
        }
        .gridlines{
             overflow-y: auto;
             border: solid 5px black; 
             height:300px;
             background-color:white
        }
        .auto-style18 {
            position: absolute;
            top: 848px;
            left: 267px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 294px;
            left: 549px;
            z-index: 1;
            width: 23px;
        }
        .auto-style20 {
            position: absolute;
            top: 1475px;
            left: 992px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            }
        .auto-style22 {
            position: absolute;
            top: 1086px;
            left: 348px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 1476px;
            left: 560px;
            z-index: 1;
            width: 32px;
        }
        .auto-style24 {
            position: absolute;
            top: 1477px;
            left: 256px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 285px;
            left: 598px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 149px;
            height: 36px;
        }
        .auto-style26 {
            position: absolute;
            top: 838px;
            left: 990px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 93px;
            height: 28px;
        }
        .auto-style27 {
            position: absolute;
            top: 1469px;
            left: 600px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 168px;
            height: 33px;
        }
        .auto-style28 {
            position: absolute;
            top: 1466px;
            left: 321px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 142px;
            height: 34px;
        }
        .auto-style29 {
            position: absolute;
            top: 284px;
            left: 328px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 166px;
            height: 33px;
        }
        .auto-style30 {
            position: absolute;
            top: 839px;
            left: 594px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 153px;
            height: 35px;
        }
        .auto-style31 {
            position: absolute;
            top: 839px;
            left: 330px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 141px;
            height: 38px;
        }
        .auto-style32 {
            position: absolute;
            top: 291px;
            left: 843px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 293px;
            left: 792px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 845px;
            left: 800px;
            z-index: 1;
            height: 24px;
        }
        .auto-style35 {
            position: absolute;
            top: 842px;
            left: 849px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 1476px;
            left: 856px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 1478px;
            left: 801px;
            z-index: 1;
            height: 23px;
            margin-bottom: 3px;
        }
         .gridViewContainer {
         
         height: 300px; /* Set the desired height for the scrollable area */
         width: 700px;
         overflow-y: auto;
         background-color:white;
         text-align:center;
         display: flex;
         justify-content: center;
         margin-top: 260px;
         margin-left: 300px;
         }
          .gridViewContainer1 {
          height: 300px; /* Set the desired height for the scrollable area */
         width: 700px;
         overflow-y: auto;
         background-color:white;
         text-align:center;
         display: flex;
         justify-content: center;
         margin-top: 230px;
         margin-left: 300px;
         }
        
        .auto-style38 {
            position: absolute;
            top: 1356px;
            left: 624px;
            z-index: 1;
            width: 162px;
        }
        .auto-style39 {
            position: absolute;
            top: 726px;
            left: 625px;
            z-index: 1;
            width: 184px;
        }
         .gridViewContainer2 {
          height: 300px; /* Set the desired height for the scrollable area */
         width: 700px;
         overflow-y: auto;
         background-color:white;
         text-align:center;
         display: flex;
         justify-content: center;
         margin-top: 340px;
         margin-left: 300px;
         padding-bottom: 100px;
         }
        .auto-style40 {
            position: absolute;
            top: 250px;
            left: 260px;
            z-index: 1;
            height: 24px;
            width: 234px;
        }
        .auto-style41 {
            position: absolute;
            top: 242px;
            left: 390px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 212px;
            height: 33px;
        }
        .auto-style42 {
            position: absolute;
            top: 781px;
            left: 394px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 212px;
            height: 33px;
        }
        .auto-style43 {
            position: absolute;
            top: 791px;
            left: 267px;
            z-index: 1;
            height: 24px;
            width: 234px;
        }
        .auto-style44 {
            position: absolute;
            top: 1433px;
            left: 254px;
            z-index: 1;
            height: 24px;
            width: 234px;
        }
        .auto-style45 {
            position: absolute;
            top: 603px;
            left: 380px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 212px;
            height: 33px;
        }
        .auto-style46 {
            position: absolute;
            top: 947px;
            left: 381px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 212px;
            height: 33px;
        }
        .auto-style47 {
            position: absolute;
            top: 1257px;
            left: 368px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 212px;
            height: 33px;
        }
        .auto-style48 {
            position: absolute;
            top: 1425px;
            left: 385px;
            z-index: 1;
            text-decoration: none;
            border-radius: 10px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 212px;
            height: 33px;
        }
    </style>
</head>
<body>
     <!--Menu Bar-->
     <div class="menu">
            <!--Header-->
           <div class="logo">
               <a  ref="pageLogo" href="Admin.aspx"><img class="icon" src="Image/wallet.png" alt="logo" /></a>
               <nav>
                <input type="checkbox" id="check" />
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
                       <li><a href="admin_verify">Verify</a></li>
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
                           <a href="admin_settings.aspx">
                             Settings
                           </a>
                       </li>
                       
                       
                   </ul>
               </nav>
           </div>   
    </div>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Sent, Cash Out, Recieved" CssClass="auto-style9"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="FROM:"></asp:Label>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style19" Text="TO:"></asp:Label>
            <asp:Button ID="btn_vwall" runat="server" CssClass="auto-style10" Text="View" OnClick="btn_vwall_Click" />
            <asp:TextBox ID="txt_dfrom" placeholder="Last Name" runat="server" style="text-indent: 10px; " TextMode="Date" CssClass="auto-style29"></asp:TextBox>
            <asp:TextBox ID="txt_dto" placeholder="Last Name" runat="server" style="text-indent: 10px; " TextMode="Date" CssClass="auto-style25"></asp:TextBox>
           
            <asp:Label ID="Label15" runat="server" CssClass="auto-style43" Text="Account Number:"></asp:Label>
            <asp:TextBox ID="txt_id" runat="server" CssClass="auto-style41" TextMode="Number" BorderStyle="Solid"></asp:TextBox>

            <div class="gridViewContainer">
                <asp:Label ID="Label14" runat="server" CssClass="auto-style39" Font-Size="Large" Text="CASH IN &amp; CASH OUT"></asp:Label>
                <asp:GridView ID="vw_all" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="True" BorderColor="#999999">
                     <Columns>
                        <asp:BoundField DataField="TRA_ID" HeaderText="Transaction ID"></asp:BoundField>
                        <asp:BoundField DataField="TRA_TYPE" HeaderText="Transaction Type"></asp:BoundField>
                        <asp:BoundField DataField="TRA_AMOUNT" HeaderText="Amount"></asp:BoundField>
                        <asp:BoundField DataField="TRA_NUMBER" HeaderText="Transaction Number"></asp:BoundField>
                        <asp:BoundField DataField="CLI_ID" HeaderText="Client's ID"></asp:BoundField>
                        <asp:BoundField DataField="TRA_DATE" HeaderText="Transaction Date" DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
             
            <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Font-Size="X-Large" ForeColor="#3333CC" Text="Statement of Account"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="TO:"></asp:Label>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style18" Text="FROM:"></asp:Label>
             
              <asp:Button ID="btn_vwdeposit" runat="server" CssClass="auto-style26" Text="View" OnClick="btn_vwdeposit_Click1"  />
            <asp:TextBox ID="txt_dfrom2" placeholder="Last Name" runat="server" style="text-indent: 10px; " TextMode="Date" CssClass="auto-style31"></asp:TextBox>
            <asp:TextBox ID="txt_dto2" placeholder="Last Name" runat="server" style="text-indent: 10px; " TextMode="Date" CssClass="auto-style30"></asp:TextBox>
                 <asp:Label ID="Label12" runat="server" CssClass="auto-style37" Text="TYPE:"></asp:Label>
            
            <asp:Label ID="Label16" runat="server" CssClass="auto-style40" Text="Account Number:"></asp:Label>
            <asp:TextBox ID="txt_id2" runat="server" CssClass="auto-style42" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
            
            <div class="gridViewContainer1" >
                 <asp:Label ID="Label13" runat="server" CssClass="auto-style38" Font-Size="Large" Text="SENT &amp; RECIEVED"></asp:Label>
                 <asp:GridView ID="vw_deposit" runat="server" AutoGenerateColumns="false" > 
                      <Columns>
                        <asp:BoundField DataField="TRA_ID" HeaderText="Transaction ID"></asp:BoundField>
                        <asp:BoundField DataField="TRA_TYPE" HeaderText="Transaction Type"></asp:BoundField>
                        <asp:BoundField DataField="TRA_AMOUNT" HeaderText="Amount"></asp:BoundField>
                        <asp:BoundField DataField="TRA_NUMBER" HeaderText="Transaction Number"></asp:BoundField>
                        <asp:BoundField DataField="CLI_ID" HeaderText="Client's ID"></asp:BoundField>
                        <asp:BoundField DataField="TRA_DATE" HeaderText="Transaction Date" DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                    </Columns>
                 </asp:GridView>
            </div>

             <asp:Label ID="Label8" runat="server" CssClass="auto-style23" Text="TO:"></asp:Label>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style24" Text="FROM:"></asp:Label>
             
              <asp:Button ID="btn_vwsent" runat="server" CssClass="auto-style20" Text="View" OnClick="btn_vwsent_Click" />
            <asp:TextBox ID="txt_dfrom3" placeholder="Last Name" runat="server" style="text-indent: 10px; " TextMode="Date" CssClass="auto-style28"></asp:TextBox>
            <asp:TextBox ID="txt_dto3" placeholder="Last Name" runat="server" style="text-indent: 10px; " TextMode="Date" CssClass="auto-style27"></asp:TextBox>
            
              <asp:Label ID="Label17" runat="server" CssClass="auto-style44" Text="Account Number:"></asp:Label>
            <asp:TextBox ID="txt_id3" runat="server" CssClass="auto-style48" TextMode="Number" BorderStyle="Solid"></asp:TextBox>
            <div class="gridViewContainer2">
                <asp:GridView ID="vw_sent" runat="server" AutoGenerateColumns="false">
                     <Columns>
                        <asp:BoundField DataField="TRA_ID" HeaderText="Transaction ID"></asp:BoundField>
                        <asp:BoundField DataField="TRA_TYPE" HeaderText="Transaction Type"></asp:BoundField>
                        <asp:BoundField DataField="TRA_AMOUNT" HeaderText="Amount"></asp:BoundField>
                        <asp:BoundField DataField="TRA_NUMBER" HeaderText="Transaction Number"></asp:BoundField>
                        <asp:BoundField DataField="CLI_ID" HeaderText="Client's ID"></asp:BoundField>
                        <asp:BoundField DataField="TRA_DATE" HeaderText="Transaction Date" DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                    </Columns>
            </asp:GridView>
            </div>

              <asp:Label ID="Label11" runat="server" CssClass="auto-style34" Text="TYPE:"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style35">
            <asp:ListItem>ALL</asp:ListItem>
            <asp:ListItem>CASH IN</asp:ListItem>
            <asp:ListItem>CASH OUT</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style36">
            <asp:ListItem>ALL</asp:ListItem>
            <asp:ListItem>SENDER</asp:ListItem>
            <asp:ListItem>RECIEVER</asp:ListItem>
        </asp:DropDownList>
         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style32">
             <asp:ListItem>ALL</asp:ListItem>
             <asp:ListItem>CASH IN</asp:ListItem>
             <asp:ListItem>CASH OUT</asp:ListItem>
             <asp:ListItem>SENDER</asp:ListItem>
             <asp:ListItem>RECIEVER</asp:ListItem>
         </asp:DropDownList>
         <asp:Label ID="Label10" runat="server" CssClass="auto-style33" Text="TYPE:"></asp:Label>
        </div>
  </form>
     <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1104px; z-index: 1; height: 65px; position: absolute; top: 1852px; left: 137px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -22px; left: 472px; width: 43px; height: 44px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -19px; left: 533px; width: 39px"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: -19px; left: 588px; width: 42px; height: 40px"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Client.aspx">Home</a></li>
                <li class="auto-style6"><a href="Cashin.aspx" >Cash In</a></li>
                <li class="auto-style7"><a href="Cashout.aspx" >Cash out</a></li>
                <li class="auto-style5"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style1"><a href="view_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 544px; height: 0px; position: absolute; top: 1933px; left: 413px">E-Wallet Co. © 2023</p>
        </footer>  
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
     
    </body>
