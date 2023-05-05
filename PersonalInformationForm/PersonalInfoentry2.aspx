<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalInfoentry2.aspx.cs" Inherits="PersonalInformationForm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Register</title>
    <link href="Style.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style type="text/css">
        body{
            width: 100%;
        }
        .auto-style5 {
            position: absolute;
            top: 153px;
            left: 643px;
            z-index: 1;
            width: 89px;
            height: 33px;
            right: 112px;
        }
        .auto-style6 {
            position: absolute;
            top: 345px;
            left: 496px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 346px;
            left: 586px;
            z-index: 1;
            width: 238px;
        }
        .auto-style8 {
            position: absolute;
            top: 371px;
            left: 668px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 397px;
            left: 493px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 396px;
            left: 585px;
            z-index: 1;
            width: 240px;
        }
        .auto-style11 {
            position: absolute;
            top: 423px;
            left: 667px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 443px;
            left: 584px;
            z-index: 1;
            width: 238px;
        }
        .auto-style14 {
            position: absolute;
            top: 485px;
            left: 480px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 486px;
            left: 583px;
            z-index: 1;
            width: 149px;
        }
        .auto-style16 {
            position: absolute;
            top: 513px;
            left: 604px;
            z-index: 1;
            width: 113px;
        }
        .auto-style17 {
            position: absolute;
            top: 577px;
            left: 463px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 575px;
            left: 582px;
            z-index: 1;
            width: 246px;
        }
        .auto-style19 {
            position: absolute;
            top: 600px;
            left: 654px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 623px;
            left: 430px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 625px;
            left: 581px;
            z-index: 1;
            width: 246px;
        }
        .auto-style22 {
            position: absolute;
            top: 648px;
            left: 640px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 445px;
            left: 475px;
            z-index: 1;
            margin-top: 0px;
        }
        .auto-style24 {
            position: absolute;
            top: 673px;
            left: 528px;
            z-index: 1;
            width: 32px;
            height: 26px;
        }
        .auto-style25 {
            position: absolute;
            top: 672px;
            left: 580px;
            z-index: 1;
            width: 247px;
        }
        .auto-style26 {
            position: absolute;
            top: 695px;
            left: 683px;
            z-index: 1;
            height: 22px;
        }
        .auto-style33 {
            position: absolute;
            top: 535px;
            left: 469px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 532px;
            left: 581px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style35 {
            position: absolute;
            top: 486px;
            left: 748px;
            z-index: 1;
            width: 29px;
            height: 22px;
        }
        .auto-style54 {
            position: absolute;
            top: 764px;
            left: 178px;
            z-index: 1;
        }
        .auto-style55 {
            position: absolute;
            top: 816px;
            left: 412px;
            z-index: 1;
        }
        .auto-style56 {
            position: absolute;
            top: 816px;
            left: 579px;
            z-index: 1;
            width: 325px;
        }
        .auto-style57 {
            position: absolute;
            top: 841px;
            left: 703px;
            z-index: 1;
            height: 19px;
        }
        .auto-style58 {
            position: absolute;
            top: 867px;
            left: 467px;
            z-index: 1;
        }
        .auto-style59 {
            position: absolute;
            top: 866px;
            left: 580px;
            z-index: 1;
            width: 324px;
        }
        .auto-style61 {
            position: absolute;
            top: 892px;
            left: 684px;
            z-index: 1;
        }
        .auto-style62 {
            position: absolute;
            top: 911px;
            left: 471px;
            z-index: 1;
        }
        .auto-style63 {
            position: absolute;
            top: 911px;
            left: 580px;
            z-index: 1;
            width: 324px;
        }
        .auto-style65 {
            position: absolute;
            top: 934px;
            left: 689px;
            z-index: 1;
        }
        .auto-style133 {
            position: absolute;
            top: 1102px;
            left: 928px;
            z-index: 1;
             border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 99px;
            height: 42px;
        }
        .auto-style134 {
            position: absolute;
            top: 484px;
            left: 791px;
            z-index: 1;
        }
       
         #button1{
            border: hidden;
            
            display: block;
            text-decoration: none;
            width: auto;
            background-color: #f1f1f1;
            font-size: 20px;
            margin: 2px;
            padding: 3px;
            border-radius: 5px;
        }
         #button1:hover{
             color:burlywood;
             background-color: aliceblue;
         }
         .menu{
             width: 101%;
         }

        .auto-style138 {
            margin-right: 0px;
            height: 1000px;
            width: 1063px;
        }

        .auto-style139 {
            position: absolute;
            top: 196px;
            left: 491px;
            z-index: 1;
        }
        .auto-style140 {
            position: absolute;
            top: 196px;
            left: 590px;
            z-index: 1;
        }
        .auto-style141 {
            position: absolute;
            top: 892px;
            left: 684px;
            z-index: 1;
            margin-bottom: 0px;
        }
        .auto-style142 {
            position: absolute;
            top: 841px;
            left: 689px;
            z-index: 1;
        }
        .auto-style143 {
            position: absolute;
            top: 219px;
            left: 636px;
            z-index: 1;
        }
        .auto-style144 {
            position: absolute;
            top: 240px;
            left: 502px;
            z-index: 1;
        }
        .auto-style145 {
            position: absolute;
            top: 237px;
            left: 589px;
            z-index: 1;
        }
        .auto-style146 {
            position: absolute;
            top: 283px;
            left: 441px;
            z-index: 1;
        }
        .auto-style147 {
            position: absolute;
            top: 281px;
            left: 588px;
            z-index: 1;
        }
        .auto-style148 {
            position: absolute;
            top: 260px;
            left: 634px;
            z-index: 1;
        }
        .auto-style149 {
            position: absolute;
            top: 307px;
            left: 576px;
            z-index: 1;
        }
        .auto-style150 {
            position: absolute;
            top: 308px;
            left: 589px;
            z-index: 1;
        }

        .auto-style151 {
            position: absolute;
            top: 934px;
            left: 699px;
            z-index: 1;
        }
        .auto-style152 {
            position: absolute;
            top: 1258px;
            left: 774px;
            z-index: 1;
        }
        .auto-style153 {
            position: absolute;
            top: 1256px;
            left: 617px;
            z-index: 1;
        }
        .auto-style154 {
            position: absolute;
            top: 1256px;
            left: 696px;
            z-index: 1;
        }
        .auto-style155 {
            position: absolute;
            top: 1308px;
            left: 500px;
            z-index: 1;
        }
        .auto-style156 {
            position: absolute;
            top: 1308px;
            left: 592px;
            z-index: 1;
        }
        .auto-style157 {
            position: absolute;
            top: 1309px;
            left: 680px;
            z-index: 1;
        }
        .auto-style158 {
            position: absolute;
            top: 1309px;
            left: 755px;
            z-index: 1;
        }
        .auto-style159 {
            position: absolute;
            top: 1307px;
            left: 836px;
            z-index: 1;
        }
       
        .auto-style160 {
            position: absolute;
            top: 1102px;
            left: 158px;
            z-index: 1;
            text-decoration: none;
            border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 86px;
            height: 37px;
        }
       
        .auto-style161 {
            position: absolute;
            top: 32px;
            left: 163px;
            z-index: 1;
            width: 82px;
        }
       
    </style>
</head>
<body style="height: auto; width: auto; margin-left: 0px; margin-top: 0px; margin-bottom: 3px;">
   <!--Header-->
      <!--Menu Bar-->
      <div class="menu">
            <!--Header-->
           <div class="logo">
               <a  ref="pageLogo" href="PersonalInfoEntry.aspx"><img class="icon" src="Image/wallet.png" alt="logo" ></a>
               
               <nav>
                <input type="checkbox" id="check">
                <label for="check" class="checkbtn">
                    <i class="fas fa-bars">
                       
                    </i>
                </label>
                   <ul>
                       <!---Menu Buttons-->
                       <li class="click">
                           <a rel="Home" href="PersonalInfoEntry.aspx">
                               Home
                           </a>
                       </li>
                       <li><a href="Signin.aspx">Sign In</a></li>
                        <li>
                           <a href="PersonalInfoentry2.aspx">
                               Register
                           </a>
                       </li>
                   </ul>
               </nav>
           </div>   
    </div>
    <form id="form1" runat="server" class="auto-style138">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Size="X-Large" Text="Sign up" Font-Names="Calisto MT" ForeColor="#CC66FF"></asp:Label>
        <p>
            <asp:TextBox ID="date_birth" runat="server" CssClass="auto-style15"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style17" Text="Street Address"></asp:Label>
            <asp:Label ID="Label25" runat="server" CssClass="auto-style139" Text="User Name"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="Date of Birth"></asp:Label>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style23" Text="Middle Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="user_name" CssClass="auto-style143" ErrorMessage="* Input Username" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label26" runat="server" CssClass="auto-style144" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" CssClass="auto-style145" TextMode="Password"></asp:TextBox>
            <asp:Label runat="server" CssClass="auto-style146" Text="Confirm Password"></asp:Label>
            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="confirmpassoword" CssClass="auto-style149" Display="Dynamic" ErrorMessage="*Password Confirmation is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="ComparePassword" runat="server" ControlToCompare="password" ControlToValidate="confirmpassoword" CssClass="auto-style150" ErrorMessage="* Your Password Doesn`t Match" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="date_birth" CssClass="auto-style16" ErrorMessage="*Input date of birth" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="middle_name" runat="server" CssClass="auto-style13"></asp:TextBox>
            <asp:TextBox ID="confirmpassoword" runat="server" CssClass="auto-style147" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="password" CssClass="auto-style148" ErrorMessage="* Input Passoword" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <br />
        <br />
        &nbsp;<asp:Button ID="submit" runat="server" CssClass="auto-style133" Font-Bold="True" Font-Size="X-Large" Text="Submit" OnClick="submit_Click" Font-Names="Britannic Bold" ForeColor="#CC99FF" />
       
        <asp:TextBox ID="user_name" runat="server" CssClass="auto-style140"></asp:TextBox>
       
        <asp:Button ID="back_button" runat="server" CssClass="auto-style160" Font-Names="Britannic Bold" Font-Size="X-Large" ForeColor="#9999FF" OnClick="back_button_Click" Text="Back" CausesValidation="False" />
       
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
</body></html>
