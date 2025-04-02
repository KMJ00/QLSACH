<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.Master" AutoEventWireup="true" CodeBehind="QTHD.aspx.cs" Inherits="QLSACH.QTHD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <th colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản Lý Hợp Đồng</th>          
        </tr>
        <tr>
            <td>Mã Hóa Đơn</td>
            <td>
                <asp:TextBox ID="txtmhd" runat="server"></asp:TextBox>
            </td>
            <td>Thành Tiền</td>
            <td>
                <asp:TextBox ID="txttt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên Hóa Đơn</td>
            <td>
                <asp:TextBox ID="txthd" runat="server"></asp:TextBox>
            </td>
            <td>Ngày lập</td>
            <td>
                <asp:TextBox ID="txtngay" runat="server" TextMode="Date"></asp:TextBox>
            </td>     
        </tr>
         <tr>
             <td>Sách</td>
             <td>
                 <asp:DropDownList ID="Dropsach" runat="server" Width="166px">
                 </asp:DropDownList>
             </td>
             <td>Khách</td>
             <td>
                 <asp:DropDownList ID="Dropkhach" runat="server" Width="166px">
                 </asp:DropDownList>
             </td>     
         </tr>
         <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Thêm " Width="100px" OnClick="Button1_Click1"/>
             </td> <td>
                 <asp:Button ID="Button2" runat="server" Text="Sửa " Width="100px" OnClick="Sua"/>
             </td> <td>
                 <asp:Button ID="Button3" runat="server" Text="Xóa" Width="100px" OnClick="Button3_Click"/>
             </td> <td>
                 <asp:Button ID="Button4" runat="server" Text="Load" Width="100px"/>
             </td>          
        </tr>
         <tr>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Back" Width="100px" OnClick="Button5_Click"/>
             </td> <td>
                 <asp:Button ID="Button6" runat="server" Text="view" Width="100px" OnClick="Button6_Click1"/>
             </td>         
        </tr>
         <tr>
            <td colspan="4"> <div style="overflow-y: scroll; height: 100px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="804px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="mhd" HeaderText="Mã HD" />
                        <asp:BoundField DataField="tenhd" HeaderText="Tên HD" />
                        <asp:BoundField DataField="masach" HeaderText="Mã Sách" />
                        <asp:BoundField DataField="matv" HeaderText="Mã Thành Viên" />
                        <asp:BoundField DataField="tt" HeaderText="Thành Tiền" />
                        <asp:BoundField DataField="ngaylap" HeaderText="Ngày Lập" />
                        <asp:CommandField SelectText="Xem" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView></div>
             </td>          
         </tr>
    </table>
</asp:Content>
