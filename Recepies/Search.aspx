<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Default4" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p> Search a recepie by entering the name of the person who submitted it.</p>


    <asp:Label ID="Label1" runat ="server" Text ="Enter Name of Recepie or Submitted by: *(Required)"></asp:Label><br/> <br/> 
    <asp:TextBox ID="TextBox1"  runat="server" ></asp:TextBox><br/>  
    <asp:RequiredFieldValidator ID="rqdName" runat="server" ControlToValidate="TextBox1" Display="Static" ErrorMessage="Please Enter a value" ForeColor="#FF3300" EnableClientScript="true" SetFocusOnError="True" Text="Please Enter a value."></asp:RequiredFieldValidator> <br /> 
    
    
    <asp:CheckBox ID="Checkbox1"  runat="server" Text ="Tick Mark for Private Recepies." Checked="False" ></asp:CheckBox><br/> <br/> 

    <asp:Button ID="Button1" Text="Search Recepies" runat="server"  OnClick="SearchResults" /> <br/> <br/> 

    <asp:Label ID="Label2"  runat ="server" AutoPostBack="true"></asp:Label><br/> <br/> 

       <asp:Repeater ID="RepeaterTwo" runat="server">
               <HeaderTemplate>
                   <table>
                       <tr>
                         
                           <th>Recepie Name </th>
                           <th>Submitted by</th>
                           <th>Category </th>
                           <th>Cooking Time </th>
                           <th>Portions </th>
                           <th>Type</th>
                           <th>Description</th>

                     
                        </tr>             
               </HeaderTemplate>
               <ItemTemplate>
                   <tr>
                       <td><%# Eval("Recepie_Name") %></td>
                       <td><%# Eval("Submitted_By") %></td>
                       <td><%# Eval("Category") %></td>
                       <td><%# Eval("Cooking_Time") %></td>
                       <td><%# Eval("Portions") %></td>
                       <td><%# Eval("Type") %></td>
                       <td><%# Eval("Description") %></td>
                     
                   </tr>
               </ItemTemplate> 
            <FooterTemplate>
                </table>   
            </FooterTemplate>
    </asp:Repeater>

</asp:Content>

