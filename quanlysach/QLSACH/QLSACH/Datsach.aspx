<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="Datsach.aspx.cs" Inherits="QLSACH.Datsach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:65%;">
        <tr>
            <th colspan="2">Đặt Sách</th>
        </tr>
        
        <tr>
            <td style="height: 29px">Ghi Chú</td>
            <td style="height: 29px; width: 988px;">
                <asp:TextBox ID="txtthd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Sách</td>
            <td style="width: 988px">
                <asp:DropDownList ID="Dropsach" runat="server" Width="172px" AutoPostBack="True" OnSelectedIndexChanged="Dropsach_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
             <td style="height: 29px">Thành Tiền</td>
             <td style="height: 29px; width: 988px;">
                 <asp:TextBox ID="txttt" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>Đặt Lịch </td>
             <td style="width: 988px">
                 <asp:TextBox ID="txtngay" runat="server" TextMode="Date"></asp:TextBox>
                 <asp:Label ID="Label1" runat="server" Text="(Bạn có thể đặt trươc thời gian nhận sách tại đây )"></asp:Label>
             </td>
         </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;</td>
            
        </tr>
         <tr>
             <td align="center">
                 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Đặt Sách" Width="141px" />
             </td>
             <td align="center" style="width: 988px">
                 <asp:Button ID="Button2" runat="server" Text="Hủy" Width="112px" />
             </td>
         </tr>
        
    </table>

</asp:Content>
