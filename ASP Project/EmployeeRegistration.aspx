<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="false" CodeFile="EmployeeRegistration.aspx.vb" Inherits="EmployeeRegistration" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width: 80%">
        <tr>
            <td class="auto-style15" style="width: 170px">
                <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
            </td>
            <td style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtID" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="width: 170px">
                <asp:Label ID="Label2" runat="server" Text="Employee Name"></asp:Label>
            </td>
            <td style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtName" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="width: 170px">Employee Number</td>
            <td class="auto-style2" style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtNumber" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="width: 170px">Employee Email</td>
            <td style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtEmail" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="width: 170px">Gender</td>
            <td style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtGender" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="width: 170px">qualification</td>
            <td style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtQualification" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="width: 170px">Salary</td>
            <td class="auto-style16" style="width: 758px" colspan="5">
                <asp:TextBox ID="TxtSalary" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="width: 170px">&nbsp;</td>
            <td class="auto-style2" style="width: 165px">
                <asp:Button ID="Button1" runat="server" Text="Save" Width="124px" style="height: 29px" />
            </td>
            <td class="auto-style2" style="width: 113px">
                <asp:Button ID="Button2" runat="server" Text="Update" Width="124px" />
            </td>
            <td class="auto-style2" style="width: 96px">
                <asp:Button ID="Button3" runat="server" Text="Delete" Width="124px" />
            </td>
            <td class="auto-style2" style="width: 128px">
                <asp:Button ID="Button4" runat="server" Text="Search" Width="124px" />
            </td>
            <td class="auto-style2" style="width: 758px">
                <asp:TextBox ID="serchbox" runat="server" Width="297px"></asp:TextBox>
            </td>
        </tr>
    </table>

    <p>



        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SOSConnectionString %>" SelectCommand="SELECT * FROM [emp_registration]"></asp:SqlDataSource>



    </p>
    <p>



        &nbsp;</p>
    <p>



        &nbsp;</p>
    <p>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" Width="668px">
            <Columns>
                <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
                <asp:BoundField DataField="emp_name" HeaderText="emp_name" SortExpression="emp_name" />
                <asp:BoundField DataField="emp_tell" HeaderText="emp_tell" SortExpression="emp_tell" />
                <asp:BoundField DataField="emp_Email" HeaderText="emp_Email" SortExpression="emp_Email" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
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
</asp:Content>




