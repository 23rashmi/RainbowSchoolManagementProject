<%@ Page Title="" Language="C#" MasterPageFile="~/RainbowSchool.Master" AutoEventWireup="true" CodeBehind="ManageSubjects.aspx.cs" Inherits="RainbowSchoolManagement.ManageSubjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><b><u>Manage Subjects</u></b></h1>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="TeacherId" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherId] = @original_TeacherId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))" InsertCommand="INSERT INTO [Teachers] ([TeacherId], [FirstName], [LastName], [Subject]) VALUES (@TeacherId, @FirstName, @LastName, @Subject)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [FirstName] = @FirstName, [LastName] = @LastName, [Subject] = @Subject WHERE [TeacherId] = @original_TeacherId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TeacherId" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Subject" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TeacherId" Type="Int32" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="original_TeacherId" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Subject" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Classes] WHERE [ClassId] = @original_ClassId AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL))" InsertCommand="INSERT INTO [Classes] ([ClassId], [ClassName], [ClassRoom]) VALUES (@ClassId, @ClassName, @ClassRoom)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName, [ClassRoom] = @ClassRoom WHERE [ClassId] = @original_ClassId AND (([ClassName] = @original_ClassName) OR ([ClassName] IS NULL AND @original_ClassName IS NULL)) AND (([ClassRoom] = @original_ClassRoom) OR ([ClassRoom] IS NULL AND @original_ClassRoom IS NULL))">
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
</asp:Content>
