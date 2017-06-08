<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <hr />

    <div>
        <table>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Ridge" Width="309px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Upload_Button" runat="server" OnClick="Upload_Click" Text="Save" />
                    <asp:TextBox ID="Post_Text" runat="server" placeholder="Comment about your picture..." BorderStyle="Ridge" Columns="28"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>

    <hr />

    <div>
        <asp:Repeater ID="RepeaterImages" runat="server" >
        <ItemTemplate>
            
            
            <div>
                <asp:Image ID="Image" class="my-images" runat="server" ImageUrl='<%# (Container.DataItem as Post).ImageName %>' />
            </div>
            <div>
                <h3 ID="Label1" class="my-images-name" runat="server"> <%# (Container.DataItem as Post).Comment %></h3>
            </div>
    
        </ItemTemplate>
        </asp:Repeater>


    </div>

</asp:Content>
