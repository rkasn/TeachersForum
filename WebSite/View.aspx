<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Details</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-decoration: underline;
            font-weight: bold;
        }
        .auto-style4 {
            text-align: center;
            height: 26px;
        }
        .auto-style5 {
            font-size: xx-large;
        }.auto-style9 {
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
        </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body>
    <img class="imghead" src="Images/bmsheader2.png" />
    <form id="form1" runat="server">

        <div class="auto-style7">
            <div class="auto-style8">
                <strong><asp:Label ID="LblName" runat="server" CssClass="auto-style5"></asp:Label></strong>
            </div>
            <br />
            <br />
            <br />
        </div>
        
                <div class="auto-style10">
                <ul>
                    <li>
                       <asp:HyperLink CssClass="auto-style9" ID="HyperLink1" runat="server">Home</asp:HyperLink>
                    </li>
                </ul> 
        </div>
                <br />
                <br />
                <br />
                <br />

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button1_Click" Text="1. Paper Published" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button2_Click" Text="2. Workshop Conducted" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button3_Click" Text="3. Workshop Attended" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button4_Click" Text="4. Industrial Visit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button5_Click" Text="5. Patents" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
