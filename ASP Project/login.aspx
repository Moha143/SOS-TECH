<%@ Page Title="" Language="VB" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Form</h1>
<p> &nbsp;</p>
<p> &nbsp;</p>
    <img src="image/lo.jpg" height="200" style=" margin-left:220px; width: 232px;"/>

    <table style="width: 96%;  height:100%;" >
        <tr>
            <td style="width: 10px; height: 29px;">Username</td>
            <td style="width: 284px; height: 29px;">
                <asp:TextBox ID="TextBox1" runat="server" Width="351px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 10px">Password</td>
            <td style="width: 284px">

                <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" Width="351px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 284px">
                <asp:Button ID="login" runat="server" Font-Bold="True" Text="LOGIN" Width="235px" style="margin-left: 35px" />
            </td>
        </tr>
    </table>






     <br />  <br />  <br />  <br />  <br />  <br />
 <br />  <br />  <br />  <br />  <br />  <br />
 <br />  <br />  <br />  <br />  <br />  <br />


    <br />

</asp:Content>