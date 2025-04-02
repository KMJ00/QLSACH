<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="QLSACH.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <style type="text/css">
        body {
            background: #3b5269;
            overflow: hidden;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        form {
            background-color: #fff2d7;
            border-radius: 8px;
            box-shadow: 10px 10px 20px rgba(255, 255, 255, 0.6), 0 0 80px rgba(128, 0, 128, 0.4);
            padding: 20px;
            width: 300px;
        }
        h2 {
            text-align: center;
            color: #5d853e;
        }
        .label {
            margin-bottom: 5px;
            display: block;
            font-weight: bold;
            transition: color 0.3s, transform 0.3s; 
        }
        .label:hover {
            color: #3a78b2; 
            transform: translateY(-2px);
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            transition: box-shadow 0.3s, transform 0.3s; 
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #4a90e2;
            box-shadow: 0 0 5px rgba(74, 144, 226, 0.5);
        }
        input[type="text"]:hover,
        input[type="password"]:hover {
            box-shadow: 0 0 10px rgba(74, 144, 226, 0.8); 
            transform: translateY(-2px); 
        }
        .register-button {
            width: 100%;
            padding: 10px;
            background-color: #5d853e; 
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s, transform 0.3s; 
        }
        .register-button:hover {
            background-color: #4a90e2; 
            box-shadow: 0 0 10px rgba(74, 144, 226, 0.8), 0 0 20px rgba(74, 144, 226, 0.6); 
            transform: translateY(-2px); 
        }
        .register-link {
            color: #4a90e2; 
            text-decoration: none; 
            transition: color 0.3s, transform 0.3s; 
        }
        .register-link:hover {
            color: #3a78b2; 
            transform: translateY(-2px); 
        }
    </style>
    <script>
        function showPassword() {
            var passwordField = document.getElementById('<%= txtpass.ClientID %>');
            passwordField.type = "text";
        }

        function hidePassword() {
            var passwordField = document.getElementById('<%= txtpass.ClientID %>');
            passwordField.type = "password";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h2>ĐĂNG KÝ</h2>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Tên Người Dùng" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Mật Khẩu" CssClass="label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <ion-icon name="eye-off-outline" class="icon" 
                        onmousedown="showPassword()" 
                        onmouseup="hidePassword()" 
                        onmouseleave="hidePassword()"></ion-icon>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Đăng Ký" OnClick="Button1_Click" CssClass="register-button" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label4" runat="server" Text="Quay lại "></asp:Label>
                    <a href="Loin.aspx" class="register-link">Đăng Nhập</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>