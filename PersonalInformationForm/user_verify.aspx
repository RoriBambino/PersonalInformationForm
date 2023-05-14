<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_verify.aspx.cs" Inherits="PersonalInformationForm.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Verify User</title>
     <link href="Style.css" rel="stylesheet"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
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
                           <a href="SendMoney.aspx">
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
     <form id="form1" runat="server" class="auto-style138">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Size="X-Large" Text="Sign up" Font-Names="Calisto MT" ForeColor="#CC66FF"></asp:Label>
        <p>
            
            <asp:TextBox ID="txtDOB" Height="25px" placeholder="Last Name" runat="server" style="text-indent: 10px" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Street Address"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="Date of Birth"></asp:Label>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style23" Text="Middle Name"></asp:Label>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="date_birth" CssClass="auto-style16" ErrorMessage="*Input date of birth" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="middle_name" runat="server" CssClass="auto-style13"></asp:TextBox>
            <asp:FileUpload ID="picUpload" runat="server" CssClass="auto-style162" />
        </p>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style9" Text="First Name"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Last Name"></asp:Label>
        <asp:TextBox ID="lname" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lname" CssClass="auto-style8" ErrorMessage="*Input Last Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="fname" runat="server" CssClass="auto-style10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" CssClass="auto-style11" ErrorMessage="*Input First Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style19" ErrorMessage="*Input Street Address" Font-Size="Small" ForeColor="Red" ControlToValidate="street_add"></asp:RequiredFieldValidator>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style20" Text="Appartment/ Unit #"></asp:Label>
        <asp:TextBox ID="appartment" runat="server" CssClass="auto-style21"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="appartment" CssClass="auto-style22" ErrorMessage="*Input Appartment/Unit no." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style24" Text="City"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style34">
            <asp:ListItem>Marital Status</asp:ListItem>
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Married</asp:ListItem>
            <asp:ListItem>Divorce</asp:ListItem>
            <asp:ListItem>Widow/er</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="city" CssClass="auto-style26" ErrorMessage="*Input City" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label27" runat="server" CssClass="auto-style161" Font-Names="Bookman Old Style" Font-Size="X-Large" Text="E-Save"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style134">
            <asp:ListItem>Sex</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label15" runat="server" CssClass="auto-style35" Text="Sex"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="city" runat="server" CssClass="auto-style25"></asp:TextBox>
        <br />
        <br />
        <br />
            <asp:TextBox ID="street_add" runat="server" CssClass="auto-style18"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" CssClass="auto-style33" Text="Marital Status"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="m_number" CssClass="auto-style142" ErrorMessage="*Input Mobile Number" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="work_num" runat="server" CssClass="auto-style63"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" CssClass="auto-style54" Font-Size="X-Large" Text="Contact Information"></asp:Label>
        <asp:TextBox ID="home_number" runat="server" CssClass="auto-style59"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label22" runat="server" CssClass="auto-style55" Text="Mobile Phone Number"></asp:Label>
        <asp:TextBox ID="m_number" runat="server" CssClass="auto-style56"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="m_number" CssClass="auto-style57" ErrorMessage="*Must be 11 Digits" Font-Size="Small" ForeColor="Red" MaximumValue="99999999999" MinimumValue="00000000000"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="home_number" CssClass="auto-style61" ErrorMessage="*Input Home Number" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label23" runat="server" CssClass="auto-style58" Text="Home Number"></asp:Label>
        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="home_number" CssClass="auto-style141" ErrorMessage="*Must be 8 Digit Number" Font-Size="Small" ForeColor="Red" MaximumValue="99999999" MinimumValue="00000000"></asp:RangeValidator>
        <br />
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" CssClass="auto-style62" Text="Work Number"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="work_num" CssClass="auto-style151" ErrorMessage="*Input Work Number" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="work_num" CssClass="auto-style65" ErrorMessage="*Must be 11 digits or 8" Font-Size="Small" ForeColor="Red" MaximumValue="99999999999" MinimumValue="00000000000"></asp:RangeValidator>
        <br />
        <br />
         <asp:Button ID="submit" runat="server" Text="Submit" Font-Bold="True" Font-Size="X-Large" Font-Names="Britannic Bold" ForeColor="#CC99FF" OnClick="submit_Click" />
       
        <br />
        <br />
       
        <asp:TextBox ID="user_name" runat="server" CssClass="auto-style140"></asp:TextBox>
       
    </form>
     <br />
    <div class="footer-basic">
        <footer>
            <div class="social" style="width: 1064px"><a href="#" class="auto-style153"><i class="icon ion-social-instagram"></i></a><a href="#" class="auto-style154"><i class="icon ion-social-twitter"></i></a><a href="#" class="auto-style152"><i class="icon ion-social-facebook"></i></a></div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="PersonalInfoEntry.aspx" class="auto-style155">Home</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style156">Services</a></li>
                <li class="list-inline-item"><a href="#" class="auto-style157">About</a></li>
                <li class="list-inline-item"><a href="Signin.aspx" class="auto-style158">Sign In</a></li>
                <li class="list-inline-item"><a href="PersonalInfoentry2.aspx" class="auto-style159">Register</a></li>
            </ul>
            <p class="copyright" style="width: 835px; height: 19px; z-index: 1; position: absolute; top: 1343px; left: 257px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
