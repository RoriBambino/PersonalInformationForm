<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalInfoentry2.aspx.cs" Inherits="PersonalInformationForm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Sign Up</title>
    <link rel="icon" type="image/png" href="Image/wallet.png"/>
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
            top: 133px;
            left: 717px;
            z-index: 1;
            width: 135px;
            height: 53px;
            right: 216px;
        }
        .auto-style133 {
            position: absolute;
            top: 520px;
            left: 883px;
            z-index: 1;
             border-radius: 50px;
            cursor: pointer;
            border-style: none;
            background-color: grey;
            width: 99px;
            height: 42px;
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
            height: 382px;
            width: 1063px;
        }

        .auto-style139 {
            position: absolute;
            top: 359px;
            left: 596px;
            z-index: 1;
        }
        .auto-style140 {
            position: absolute;
            top: 357px;
            left: 698px;
            z-index: 1;
        }
        .auto-style143 {
            position: absolute;
            top: 382px;
            left: 740px;
            z-index: 1;
        }
        .auto-style144 {
            position: absolute;
            top: 400px;
            left: 606px;
            z-index: 1;
        }
        .auto-style145 {
            position: absolute;
            top: 398px;
            left: 698px;
            z-index: 1;
        }
        .auto-style146 {
            position: absolute;
            top: 439px;
            left: 544px;
            z-index: 1;
        }
        .auto-style147 {
            position: absolute;
            top: 439px;
            left: 697px;
            z-index: 1;
        }
        .auto-style148 {
            position: absolute;
            top: 421px;
            left: 737px;
            z-index: 1;
        }
        .auto-style149 {
            position: absolute;
            top: 462px;
            left: 686px;
            z-index: 1;
        }
        .auto-style150 {
            position: absolute;
            top: 462px;
            left: 698px;
            z-index: 1;
        }

        .auto-style152 {
            position: absolute;
            top: 639px;
            left: 845px;
            z-index: 1;
        }
        .auto-style153 {
            position: absolute;
            top: 639px;
            left: 655px;
            z-index: 1;
        }
        .auto-style154 {
            position: absolute;
            top: 639px;
            left: 749px;
            z-index: 1;
        }
        .auto-style155 {
            position: absolute;
            top: 689px;
            left: 568px;
            z-index: 1;
        }
        .auto-style156 {
            position: absolute;
            top: 689px;
            left: 655px;
            z-index: 1;
        }
        .auto-style157 {
            position: absolute;
            top: 689px;
            left: 755px;
            z-index: 1;
        }
        .auto-style158 {
            position: absolute;
            top: 688px;
            left: 843px;
            z-index: 1;
            width: 66px;
        }
        .auto-style159 {
            position: absolute;
            top: 688px;
            left: 942px;
            z-index: 1;
        }
       
        .auto-style160 {
            position: absolute;
            top: 520px;
            left: 550px;
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
       
        .auto-style162 {
            position: absolute;
            top: 484px;
            left: 684px;
            z-index: 1;
        }
       
        .auto-style163 {
            position: absolute;
            top: 482px;
            left: 823px;
            z-index: 1;
        }
       
        .auto-style164 {
            position: absolute;
            top: 231px;
            left: 597px;
            z-index: 1;
        }
        .auto-style165 {
            position: absolute;
            top: 229px;
            left: 697px;
            z-index: 1;
            width: 181px;
        }
        .auto-style166 {
            position: absolute;
            top: 255px;
            left: 734px;
            z-index: 1;
        }
        .auto-style167 {
            position: absolute;
            top: 273px;
            left: 596px;
            z-index: 1;
        }
        .auto-style168 {
            position: absolute;
            top: 273px;
            left: 697px;
            z-index: 1;
        }
        .auto-style169 {
            position: absolute;
            top: 298px;
            left: 732px;
            z-index: 1;
        }
        .auto-style170 {
            position: absolute;
            top: 316px;
            left: 580px;
            z-index: 1;
        }
        .auto-style171 {
            position: absolute;
            top: 315px;
            left: 697px;
            z-index: 1;
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
                               Sign Up
                           </a>
                       </li>
                   </ul>
               </nav>
           </div>   
    </div>
    <form id="form1" runat="server" class="auto-style138">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Font-Size="30pt" Text="Sign up" Font-Names="Calisto MT" ForeColor="#CC66FF"></asp:Label>
        <p>
            <asp:Label ID="Label25" runat="server" CssClass="auto-style139" Text="User Name"></asp:Label>
            <asp:TextBox ID="user_fname" runat="server" BorderStyle="Outset" CssClass="auto-style168"></asp:TextBox>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="user_name" CssClass="auto-style143" ErrorMessage="* Input Username" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label26" runat="server" CssClass="auto-style144" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" CssClass="auto-style145" TextMode="Password" BorderStyle="Outset"></asp:TextBox>
            <asp:Label runat="server" CssClass="auto-style146" Text="Confirm Password"></asp:Label>
            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="confirmpassoword" CssClass="auto-style149" Display="Dynamic" ErrorMessage="*Password Confirmation is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="ComparePassword" runat="server" ControlToCompare="password" ControlToValidate="confirmpassoword" CssClass="auto-style150" ErrorMessage="* Your Password Doesn`t Match" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
            <asp:TextBox ID="user_lname" runat="server" BorderStyle="Outset" CssClass="auto-style165"></asp:TextBox>
            <asp:Label ID="Label30" runat="server" CssClass="auto-style167" Text="First Name"></asp:Label>
            <asp:Label ID="Label31" runat="server" CssClass="auto-style170" Text="Middle Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="confirmpassoword" runat="server" CssClass="auto-style147" TextMode="Password" BorderStyle="Outset"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="password" CssClass="auto-style148" ErrorMessage="* Input Passoword" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label29" runat="server" CssClass="auto-style164" Text="Last Name"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="user_lname" CssClass="auto-style166" ErrorMessage="* Input Last Name" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="user_fname" CssClass="auto-style169" ErrorMessage="* Input First Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="user_midname" runat="server" BorderStyle="Outset" CssClass="auto-style171"></asp:TextBox>
        </p>
        <br />
        <asp:Label ID="Label27" runat="server" CssClass="auto-style161" Font-Names="Bookman Old Style" Font-Size="X-Large" Text="E-Save"></asp:Label>
        <asp:Label ID="Label28" runat="server" CssClass="auto-style162" Font-Size="Small" ForeColor="#999999" Text="Already have account?"></asp:Label>
        <p><a href="Signin.aspx" class="auto-style163" style="font-size: 14px">Sign In</a></p>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;<asp:Button ID="submit" runat="server" CssClass="auto-style133" Font-Bold="True" Font-Size="X-Large" Text="Submit" OnClick="submit_Click" Font-Names="Britannic Bold" ForeColor="#CC99FF" />
       
        <asp:TextBox ID="user_name" runat="server" CssClass="auto-style140" BorderStyle="Outset"></asp:TextBox>
       
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
            <p class="copyright" style="width: 835px; height: 19px; z-index: 1; position: absolute; top: 721px; left: 362px">E-Wallet Co. © 2023</p>
        </footer>
    </div>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body></html>
