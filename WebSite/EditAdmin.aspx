<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditAdmin.aspx.cs" Inherits="EditAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Faculties</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" /> 
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
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
    </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body>
     <img class="auto-style11" src="Images/header2.jpeg" />
    <form id="form1" runat="server">
    <div class="auto-style7">
           <div class="auto-style5">
        <strong>Faculties</strong>
        </div>
        <br />
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

        <div class="auto-style2">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,UserName" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <AlternatingRowStyle BackColor="#61A6F8" />
                <Columns>
                    <asp:TemplateField HeaderText="Operations">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImgBtnUpdate" runat="server" CommandName="Update" Height="20px" ImageUrl="~/Images/Update2.png" ToolTip="Update" Width="20px" />
                            <asp:ImageButton ID="ImgBtCancel" runat="server" CommandName="Cancel" Height="20px" ImageUrl="~/Images/cancel .png" ToolTip="Cancel" Width="20px" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImgBtnEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Images/edit2.png" ToolTip="Edit" Width="20px" />
                            <asp:ImageButton ID="ImgBtnDelete" runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Images/delete.png" ToolTip="Delete" Width="20px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtName" runat="server" Text='<%#Eval("Name")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="User Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtUserName" runat="server" Text='<%#Eval("UserName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtUserName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblUserName" runat="server" Text='<%#Eval("UserName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtEmail" runat="server" Text='<%#Eval("Email")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtEmail" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblEmail" runat="server" Text='<%#Eval("Email")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="Blue" ForeColor="White" />
            </asp:GridView>

        </div>
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    </form>
</body>
</html>
