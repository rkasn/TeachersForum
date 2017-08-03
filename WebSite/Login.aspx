<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        body{
            background-image: url(Images/back2.jpg);
            background-repeat:no-repeat;
            background-position:center;
            background-size:cover;
            border-bottom-width:0px;
            background-attachment:fixed;
        }
        .Button{
            background-color: rgb(1,84,152);
            border: none;
            color: white;
            padding:10px 10px 10px 10px;
            text-align:center;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            border-radius:10px;
        }
        .header img{
            width: 100%;
            background: #555;
        }
        .auto-style1 {
           margin-left:auto;
           margin-right:auto;
           align-content:center;
        }
        .auto-style2 {
            
            text-align: right;
            width: 341px;
            height: 9px;
        }
        .auto-style3 {
            
            width: 217px;
            height: 9px;
            text-align: left;
        }
        .auto-style7 {
            width: 211px;
            height: 9px;
        }
        
        .auto-style10 {
            text-align: right;
            width: 341px;
        }
        .auto-style11 {
            width: 211px;
        }
        .auto-style12 {
            width: 217px;
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
            font-size: x-large;
            width: 94px;
        }
        .imghead{
            float:left;
            min-width:100%;
            margin-left:0px;
            margin-right: 0px;
            left:0%;
            right:0%;
            position:absolute;
            background-attachment:inherit;
        }
        .auto-style21 {
    font-size: x-large;
}

.auto-style22 {
    position: absolute;
    z-index: inherit;
    left: 640px;
    top: 30px;
    color:white;
            font-size: xx-large;
        }
        .auto-style23 {
            float: left;
            min-width: 100%;
            margin-left: 0px;
            margin-right: 0px;
            left: 0%;
            right: -20%;
            position: absolute;
            background-attachment: inherit;
            top: 0px;
        }
        </style>
</head>
<body style="text-align:center; margin:0px; background-attachment:fixed;">
            
                <img class="auto-style23" src="Images/header2.jpeg"/>
       
            <br />
            <br />
            <br />
            <br />
    <br /><br /><br />

        
            <form id="form1" runat="server" style="background-attachment:fixed;" >
                
                <div class="auto-style21">
            <div class="auto-style22">
                <strong>FACULTY FORUM</strong>
            </div>
            <br />
            <br />
            <br />
        </div>
                <br />
            &nbsp;<table class="auto-style1" border="0" style="background-attachment:fixed;">
                <tr>
                    <th class="auto-style14" colspan="2" style="padding:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login<br />
                    </th>
                </tr>
            <tr>
                <td class="auto-style2">User Name</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Password<br />
&nbsp; </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" ForeColor="Blue" Font-Size="Small" runat="server">Forgot Password?</asp:HyperLink>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button CssClass="Button" ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Font-Bold="True" Height="34px" Width="103px"/>
        
        
    </form>
</body>
</html>
