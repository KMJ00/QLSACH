<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.Master" AutoEventWireup="true" CodeBehind="QTtk.aspx.cs" Inherits="QLSACH.QTtk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <th colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản Lý Tài Khoản</th>
        </tr>
        <tr>
            <td>Mã Tài Khoản</td>
            <td>
                <asp:TextBox ID="txtmtk" runat="server"></asp:TextBox>
            </td>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên Người Dùng</td>
            <td>
                <asp:TextBox ID="txtt" runat="server"></asp:TextBox>
            </td>
            <td>Pass</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phân Quyền</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="pc" Text="Admin" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="pc" Text="User" />
            </td>
        </tr>
         <tr>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Thêm " Width="100px" OnClick="Button1_Click1"/>
             </td>
             <td>
                 <asp:Button ID="Button2" runat="server" Text="Sửa " Width="100px" OnClick="Sua"/>
             </td>
             <td>
                 <asp:Button ID="Button3" runat="server" Text="Xóa" Width="100px" OnClick="Button3_Click"/>
             </td>
             <td>
                 <asp:Button ID="Button4" runat="server" Text="Load" Width="100px"/>
             </td>
         </tr>
        <tr>
            <td colspan="2"> <div style="overflow-y: scroll; height: 100px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="184px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="matv" HeaderText="Mã Tài Khoản" />
                        <asp:BoundField DataField="tentv" HeaderText="Tên Người Dùng" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="pass" HeaderText="Pass" />
                        <asp:CommandField SelectText="Xem" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView></div>
            </td>
             <td colspan="2"> <div style="overflow-y: scroll; height: 100px;">
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="236px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
         <Columns>
             <asp:BoundField DataField="ten" HeaderText="Tên Người Dùng" />
             <asp:BoundField DataField="Name" HeaderText="Name" />
             <asp:BoundField DataField="pass" HeaderText="Pass" />
             <asp:CommandField SelectText="Xem" ShowSelectButton="True" />
         </Columns>
     </asp:GridView></div>
 </td>
        </tr>
    </table>

</asp:Content>
