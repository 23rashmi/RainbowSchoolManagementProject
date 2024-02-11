<%@ Page Title="" Language="C#" MasterPageFile="~/RainbowSchool.Master" AutoEventWireup="true" CodeBehind="ManageStudents.aspx.cs" Inherits="RainbowSchoolManagement.ManageStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><b><u>Manage Students</u></b></h1>
<h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="StudentId" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="351px" Width="643px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentId] = @original_StudentId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL))" InsertCommand="INSERT INTO [Students] ([StudentId], [FirstName], [LastName], [Grade]) VALUES (@StudentId, @FirstName, @LastName, @Grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Grade] = @Grade WHERE [StudentId] = @original_StudentId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Grade] = @original_Grade) OR ([Grade] IS NULL AND @original_Grade IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_StudentId" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Grade" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudentId" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="original_StudentId" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Grade" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</h2>
</asp:Content>
