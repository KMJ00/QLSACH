<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="QLSACH.Search1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
    .data-list {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between; 
    }

    .data-item {
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 25px; 
        transition: transform 0.3s; 
        width: 200px; 
        height: 250px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px; 
        text-align: center; 
        position: relative;
    }

    .custom-link {
        text-decoration: none;
        transition: color 0.3s, text-shadow 0.3s; 
    }

    .data-item:hover {
        transform: scale(1.05); 
    }

    .data-item:hover .image-container img {
        transform: scale(0.8); 
        transition: transform 0.3s; 
    }

    .data-item:hover .custom-link {
        color: #ff4500; 
        text-shadow: 0 0 10px rgba(255, 69, 0, 0.7); 
    }

    .image-container {
        margin-bottom: 10px;
        overflow: hidden; 
    }

    .image-container img {
        max-width: 100%;
        height: auto; 
        transition: transform 0.3s; 
    }
</style>

<asp:DataList ID="DataList2" runat="server" RepeatColumns="4" CssClass="data-list">
    <ItemTemplate>
        <div class="data-item">
            <div class="image-container">
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# "~/img/" + Eval("Anh") %>' Width="150px" />
            </div>
            <div class="info-container">
                <asp:HyperLink ID="HyperLink2" Class="custom-link" runat="server" NavigateUrl='<%# "chitiet.aspx?masach=" + Eval("masach") %>' Text='<%# Eval("Tensach") %>'></asp:HyperLink><br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("gia") + " VND" %>' ForeColor="Red"></asp:Label>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
