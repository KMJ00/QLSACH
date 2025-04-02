<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.Master" AutoEventWireup="true" CodeBehind="QTSach.aspx.cs" Inherits="QLSACH.QTSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .nut{
            margin:0 30px;
            width:100px;
        }
        .auto-style1 {
            height: 32px;
        }
    .auto-style2 {
        height: 25px;
    }
    </style>
    <table style="width:113%;" class="giua">
        <tr>
            <th colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản lý sách </th>
        </tr>
        <tr>
            <td style="height: 29px">Mã sách</td>
            <td style="height: 29px">
                <asp:TextBox ID="txtMa" runat="server"></asp:TextBox>
            </td>
            <td style="height: 29px">
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 38px">Tên sách</td>
            <td style="height: 38px">
                <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image2" runat="server" Height="190px" Width="190px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Tác giả</td>
            <td class="auto-style2">
                 <asp:DropDownList ID="Droptg" runat="server" Width="166px">
                 </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Giá</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Số lượng</td>
            <td>
                <asp:TextBox ID="txtSl" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <td style="height: 28px">Mô tả</td>
             <td style="height: 28px">
                 <asp:TextBox ID="txtMt" runat="server" Height="78px" TextMode="MultiLine" Width="271px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td>Tên ảnh</td>
             <td>
                <asp:TextBox ID="txtAnh" runat="server"></asp:TextBox>
             </td>
             <td>
                 <asp:Button ID="btAddImg" runat="server" OnClick="btAddImg_Click" Text="Thêm Ảnh" Width="97px" />
             </td>
         </tr>
         <tr>
             <td>Mã loại</td>
             <td>
                 <asp:DropDownList ID="Droploai" runat="server" Width="164px">
                 </asp:DropDownList>
             </td>
             <td>&nbsp;</td>
         </tr>
        <tr>
            <td>Mã NXB</td>
            <td>
                <asp:DropDownList ID="Dropnxb" runat="server" Width="167px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
             <th colspan="3">
                 <asp:Button ID="Button1" runat="server" Text="Thêm" class="nut" OnClick="Button1_Click"/>
                 <asp:Button ID="Button2" runat="server" Text="Sửa" class="nut" OnClick="Button2_Click"/>
                 <asp:Button ID="Button3" runat="server" Text="Xóa" class="nut" OnClick="Button3_Click"/>
                 <asp:Button ID="Button4" runat="server" Text="Load" class="nut"/>
             </th>
         </tr>
         <tr>
             <td colspan="3" >
                 <div style="overflow-y: scroll; height: 340px;">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"  Width="894px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                     <Columns >
                         <asp:BoundField DataField="masach" HeaderText="Mã Sách" />
                         <asp:BoundField DataField="tensach" HeaderText="Tên Sách" />
                         <asp:BoundField DataField="maloai" HeaderText="Thể Loại" />
                         <asp:BoundField DataField="manxb" HeaderText="NXB" />
                         <asp:BoundField DataField="gia" HeaderText="Giá " />
                         <asp:BoundField DataField="sl" HeaderText="Số Lượng" />
                         <asp:BoundField DataField="anh" HeaderText="Ảnh" />
                         <asp:BoundField DataField="mota" HeaderText="Mô Tả" />
                         <asp:BoundField DataField="matacgia" HeaderText="Tác Giả" />
                         <asp:CommandField SelectText="Xem" ShowSelectButton="True" />
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
                </div>
             </td>
         </tr>
   </table>

</asp:Content>
