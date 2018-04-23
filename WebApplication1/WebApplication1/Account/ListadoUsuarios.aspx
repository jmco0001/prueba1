<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoUsuarios.aspx.cs" Inherits="WebApplication1.Account.ListadoUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IDUSUARIO" HeaderText="IDUSUARIO" 
                SortExpression="IDUSUARIO" />
            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" 
                SortExpression="USUARIO" />
            <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" 
                SortExpression="PASSWORD" />
            <asp:BoundField DataField="LATCH" HeaderText="LATCH" SortExpression="LATCH" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ApplicationId,LoweredUserName" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" 
                ReadOnly="True" SortExpression="ApplicationId" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" 
                SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="LoweredUserName" HeaderText="LoweredUserName" 
                ReadOnly="True" SortExpression="LoweredUserName" />
            <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" 
                SortExpression="MobileAlias" />
            <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" 
                SortExpression="IsAnonymous" />
            <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" 
                SortExpression="LastActivityDate" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData_ASPNET_USERS" 
        TypeName="WebApplication1.DataSet1TableAdapters.aspnet_UsersTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter DbType="Guid" Name="Original_ApplicationId" />
            <asp:Parameter Name="Original_LoweredUserName" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Guid" Name="ApplicationId" />
            <asp:Parameter DbType="Guid" Name="UserId" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="LoweredUserName" Type="String" />
            <asp:Parameter Name="MobileAlias" Type="String" />
            <asp:Parameter Name="IsAnonymous" Type="Boolean" />
            <asp:Parameter Name="LastActivityDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Guid" Name="UserId" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="MobileAlias" Type="String" />
            <asp:Parameter Name="IsAnonymous" Type="Boolean" />
            <asp:Parameter Name="LastActivityDate" Type="DateTime" />
            <asp:Parameter DbType="Guid" Name="Original_ApplicationId" />
            <asp:Parameter Name="Original_LoweredUserName" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
    SelectMethod="GetData_TB_USUARIOS" 
    TypeName="WebApplication1.DataSet1TableAdapters.TB_USUARIOSTableAdapter">
    <InsertParameters>
        <asp:Parameter Name="IDUSUARIO" Type="Int32" />
        <asp:Parameter Name="USUARIO" Type="String" />
        <asp:Parameter Name="PASSWORD" Type="String" />
        <asp:Parameter Name="LATCH" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
    </InsertParameters>
</asp:ObjectDataSource>
</asp:Content>
