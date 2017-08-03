<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patent.aspx.cs" Inherits="Patent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patent</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
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
        .auto-style11 {
            position: absolute;
            z-index: inherit;
            left: 620px;
            top: 35px;
            color: white;
            font-size: x-large;
        }
        .auto-style12 {
            font-size: xx-large;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body>
     <img class="imghead" src="Images/header2.jpeg" /><span class="auto-style12"> </span>
    <form id="form1" runat="server">
    <div class="auto-style7">
            <div class="auto-style11">
                <strong><span class="auto-style12">Patents</span></strong><span class="auto-style12"> </span>
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

        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" ShowFooter="True" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#61A6F8" />
                <Columns>
                    <asp:TemplateField HeaderText="Operations">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImgBtnUpdate" runat="server" CommandName="Update" Height="20px" ImageUrl="~/Images/Update2.png" ToolTip="Update" Width="20px" />
                            <asp:ImageButton ID="ImgBtCancel" runat="server" CommandName="Cancel" Height="20px" ImageUrl="~/Images/cancel .png" ToolTip="Cancel" Width="20px" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ID="ImgBtnAdd" runat="server" CommandName="AddNew" Height="20px" ImageUrl="~/Images/insert.png" ToolTip="AddNew" ValidationGroup="validation" Width="20px" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImgBtnEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Images/edit2.png" ToolTip="Edit" Width="20px" />
                            <asp:ImageButton ID="ImgBtnDelete" runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Images/delete.png" ToolTip="Delete" Width="20px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtTitle" runat="server"  TextMode="SingleLine" Text='<%#Eval("Title")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtTitle" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrTitle" runat="server" TextMode="SingleLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFtrTitle" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblTitle" runat="server"  Text='<%#Eval("Title")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Year">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtYear" TextMode="Number" runat="server" Text='<%#Eval("Year")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtYear" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrYear" TextMode="Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFtrYear" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblYear" runat="server" Text='<%#Eval("Year")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtStatus" TextMode="SingleLine" runat="server" Text='<%#Eval("Status")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtStatus" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrStatus" TextMode="SingleLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtFtrStatus" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblStatus" runat="server" Text='<%#Eval("Status")%>'></asp:Label>
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
