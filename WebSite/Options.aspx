<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Options.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
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
        .auto-style8 {
            font-size: x-large;
            padding-top:20px;
            left:700px;
        }
        .auto-style9 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: transparent;
            color: white;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
            border-radius: 10px;
            position:relative;
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
        .auto-style10 {
            padding-top:18px;
            float: right;

        }
    </style>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />

</head>
<body style="margin:0;">
    <img class="imghead" src="Images/header2.jpeg" />

    <form id="form1" runat="server">

    <div class="divForText">
        <div>
            <div class="logo">
                
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="welcomeNote" runat="server" Width="400px" CssClass="auto-style8"></asp:Label>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <div class="auto-style10">
                <ul>
                    <li>
                        <asp:Button CssClass="auto-style9" ID="Button7" runat="server" Text="Change Password" OnClick="Button7_Click" />
                    </li>
                    <li>
                        <asp:Button CssClass="auto-style9" ID="Button6" runat="server" Text="Logout" OnClick="Button6_Click" />
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <div class="content">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
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
    
    
        </div>
    
    
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
             <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button8" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button8_Click" Text="6. Sponsored Research" />
                </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button9" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style3" ForeColor="#0066FF" OnClick="Button9_Click" Text="7. Consultancy" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
