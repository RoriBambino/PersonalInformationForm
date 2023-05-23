<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_verify.aspx.cs" Inherits="PersonalInformationForm.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Verify User</title>
     <link rel="icon" type="image/png" href="Image/wallet.png"/>
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
    .auto-style1 {
        width: 208px;
        height: 28px;
        position: absolute;
        top: 979px;
        left: 910px;
        z-index: 1;
    }
    .auto-style2 {
        width: 100px;
        height: 28px;
        position: absolute;
        top: 980px;
        left: 496px;
        z-index: 1;
    }
    .auto-style5 {
        width: 292px;
        height: 28px;
        position: absolute;
        top: 169px;
        left: 597px;
        z-index: 1;
    }
    .auto-style6 {
        width: 78px;
        height: 28px;
        position: absolute;
        left: 553px;
        z-index: 1;
        top: 347px;
    }
    .auto-style7 {
        width: 150px;
        height: 28px;
        position: absolute;
        top: 981px;
        left: 661px;
        z-index: 1;
    }
    .auto-style8 {
        width: 223px;
        height: 28px;
        position: absolute;
        top: 343px;
        left: 657px;
        z-index: 1;
    }
    .auto-style9 {
        width: 93px;
        height: 28px;
        position: absolute;
        top: 265px;
        left: 553px;
        z-index: 1;
    }
    .auto-style10 {
        width: 218px;
        height: 28px;
        position: absolute;
        top: 260px;
        left: 658px;
        z-index: 1;
    }
    .auto-style11 {
        width: 128px;
        height: 28px;
        position: absolute;
        top: 285px;
        left: 707px;
        z-index: 1;
    }
    .auto-style12 {
        width: 150px;
        height: 28px;
        position: absolute;
        top: 980px;
        left: 558px;
        z-index: 1;
    }
    .auto-style13 {
        width: 222px;
        height: 28px;
        position: absolute;
        top: 302px;
        left: 659px;
        z-index: 1;
    }
    .auto-style14 {
        width: 99px;
        height: 28px;
        position: absolute;
        top: 392px;
        left: 553px;
        z-index: 1;
    }
    .auto-style15 {
        width: 150px;
        height: 28px;
        position: absolute;
        top: 981px;
        left: 778px;
        z-index: 1;
        margin-top: 0px;
    }
    .auto-style16 {
        width: 121px;
        height: 28px;
        position: absolute;
        top: 371px;
        left: 703px;
        z-index: 1;
    }
    .auto-style17 {
        position: absolute;
        top: 550px;
        left: 544px;
    }
    .auto-style18 {
        position: absolute;
        top: 229px;
        left: 554px;
        z-index: 1;
    }
    .auto-style19 {
        position: absolute;
        top: 571px;
        left: 700px;
        z-index: 1;
    }
    .auto-style20 {
        position: absolute;
        top: 509px;
        left: 512px;
        z-index: 1;
    }
    .auto-style21 {
        position: absolute;
        top: 227px;
        left: 658px;
        z-index: 1;
        width: 220px;
    }
    .auto-style22 {
        position: absolute;
        top: 244px;
        left: 275px;
        z-index: 1;
    }
    .auto-style23 {
        width: 120px;
        height: 28px;
        position: absolute;
        top: 414px;
        left: 702px;
        z-index: 1;
    }
    .auto-style24 {
        position: absolute;
        top: 594px;
        left: 614px;
        z-index: 1;
        width: 34px;
        height: 23px;
    }
    .auto-style25 {
        position: absolute;
        top: 388px;
        left: 656px;
        z-index: 1;
        width: 223px;
    }
    .auto-style26 {
        position: absolute;
        top: 616px;
        left: 735px;
        z-index: 1;
    }
    .auto-style27 {
        position: absolute;
        top: 592px;
        left: 658px;
        z-index: 1;
        width: 218px;
    }
    .auto-style28 {
        position: absolute;
        top: 528px;
        left: 684px;
        z-index: 1;
    }
    .auto-style29 {
        width: 100px;
        height: 28px;
        position: absolute;
        top: 306px;
        left: 553px;
        z-index: 1;
    }
    .auto-style30 {
        position: absolute;
        top: 546px;
        left: 657px;
        z-index: 1;
        height: 25px;
        width: 218px;
    }
    .auto-style31 {
        position: absolute;
        top: 507px;
        left: 657px;
        z-index: 1;
        width: 219px;
    }
    .auto-style32 {
        position: absolute;
        top: 801px;
        left: 710px;
        z-index: 1;
          text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 120px;
            height: 37px;
    }
        .auto-style33 {
            width: 118px;
            z-index: 1;
            position: absolute;
            top: 473px;
            left: 552px;
        }
        .auto-style34 {
            width: 127px;
            margin-right: 3px;
            z-index: 1;
            position: absolute;
            top: 471px;
            left: 663px;
            height: 21px;
        }
        .auto-style35 {
            width: 29px;
            margin-right: 2px;
            z-index: 1;
            position: absolute;
            top: 436px;
            left: 554px;
        }
        .auto-style36 {
            width: 1074px;
            margin-right: 2px;
        }
        .auto-style37 {
            width: 100%;
            min-height: 10vh;
            padding-left: 7%;
            padding-right: 5%;
            box-sizing: border-box;
            overflow: hidden;
            background-color: #0082C8;
        }
        .auto-style38 {
            position: absolute;
            top: 286px;
            left: 201px;
            z-index: 1;
        }
    </style>
</head>
<body>
<!--Menu Bar-->
     <div class="auto-style37">
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
     <form id="form1" runat="server" class="auto-style36">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Size="X-Large" Text="Account Verification" Font-Names="Calisto MT" ForeColor="#CC66FF"></asp:Label>
        <p>
            
            <asp:TextBox ID="txtDOB" Height="25px" placeholder="Last Name" runat="server" style="text-indent: 10px" TextMode="Date" CssClass="auto-style25"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Street Address:"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="Date of Birth:"></asp:Label>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style29" Text="Middle Name:"></asp:Label>
            <asp:Label ID="Label25" runat="server" Text="Username:" CssClass="auto-style18"></asp:Label>
            <asp:Label ID="txt_username" runat="server" CssClass="auto-style21"></asp:Label>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" CssClass="auto-style23" ErrorMessage="*Input date of birth" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="middle_name" runat="server" CssClass="auto-style13"></asp:TextBox>
            <asp:FileUpload ID="picUpload" runat="server" CssClass="auto-style162" style="z-index: 1; position: absolute; top: 323px; left: 173px; width: 186px;" />
        </p>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="First Name:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style34">
            <asp:ListItem>Marital Status</asp:ListItem>
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem>Divorce</asp:ListItem>
            <asp:ListItem>Widow/er</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="lname" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lname" CssClass="auto-style16" ErrorMessage="*Input Last Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="fname" runat="server" CssClass="auto-style10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" CssClass="auto-style11" ErrorMessage="*Input First Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style19" ErrorMessage="*Input Street Address" Font-Size="Small" ForeColor="Red" ControlToValidate="street_add"></asp:RequiredFieldValidator>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style20" Text="Appartment/ Unit #:"></asp:Label>
        <asp:TextBox ID="appartment" runat="server" CssClass="auto-style31"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="appartment" CssClass="auto-style28" ErrorMessage="*Input Appartment/Unit no." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style24" Text="City:"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="city" CssClass="auto-style26" ErrorMessage="*Input City" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:Label ID="Label26" runat="server" CssClass="auto-style38" Text="Upload ID Picture"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style134" style="z-index: 1; position: absolute; top: 434px; left: 657px">
            <asp:ListItem>Sex</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label15" runat="server" CssClass="auto-style35" Text="Sex:"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="city" runat="server" CssClass="auto-style27"></asp:TextBox>
        <br />
        <br />
        <br />
            <asp:TextBox ID="street_add" runat="server" CssClass="auto-style30"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" CssClass="auto-style33" Text="Marital Status:"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="m_number" CssClass="auto-style142" ErrorMessage="*Input Mobile Number" Font-Size="Small" ForeColor="Red" style="z-index: 1; position: absolute; top: 718px; left: 698px"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" CssClass="auto-style54" Font-Size="X-Large" Text="Contact Information" style="z-index: 1; position: absolute; top: 618px; left: 311px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label22" runat="server" CssClass="auto-style55" Text="Mobile Phone Number" style="z-index: 1; position: absolute; top: 656px; left: 682px"></asp:Label>
        <asp:TextBox ID="m_number" runat="server" CssClass="auto-style56" style="z-index: 1; position: absolute; top: 684px; left: 651px; width: 218px"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="m_number" CssClass="auto-style57" ErrorMessage="*Must be 11 Digits" Font-Size="Small" ForeColor="Red" MaximumValue="99999999999" MinimumValue="00000000000" style="z-index: 1; position: absolute; top: 717px; left: 706px"></asp:RangeValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
         <asp:Button ID="submit" runat="server" Text="Submit" Font-Bold="True" Font-Size="X-Large" Font-Names="Britannic Bold" ForeColor="#CC99FF" CssClass="auto-style32" OnClick="submit_Click" />
       
        <br />
        <br />
       
    </form>
     <br />
   <div class="footer-basic">
        <footer>
        
            <div class="social" style="width: 1039px; z-index: 1; height: 65px; position: absolute; top: 921px; left: 274px;"><a href="#" class="auto-style45" ><i class="icon ion-social-twitter" style="z-index: 1; position: absolute; top: -13px; left: 439px; width: 43px; height: 40px;"></i></a><a href="#" class="auto-style46" ><i class="icon ion-social-facebook" style="z-index: 1; position: absolute; top: -14px; left: 497px; width: 43px; height: 44px;"></i></a>
                <a href="#" class="auto-style47" ><i class="icon ion-social-instagram" style="z-index: 1; position: absolute; top: 6px; left: 556px; width: 42px; height: 40px; margin-top: 1px; margin-bottom: 2px;"></i></a>
            </div>
            <ul class="list-inline">
                <li class="auto-style2"><a href="Client.aspx">Home      <li class="auto-style12"><a href="Cashin.aspx" >Cash In</a></li>
                <li class="auto-style7"><a href="Cashout.aspx" >Cash out</a></li>
                <li class="auto-style15"><a href="SendMoney.aspx">Send Money</a></li>
                <li class="auto-style1"><a href="view_transaction.aspx">View Transactions</a></li>
            </ul>
            <p class="copyright" style="z-index: 1; width: 556px; height: 19px; position: absolute; top: 997px; left: 498px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
    </body>
</html>
