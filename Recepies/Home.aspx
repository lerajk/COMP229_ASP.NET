<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p> In your Home Page, you can view all the recepies available by clicking the button.</p> 

    <asp:Button ID="Button1" Text="View Recepies" runat="server" OnClick="FetchResults" /> <br/> <br/> 


    <asp:Repeater ID="Repeater" runat="server">
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

   <br/> <asp:Label ID="Label2" runat ="server" Text ="Visitor"></asp:Label>

</asp:Content>

