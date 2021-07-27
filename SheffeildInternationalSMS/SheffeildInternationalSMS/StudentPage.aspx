<%@ Page Title="" Language="C#" MasterPageFile="~/SISMS.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="SheffeildInternationalSMS.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Student Page</h1>
    <div style="background-color: lightblue; height:134px; width:408px">
    <table border="1">
        <tr>
            <td>Student First Name</td>
            <td style="width: 251px">
                <asp:TextBox ID="StdFNm" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Student Last Name</td>
            <td style="width: 251px">
                <asp:TextBox ID="StdLNm" runat="server" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Student Tel Number</td>
            <td style="width: 251px">
                <asp:TextBox ID ="StdTNum" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="StdBtn" runat="server" Text="Insert New Student" Height="35px" OnClick="StdBtn_Click" Width="207px" />
            </td>
            <td style="width: 251px">
                <asp:Label ID="StdMsg" runat="server" Text="" ForeColor ="Green"></asp:Label>
            </td>
        </tr>
    </table>
   </div>
</asp:Content>
