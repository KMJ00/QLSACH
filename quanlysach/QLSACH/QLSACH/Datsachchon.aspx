<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="Datsachchon.aspx.cs" Inherits="QLSACH.Datsachchon" %>
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
            <asp:DropDownList ID="Dropsach" runat="server" Width="172px" AutoPostBack="True" >
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
        </td>
        
    </tr>
     <tr>
         <td align="center">
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Đặt " Width="85px" />
         </td>
         <td align="center" style="width: 988px">
             <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Hủy" Width="93px" />
         </td>
     </tr>
    
</table>
</asp:Content>
