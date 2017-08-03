<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Workshop Conducted.aspx.cs" Inherits="Workshop_Conducted" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 421px;
            text-align: right;
        }
        .auto-style4 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="auto-style1">
    
        <strong>Workshop Conducted<br />
        <br />
        </strong>
    
    </div>
        <div class="auto-style5">
            <asp:Label ID="Label7" runat="server" ForeColor="#CC0000"></asp:Label>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Domain"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Venue"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="140px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    
                    Type of Audience
                    
                </td>
                <td class="auto-style4">
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="140px">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>UG Students</asp:ListItem>
                        <asp:ListItem>PG Students</asp:ListItem>
                        <asp:ListItem>UG Faculty</asp:ListItem>
                        <asp:ListItem>PG Faculty</asp:ListItem>
                        <asp:ListItem>For All</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="No of Days"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="140px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Starting Date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Width="140px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Ending Date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Width="140px"></asp:TextBox>
                </td>
               </tr> 
        </table>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="View" />
    </form>
    </body>
</html>
