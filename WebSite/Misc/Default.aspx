<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .GridView{
            font-family:Verdana;
            font-size:10pt;
            color:black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GvDetails" runat="server" AutoGenerateColumns="False" CssClass="GridView" DataKeyNames="UserId,UserName" OnRowCancelingEdit="GvDetails_RowCancelingEdit" OnRowCommand="GvDetails_RowCommand" OnRowDeleting="GvDetails_RowDeleting" OnRowEditing="GvDetails_RowEditing" OnRowUpdating="GvDetails_RowUpdating" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:ImageButton ID="ImgBtnUpdate" runat="server" CommandName="Update" Height="20px" ImageUrl="~/Images/Update.png" ToolTip="Update" Width="20px" />
                        <asp:ImageButton ID="ImgBtnCancel" runat="server" CommandName="Cancel" Height="20px" ImageUrl="~/Images/cancel .png" ToolTip="20px" Width="20px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ID="ImgBtnAdd" runat="server" CommandName="AddNew" Height="20px" ImageUrl="~/Images/insert.png" ToolTip="AddNew" ValidationGroup="validation" Width="20px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImgBtnEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Images/edit.png" ToolTip="Edit" Width="20px" />
                        <asp:ImageButton ID="ImgBtnDelete" runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Images/delete.png" ToolTip="Delete" Width="20px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserName">
                    <EditItemTemplate>
                        <asp:Label ID="LblEditUser" runat="server" Text='<%#Eval("Username")%>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtFtrUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ControlToValidate="TxtFtrUserName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LblItemUser" runat="server" Text='<%#Eval("Username")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtCity" runat="server" Text='<%#Eval("City")%>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtFtrCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvCity" runat="server" ControlToValidate="TxtFtrCity" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LblCity" runat="server" Text='<%#Eval("City")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Designation">
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtDesignation" runat="server" Text='<%#Eval("Designation")%>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TxtFtrDesignation" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RfvDesignation" runat="server" ControlToValidate="TxtFtrDesignation" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LblDesignation" runat="server" Text='<%#Eval("Designation")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <HeaderStyle BackColor="#61A6F8" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    
    </div>
        <asp:Label ID="LblResult" runat="server"></asp:Label>
    </form>
</body>
</html>