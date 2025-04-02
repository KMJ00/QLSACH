<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="chitiet.aspx.cs" Inherits="QLSACH.chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .data-list {
            width: 100%; 
            border: solid 2px white; 
        }

        .data-item {
            display: flex;
            flex-direction: column; 
            align-items: center;
            padding: 20px; 
        }

        .image-container {
            text-align: center; 
        }

        .image-container img {
            max-width: 100%; 
            height: auto;
        }

        .info {
            width: 100%; 
            margin-top: 20px; 
        }
        
        .info label {
            display: block; 
            margin-bottom: 5px; 
        }

        .description {
            width: 100%; 
            margin-top: 10px;
        }

        
        .button {
            background-color: #87cbec; 
            color: white; 
            border: 2px solid #5d853e; 
            padding: 10px 20px; 
            border-radius: 5px; 
            cursor: pointer; 
            transition: background-color 0.3s, border-color 0.3s; 
        }

        .button:hover {
            background-color: white; 
            color: #5d853e; 
            border-color: #5d853e; 
        }
    </style>

    <asp:DataList ID="DataList2" runat="server" CssClass="data-list" >
        <ItemTemplate>
            <div class="data-item">
                <div class="image-container">
                    <asp:Image ID="Image1" runat="server" Height="230px" Width="300px" ImageUrl='<%# "~/img/" + Eval("Anh") %>' />
                </div>
                <div class="info">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("tensach") %>' ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                    <label>Giá: <asp:Label ID="Label3" runat="server" Text='<%# Eval("gia") %>' ForeColor="#5d853e"></asp:Label></label>
                    <label>Thể Loại: <asp:Label ID="Label5" runat="server" Text='<%# Eval("tenloai") %>' ForeColor="#5d853e"></asp:Label></label>
                    <label>Số Lượng: <asp:Label ID="L9" runat="server" Text='<%# Eval("sl") %>' ForeColor="#5d853e"></asp:Label></label>
                    <label>Tác Giả: <asp:Label ID="Label7" runat="server" Text='<%# Eval("tentg") %>' ForeColor="#5d853e"></asp:Label></label>
                    <label>NXB: <asp:Label ID="Label9" runat="server" Text='<%# Eval("nxb") %>' ForeColor="#5d853e"></asp:Label></label>
                </div>
                <div class="description">
                    <asp:TextBox ID="TextBox1" runat="server" Height="90px" ReadOnly="True" Text='<%# Eval("mota") %>' TextMode="MultiLine" Width="100%" BackColor="#fdf4cb" ForeColor="black"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="Đặt Ngay" OnClick="Dat" />
                <asp:Button ID="Button2" runat="server" CssClass="button" Text="Thêm Vào Giỏ Hàng" OnClick="Them" />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>