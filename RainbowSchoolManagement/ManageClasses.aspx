<%@ Page Title="" Language="C#" MasterPageFile="~/RainbowSchool.Master" AutoEventWireup="true" CodeBehind="ManageClasses.aspx.cs" Inherits="RainbowSchoolManagement.ManageClasses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><b><u>Manage classes</u></b></h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ClassId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="ClassRoom" HeaderText="ClassRoom" SortExpression="ClassRoom" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Classes] WHERE [ClassId] = @original_ClassId AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL))" InsertCommand="INSERT INTO [Classes] ([ClassId], [ClassName], [ClassRoom]) VALUES (@ClassId, @ClassName, @ClassRoom)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName, [ClassRoom] = @ClassRoom WHERE [ClassId] = @original_ClassId AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ClassId" Type="Int32" />
            <asp:Parameter Name="original_ClassName" Type="String" />
            <asp:Parameter Name="original_ClassRoom" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ClassId" Type="Int32" />
            <asp:Parameter Name="ClassName" Type="String" />
            <asp:Parameter Name="ClassRoom" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ClassName" Type="String" />
            <asp:Parameter Name="ClassRoom" Type="String" />
            <asp:Parameter Name="original_ClassId" Type="Int32" />
            <asp:Parameter Name="original_ClassName" Type="String" />
            <asp:Parameter Name="original_ClassRoom" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<br />
</asp:Content>
