<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAdmin.aspx.cs" Inherits="ViewAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Facuty Details</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            padding-left:325px;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3{
            background-color:rgb(1,84,152);
            color: white;
            border:none;
            padding: 5px 10px 5px 10px;
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
            top: 7px;
        }
        li{
            list-style:none;
            float:right;
            margin-left:15px;
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
        .auto-style5 {
            position: absolute;
            z-index: inherit;
            left: 620px;
            top: 30px;
            color: white;
            font-size: xx-large;
            width: 251px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body>
    <img class="auto-style11" src="Images/header2.jpeg" />
    <form id="form1" runat="server">
    <div class="auto-style7">
           <div class="auto-style5">
        <strong>View Details</strong>
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
        <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" Width="70%" OnRowCommand="GridView1_OnRowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#61A6F8" />
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="LblName" runat="server"><%#Eval("Name")%></asp:Label>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button CssClass="auto-style3" ID="Button1" runat="server" CommandName="View" CommandArgument='<%#Eval("ID") %>' Text="View"/>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="Blue" ForeColor="White" />
            <RowStyle Wrap="True" />
        </asp:GridView>
        </div>
    </form>
</body>
</html>