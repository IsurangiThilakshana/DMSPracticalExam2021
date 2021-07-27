<%@ Page Title="" Language="C#" MasterPageFile="~/SISMS.Master" AutoEventWireup="true" CodeBehind="SubjectPage.aspx.cs" Inherits="SheffeildInternationalSMS.SubjectPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">     
        <h1>This page is Subject Page</h1>
        <div style="background-color: lightblue; height:134px; width:408px">
    <table border="1">
        <tr>
            <td>Subject Title</td>
            <td style="width: 251px">
                <asp:TextBox ID="SubNm" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Marks</td>
            <td style="width: 251px">
                <asp:TextBox ID="Mrks" runat="server" Width="182px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Grade</td>
            <td style="width: 251px">
                <asp:TextBox ID="Grds" runat="server" Width="182px"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="SubBtn" runat="server" Text="Insert New Record" Height="35px" OnClick="SubBtn_Click" Width="207px" />
            </td>
            <td style="width: 251px">
                <asp:Label ID="SubMsg" runat="server" Text="" ForeColor ="Green"></asp:Label>
            </td>
        </tr>
    </table>
   </div>
    
</asp:Content>
