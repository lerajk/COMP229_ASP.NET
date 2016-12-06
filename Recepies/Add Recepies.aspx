<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add Recepies.aspx.cs" Inherits="Default3" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p> Add recepies by filling up this simple form.</p>
     
      <asp:Label ID="Label1" runat ="server" Text ="Recepie Name:   *(Required)"></asp:Label> <br /> 
      <asp:TextBox ID="txtstate"  runat="server" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="rqdName" runat="server" ControlToValidate="txtstate" Display="Static" ErrorMessage="Please Enter Recepie Name" ForeColor="#FF3300" EnableClientScript="true" SetFocusOnError="True" Text="*Required"></asp:RequiredFieldValidator> <br /> <br/> 

     <asp:Label ID="Label2" runat ="server" Text ="Submitted By:   *(Required) "></asp:Label>  <br />  
     <asp:TextBox ID="TextBox1"  runat="server" ></asp:TextBox> 
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Static" ErrorMessage="Please Enter Submitted by  *(Required)" ForeColor="#FF3300" EnableClientScript="true" SetFocusOnError="True" Text="*Required"></asp:RequiredFieldValidator> <br/> <br/> 

     Category *(required)
     <asp:DropDownList ID="DropDownList1" runat="server">
     <asp:ListItem Enabled="true" Text="Select Category" Value="-1"></asp:ListItem>
     <asp:ListItem Text="Indian" Value="1"></asp:ListItem>
     <asp:ListItem Text="Arab" Value="1"></asp:ListItem>
     <asp:ListItem Text="Continental" Value="1"></asp:ListItem>
     </asp:DropDownList> <br/> <br/> 


    <asp:Label ID="Label3" runat ="server" Text ="Cooking Time"></asp:Label><br /> 
    <asp:TextBox ID="TextBox2"  runat="server" ></asp:TextBox> <br />
    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Static" ErrorMessage="Please Enter Cooking Time" ForeColor="#FF3300" EnableClientScript="true" SetFocusOnError="True" Text="*Required (in integer)"></asp:RequiredFieldValidator> <br/> <br/> --%>


    <asp:Label ID="Label4" runat ="server" Text ="Portions"></asp:Label> <br/> 
    <asp:TextBox ID="TextBox3"  runat="server" ></asp:TextBox> <br/> <br/> 

     Public or Private
     <asp:DropDownList ID="DropDownList2" runat="server">
     <asp:ListItem Enabled="true" Text="Select Type" Value="-1"></asp:ListItem>
     <asp:ListItem Text="Private" Value="1"></asp:ListItem>
     <asp:ListItem Text="Public" Value="1"></asp:ListItem>
     </asp:DropDownList> 
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" Display="Static" InitialValue="Please select" ForeColor="#FF3300" EnableClientScript="false" SetFocusOnError="True" Text="*Required"></asp:RequiredFieldValidator> <br/> <br/> 


    <asp:Label ID="Label6" runat ="server" Text ="Recepie Description"></asp:Label>  <br />
    <asp:TextBox id="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox> <br /> <br/> 

    <asp:Button ID="Button1" Text="Submit" runat="server" OnClick="AddData" />


   


</asp:Content>

