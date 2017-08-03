<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaperPublished.aspx.cs" Inherits="PaperPublished" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paper Published</title>
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
                <strong><span class="auto-style12">Paper Published</span></strong><span class="auto-style12"> </span>
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
                    <asp:TemplateField HeaderText="Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtDate" runat="server"  TextMode="Date" Text='<%#Eval("Date")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrDate" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFtrDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblDate" runat="server"  Text='<%#Eval("Date")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Co-Author">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtCAuth" TextMode="MultiLine" runat="server" Text='<%#Eval("CoAuthor")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCAuth" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrCAuth" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFtrCAuth" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCAuth" runat="server" Text='<%#Eval("CoAuthor")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Journal Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtJName" TextMode="MultiLine" runat="server" Text='<%#Eval("JournalName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtJName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrJName" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtFtrJName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblJName" runat="server" Text='<%#Eval("JournalName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Conference Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtCName" TextMode="MultiLine" runat="server" Text='<%#Eval("ConferenceName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtCName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrCName" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtFtrCName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCName" runat="server" Text='<%#Eval("ConferenceName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Conference Place">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtCPlace" TextMode="MultiLine" runat="server" Text='<%#Eval("ConferencePlace")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtCPlace" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrCPlace" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtFtrCPlace" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCPlace" runat="server" Text='<%#Eval("ConferencePlace")%>'></asp:Label>
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
