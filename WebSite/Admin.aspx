<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            }
        .auto-style2 {
            text-decoration: underline;
            font-weight: bold;
        }
        .auto-style3 {
            text-align: center;
        }
         .imghead{
            float:left;
            min-width:100%;
            margin-left: 0px;
            margin-right: 0px;
            left:0%;
            right:0%;
            position:absolute;
            background-attachment:inherit;
        }
        .auto-style5 {
            position: absolute;
            z-index: inherit;
            left: 620px;
            top: 30px;
            color: white;
            font-size: xx-large;
            width: 251px;
        }
        a{
           text-decoration:none;
           font-family:"Helvetica";
           font-size:small;
           color:white;
        }

        li{
            list-style:none;
            float:right;
            margin-left:15px;
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
            left: 1052px;
            top: -21px;
        }
        .auto-style11 {
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
        </style>
</head>
<body style="margin:0;">

    <img class="auto-style11" src="Images/header2.jpeg" />
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div class="auto-style5">
        <strong>Admin Page</strong>
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="auto-style10">
                <ul>
                    <li>
                        <asp:Button CssClass="auto-style9" ID="Button4" runat="server" Text="Change Password" OnClick="Button4_Click" />
                    </li>
                    <li>
                        <asp:Button CssClass="auto-style9" ID="Button6" runat="server" Text="Logout" OnClick="Button6_Click" />
                    </li>
                </ul>
            
        </div>
        <br />
        <br />
        <br />
    </div>
        <br />
        <br />
        <br />
        <div class="auto-style3">
            <asp:Button ID="Button1"  runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style2" ForeColor="Blue" OnClick="Button1_Click" Text="1. Register" />
            <br /><br />
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style2" ForeColor="Blue" OnClick="Button2_Click" Text="2. Edit/Remove" />
            <br /><br />
            <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style2" ForeColor="Blue" Text="3. View Details" OnClick="Button3_Click" />
    </div>
      </form>
</body>
</html>
