﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="Change_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        .auto-style2 {
            margin-left:auto;
           margin-right:auto;
           align-content:center;
        }
        .auto-style3 {
            text-align: right;
            width: 166px;
        }
        .auto-style4 {
            width: 187px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            font-size: medium;
        }
        .auto-style9 {
            float: left;
            min-width: 100%;
            margin-left: 0px;
            margin-right: 0px;
            left: 0%;
            right: -39%;
            position: absolute;
            background-attachment: inherit;
            top: 0px;
        }
        .auto-style10 {
            position: absolute;
            z-index: inherit;
            left: 620px;
            top: 30px;
            color: white;
            font-size: x-large;
            width: 194px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body style="text-align: center">
    <img class="auto-style9" src="Images/header2.jpeg" />
    <form id="form1" runat="server">
    
        <div class="auto-style7">
            <div class="auto-style10">
                <strong>Change Password</strong>
            </div>
            <br />
            <br />
            <br />
            <br />
        </div>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxNP" ControlToValidate="TextBoxCNP" ErrorMessage="Both Password Must Be Same" ForeColor="Red" CssClass="auto-style6"></asp:CompareValidator>
    
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Old Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxOP" runat="server" style="margin-left: 0px" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxOP" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">New Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxNP" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNP" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm New Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxCNP" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxCNP" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button CssClass="Button" ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Update" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>