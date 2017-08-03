<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        .auto-style2 {
            margin-left:auto;
           margin-right:auto;
           align-content:center; 
        }
        .auto-style3 {
            width: 121px;
            text-align: right;
        }
        .auto-style9 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color:transparent;
            color: white;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            border-radius: 10px;
        }
        .auto-style10 {
            position:absolute;
            z-index:inherit;
            padding-top:18px;
            float: right;
            left: 1144px;
            top: 3px;
        }
        li{
            list-style:none;
            float:right;
            margin-left:15px;
        }
        .imghead{
            float:left;
            min-width:100%;
            margin-left:0px;
            margin-right: 0px;
            left:0%;
            right:0%;
            position:absolute;
            background-attachment:inherit;
        }
        .auto-style11 {
            position: absolute;
            z-index: inherit;
            left: 620px;
            top: 30px;
            color: white;
            font-size: x-large;
            width: 178px;
        }
        .auto-style12 {
            float: left;
            min-width: 100%;
            left: 0%;
            right: -39%;
            position: absolute;
            top: 0px;
            margin-left: 0px;
            margin-right: 0px;
            background-attachment: inherit;
        }
        </style>
     <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body style="text-align:center;">
    <img class="auto-style12" src="Images/header2.jpeg" />
    <form id="form1" runat="server">
    <div class="auto-style7">
            <div class="auto-style11">
                <strong>Forgot Password</strong>
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>
        <br />
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="auto-style10">
                <ul>
                    <li>
                        <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server" OnLoad="Page_Load">Login</asp:HyperLink>
                    </li>
                </ul> 
        </div>
        <table class="auto-style2">
            
            <tr>
                <td class="auto-style3">UserName</td>
                <td>
                    <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtUserName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Email Id</td>
                <td>
                    <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button CssClass="Button" ID="Button1" runat="server" OnClick="Button1_Click" Text="Send Mail" />
&nbsp;<p>
            <asp:Label ID="LblResult" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html><%--  --%>