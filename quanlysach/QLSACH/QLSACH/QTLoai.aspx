<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.Master" AutoEventWireup="true" CodeBehind="QTLoai.aspx.cs" Inherits="QLSACH.QTLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>


        
        table{
            whidth:200px;
            
        }
        
    </style>
    <table align="center">
        <tr>
            <td colspan="4" align="center" >Quản lý Thể Loại</td>
        </tr>
        <tr>
            <td colspan="2" >&nbsp;Mã Loại</td>
            <td colspan="2" align="right">
                <asp:TextBox ID="txtma" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;Thể Loại</td>
            <td colspan="2" align="right">
                <asp:TextBox ID="txtten" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4"  >
                 <div style="overflow-y: scroll; height: 100px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="412px">
                    <Columns>
                        <asp:BoundField DataField="maloai" HeaderText="Mã Loại" />
                        <asp:BoundField DataField="tenloai" HeaderText="Thể Loại" />
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
        <tr>
            <td >
                <asp:Button ID="Button1" runat="server" Text="Thêm" width="100px" OnClick="Button1_Click" />
            </td>
            <td >
                <asp:Button ID="Button2" runat="server" Text="Sửa" width="100px" OnClick="Button2_Click"/>
            </td>
            <td >
                <asp:Button ID="Button4" runat="server" Text="Xóa" width="100px" OnClick="Button4_Click" />
            </td>
            <td >
                <asp:Button ID="Button3" runat="server" Text="Load" width="100px" OnClick="Button3_Click"/>
            </td>
        </tr>
    </table>

</asp:Content>
