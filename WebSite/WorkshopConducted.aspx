<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WorkshopConducted.aspx.cs" Inherits="WorkshopConducted" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Workshop Conducted</title>
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
                <strong>Workshop Conducted</strong>
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
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtName" runat="server" TextMode="MultiLine" Text='<%#Eval("Name")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrName" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFtrName" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblName" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Domain">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtDomain" TextMode="MultiLine" runat="server" Text='<%#Eval("Domain")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDomain" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrDomain" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtFtrDomain" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblDomain" runat="server" Text='<%#Eval("Domain")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Venue">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtVenue" TextMode="MultiLine" runat="server" Text='<%#Eval("Venue")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtVenue" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrVenue" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtFtrVenue" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblJVenue" runat="server" Text='<%#Eval("Venue")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Type Of Audience">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtTOA" runat="server" Text='<%#Eval("TOA")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtTOA" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrTOA" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtFtrTOA" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblTOA" runat="server" Text='<%#Eval("TOA")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="No. Of Days">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtNOD" runat="server" TextMode="Number" Text='<%#Eval("NOD")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtNOD" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrNOD" TextMode="Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtFtrNOD" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblNOD" runat="server" Text='<%#Eval("NOD")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Start Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtStartDate" runat="server" TextMode="Date" Text='<%#Eval("StartDate")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtStartDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrStartDate" TextMode="Date" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtFtrStartDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblStartDate" runat="server" Text='<%#Eval("StartDate")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="End Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TxtEndDate" runat="server" TextMode="Date" Text='<%#Eval("EndDate")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TxtEndDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TxtFtrEndDate" TextMode="Date" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TxtFtrEndDate" ForeColor="Red" ValidationGroup="validation">*</asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblEndDate" runat="server" Text='<%#Eval("EndDate")%>'></asp:Label>
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
