<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IndustrialVisit.aspx.cs" Inherits="IndustrialVisit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Industrial Visit</title>
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
            font-size: xx-large;
        }
        </style>
    <link rel="stylesheet" type="text/css" href="ChangePassword.css" />
</head>
<body>
    <img class="imghead" src="Images/header2.jpeg" />
    <form id="form1" runat="server">
   <div class="auto-style7">
            <div class="auto-style11">
                <strong>Industrial Visit</strong>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" ShowFooter="True" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
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
                            <asp:TextBox ID="TxtDate" runat="server" TextMode="Date" Text='<%#Eval("Date")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrDate" TextMode="Date" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFtrDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblDate" runat="server" Text='<%#Eval("Date")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Organisation Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtOrgName" TextMode="MultiLine" runat="server" Text='<%#Eval("OrgName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtOrgName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrOrgName" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFtrOrgName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblOrgName" runat="server" Text='<%#Eval("OrgName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Deptarment Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtDeptName" TextMode="MultiLine" runat="server" Text='<%#Eval("DeptName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtDeptName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrDeptName" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtFtrDeptName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblDeptName" runat="server" Text='<%#Eval("DeptName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="No. Of Students">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtNOS" runat="server" TextMode="Number" Text='<%#Eval("NOS")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtNOS" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrNOS" TextMode="Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtFtrNOS" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblNOS" runat="server" Text='<%#Eval("NOS")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Venue">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtVenue" TextMode="MultiLine" runat="server" Text='<%#Eval("Venue")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtVenue" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrVenue" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtFtrVenue" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblVenue" runat="server" Text='<%#Eval("Venue")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Outcome">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtOutcome" TextMode="MultiLine" runat="server" Text='<%#Eval("Outcome")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TxtOutcome" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrOutcome" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TxtFtrOutcome" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblOutcome" runat="server" Text='<%#Eval("Outcome")%>'></asp:Label>
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
