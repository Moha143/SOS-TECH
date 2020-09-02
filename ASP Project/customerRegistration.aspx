<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="customerRegistration.aspx.vb" Inherits="customerRegistration" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SOS_TechConnectionString %>" 
            SelectCommand="SELECT * FROM [customer]"
            updateCommand="UPDATE [customer] SET [cust_name] =@cust_name, [cust_tell] =@cust_tell,  [cust_Email] =@cust_Email,[[cust_services]] =@[cust_services] where [cust_id]=@cust_id"
            deleteCommand="DELETE FROM  [customer] WHERE  [cust_id]=@cust_id "

            >


        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <table class="auto-style13"  style ="width : 57%">
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label2" runat="server" Text="Customer ID"></asp:Label>
            </td>
            <td class="auto-style15" colspan="5">
                <asp:TextBox ID="TextBox1" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td class="auto-style17" colspan="5">
                <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label3" runat="server">Customer Number</asp:Label>
            </td>
            <td class="auto-style15" colspan="5">
                <asp:TextBox ID="TextBox3" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label4" runat="server" Text="Customer Email"></asp:Label>
            </td>
            <td class="auto-style15" colspan="5">
                <asp:TextBox ID="TextBox4" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:Label ID="Label5" runat="server" Text="Customer Service"></asp:Label>
            </td>
            <td class="auto-style22" colspan="5">
                <asp:TextBox ID="TextBox5" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <br />
                <br />
            </td>
            <td class="auto-style23">
                <asp:Button ID="Button1" runat="server" Text="Save" Width="97px" Height="39px" style="background-color: #0066FF" />
            </td>
            <td class="auto-style23">
                <asp:Button ID="Button3" runat="server" Height="39px" Text="Update" Width="70px" style="background-color: #00FF00" />
            </td>
            <td class="auto-style26">
                <asp:Button ID="Button4" runat="server" Height="38px" Text="Delete" Width="68px" />
            </td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" Text="Search" Width="89px" Height="40px" />
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label6" runat="server" Text="Enter your ID"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Width="249px" Height="20px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SOSConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [customer]"></asp:SqlDataSource>
    </p>
<p>

        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="cust_id" DataSourceID="SqlDataSource2" Height="216px" Width="716px">
            <Columns>
                <asp:BoundField DataField="cust_id" HeaderText="cust_id" ReadOnly="True" SortExpression="cust_id" />
                <asp:BoundField DataField="cust_name" HeaderText="cust_name" SortExpression="cust_name" />
                <asp:BoundField DataField="cust_tell" HeaderText="cust_tell" SortExpression="cust_tell" />
                <asp:BoundField DataField="cust_Email" HeaderText="cust_Email" SortExpression="cust_Email" />
                <asp:BoundField DataField="cust_services" HeaderText="cust_services" SortExpression="cust_services" />
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>



</asp:Content>



