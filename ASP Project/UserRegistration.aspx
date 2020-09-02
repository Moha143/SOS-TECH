<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="UserRegistration.aspx.vb" Inherits="Default2" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <h1> User Registration</h1>
    
    <br />
     <br />
     <br />

    <table style="width: 81%; height: 282px;">
        <tr>
            <td class="auto-style4" style="width: 85px">
                ID</td>
            <td class="auto-style5" colspan="6">
                <asp:TextBox ID="UserID" runat="server" Width="306px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 85px">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="width: 635px" colspan="6">
                <asp:TextBox ID="textName" runat="server" Width="309px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 85px">Email</td>
            <td style="width: 635px" colspan="6">
                <asp:TextBox ID="textEmail" runat="server" Width="309px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 85px">Number</td>
            <td style="width: 635px" colspan="6">
                <asp:TextBox ID="textNumber" runat="server" Width="307px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 85px">Username</td>
            <td style="width: 635px" colspan="6">
                <asp:TextBox ID="textUsername" runat="server" Width="308px" Height="19px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 85px; height: 38px;">Password</td>
            <td style="width: 684px; height: 38px;" colspan="3">
                <asp:TextBox ID="textPassword" runat="server" Width="305px"></asp:TextBox>
            </td>
            <td style="width: 635px; height: 38px;" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Enter Your ID"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 85px">&nbsp;</td>
            <td style="width: 83px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Save" Width="73px" Height="38px" style="margin-left: 0px; color: #FFFFFF; background-color: #CC33FF;" OnClick="Button1_Click" />
            </td>
            <td style="width: 93px">
                <asp:Button ID="Button2" runat="server" Height="40px" Text="Update" Width="85px" style="font-weight: 700; color: #FFFFFF; background-color: #0066CC" />
            </td>
            <td style="width: 135px" colspan="2">
                <asp:Button ID="Button3" runat="server" Height="35px" style="font-weight: 700; color: #FFFFFF; background-color: #0000CC" Text="Delete" Width="77px" />
            </td>
            <td style="width: 64px">
                <asp:Button ID="Button4" runat="server" Height="34px" style="color: #FF00FF; font-weight: 700; background-color: #0066FF" Text="Search" Width="72px" />
            </td>
            <td style="width: 635px">
                <asp:TextBox ID="searchbox" runat="server" Height="20px" Width="222px"></asp:TextBox>
            </td>
        </tr>
    </table>
     <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SOSConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [user_info]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="302px" Width="736px">
    <Columns>
        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        <asp:BoundField DataField="passwords" HeaderText="passwords" SortExpression="passwords" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
     <br />
     <br />
</asp:Content>




