<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserManage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Create Role
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create Role" />
            <br />
            <br />
      View Users and Roles<br />
            <br />
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server">
                <Columns>
                    <asp:BoundField HeaderText="UserName" DataField="UserName" />
                    <asp:BoundField HeaderText="Role" DataField="RoleName" />
                </Columns>
            </asp:GridView>
       <br />
            <br />
            <br />
            UserName: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Role: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Add User to Role" OnClick="Button2_Click" />
</asp:Content>

