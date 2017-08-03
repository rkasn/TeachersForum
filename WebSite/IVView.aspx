<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IVView.aspx.cs" Inherits="IVView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Industrial Visit</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
     <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
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
        .Button1 {
    background-color: rgb(1,84,152);
    border: none;
    color: white;
    padding: 2px 6px 2px 6px;
    text-align: center;
    text-decoration: none;
    font-size: 14px;
    cursor: pointer;
}
    </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body>
    <img class="imghead" src="Images/bmsheader2.png" />
    <form id="form1" runat="server">

        <div class="auto-style7">
            <div class="auto-style8">
                <asp:Label ID="LblName" runat="server" CssClass="auto-style2"></asp:Label>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" Width="100%">
            <AlternatingRowStyle BackColor="#61A6F8" />
            <Columns>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="LblDate" runat="server"><%#Eval("Date")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Organisation Name">
                    <ItemTemplate>
                        <asp:Label ID="LblOrgName" runat="server"><%#Eval("OrgName")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Deptartment Name">
                    <ItemTemplate>
                        <asp:Label ID="LblDeptName" runat="server"><%#Eval("DeptName")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="No. Of Students">
                    <ItemTemplate>
                        <asp:Label ID="LblNOS" runat="server"><%#Eval("NOS")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Venue">
                    <ItemTemplate>
                        <asp:Label ID="LblVenue" runat="server"><%#Eval("Venue")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Outcome">
                    <ItemTemplate>
                        <asp:Label ID="LblOutcome" runat="server"><%#Eval("Outcome")%></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="Blue" ForeColor="White" />
            <RowStyle Wrap="True" />

        </asp:GridView>
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button CssClass="Button1" ID="Button1" runat="server" OnClick="Button1_Click" Text="Export To Excel" />
    </form>
</body>
</html>
