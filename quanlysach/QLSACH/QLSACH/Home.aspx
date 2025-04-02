<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="QLSACH.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        h3 {
            color: #00697f;
            text-align: center;
        }
        .data-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between; 
        }
        .data-item {
            margin: 20px; 
            border: 1px solid #ccc; 
            padding: 15px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1); 
            width: 180px; 
            text-align: center; 
            transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s; 
        }
        .data-item:hover {
            box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.5); 
            border-color: rgba(0, 105, 127, 0.7); 
        }
        .custom-link {
            text-decoration: none;
            font-weight: bold;
            color: red; 
            transition: color 0.3s; 
        }
        .custom-link:hover {
            color: darkorange; 
        }
        .image-container {
            overflow: hidden;
        }
        .image-container img {
            max-width: 100%; 
            height: auto; 
            object-fit: cover; 
            transition: transform 0.3s; 
        }
        .data-item:hover .image-container img {
            transform: scale(0.95); 
        }
    </style>
    
    <div>
        <h3>Văn Học</h3>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CssClass="data-list">
            <ItemTemplate>
                <div class="data-item">
                    <div class="image-container">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/" + Eval("Anh") %>' Height="150px" />
                    </div>
                    <asp:HyperLink ID="HyperLink2" runat="server" class="custom-link" NavigateUrl='<%# "chitiet.aspx?masach=" + Eval("masach") %>' Text='<%# Eval("Tensach") %>'></asp:HyperLink>
                    <div>Giá: <asp:Label ID="Label2" runat="server" Text='<%# Eval("gia") %>'></asp:Label></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div>
        <h3>Truyện</h3>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" CssClass="data-list">
            <ItemTemplate>
                <div class="data-item">
                    <div class="image-container">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/" + Eval("Anh") %>' Height="150px" />
                    </div>
                    <asp:HyperLink ID="HyperLink2" runat="server" class="custom-link" NavigateUrl='<%# "chitiet.aspx?masach=" + Eval("masach") %>' Text='<%# Eval("Tensach") %>'></asp:HyperLink>
                    <div>Giá: <asp:Label ID="Label2" runat="server" Text='<%# Eval("gia") %>'></asp:Label></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    
    <div>
        <h3>Khoa Học</h3>
        <asp:DataList ID="DataList3" runat="server" RepeatColumns="4" CssClass="data-list">
            <ItemTemplate>
                <div class="data-item">
                    <div class="image-container">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/img/" + Eval("Anh") %>' Height="150px" />
                    </div>
                    <asp:HyperLink ID="HyperLink2" runat="server" class="custom-link" NavigateUrl='<%# "chitiet.aspx?masach=" + Eval("masach") %>' Text='<%# Eval("Tensach") %>'></asp:HyperLink>
                    <div>Giá: <asp:Label ID="Label2" runat="server" Text='<%# Eval("gia") %>'></asp:Label></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>