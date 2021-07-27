<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SheffeildInternationalSMS.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 142px;
            width: 546px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 42px;
            width: 343px;
        }
        .auto-style6 {
            height: 40px;
            width: 343px;
        }
        .auto-style7 {
            width: 343px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Sheffeild International Scool Student Management System</h1>
                <hr/>
                <div style="background-color: lightblue; " class="auto-style1">
                    <table border ="1">
                        <tr>
                            <td class="auto-style5">User Id</td>
                            <td class="auto-style3"><asp:TextBox ID="TxtbxUserId" runat="server" Height="30px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Password</td>
                            <td class="auto-style4"><asp:TextBox ID="TxtbxPw" runat="server" TextMode="Password" Height="30px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" Width="362px" Height="42px" /></td>
                            <td> <asp:Label ID="ErrMsg" runat="server" Text="" ForeColor="red"></asp:Label></td>
                        </tr>
                    </table>
                </div>
            </center>
        </div>

    </form>
</body>
</html>
