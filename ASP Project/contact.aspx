<%@ Page Title="" Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Send Us Your Questions</h1>
     <h2> SOS Technology Group</h2>
    <h4>At SOS Technology Group, we’re dedicated to providing you with timely service and support. <br />
        For all inquiries and requests, you may use the contact form below, or contact us directly:</h4>
    <p>
        <img alt="" src="Image/untitled.png" style="width: 497px; height: 189px" /><img alt="" src="Image/tttt.jpg" style="width: 385px; height: 183px" /></p>
    <h3>HEADQUARTERS</h3>
    <h4>Mogadishu Somalia</h4>

    <table style="width: 90%; height: 68px">
        <tr>
            <td style="width: 146px">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="textName" runat="server" Height="31px" Width="306px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="31px" Width="306px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 146px">Message</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtMessage" runat="server" Height="121px" Width="312px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 146px">
                <br />
                <br />
            </td>
            <td style="height: 26px">
                <asp:Button ID="Button1" runat="server" Text="SEND" Width="357px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>


