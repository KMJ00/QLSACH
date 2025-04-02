<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="QLSACH.Lienhe" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên Hệ</title>
    <style>
        body {
            background-color: #808080;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: #333;
        }
        header {
            background-image: url(img/bggo.jpg);
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            padding: 10px; 
            transition: transform 0.3s, box-shadow 0.3s; 
            text-shadow: 0 0 5px #fff, 0 0 10px #fff;
        }
        nav a:hover {
            transform: translateY(-5px); 
            box-shadow: 0 0 20px 5px #007BFF; 
            text-shadow: 0 0 15px #fff, 0 0 30px #fff;
        }
        .hero {
            padding: 100px 20px;
            text-align: center;
            color: #fff;
            position: relative;
        }
        .hero video {
            width: 100%; 
            max-height: 400px; 
            object-fit: cover; 
        }
        .hero h1 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 2.5em;
            z-index: 1; 
        }
        .services {
            padding: 40px 20px;
            text-align: center;
        }
        .services h2 {
            margin-bottom: 20px;
            font-size: 2.5em; 
            color: #fff; 
            text-shadow: 0 0 15px #fff; 
        }
        .services-container {
            display: flex;
            flex-wrap: wrap; 
            justify-content: center; 
        }
        .service {
            display: flex;
            flex-direction: column; 
            align-items: center; 
            width: 30%; 
            margin: 1%;
            position: relative;
            overflow: hidden; 
            border-radius: 5px;
        }
        .service img {
            width: 100%; 
            height: 250px; 
            transition: transform 0.3s; 
        }
        .service:hover img {
            transform: scale(1.1); 
        }
        .service p {
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            color: #fff; 
            font-size: 1.5em;
            text-shadow: 0 0 5px #000; 
        }
        .team {
            padding: 40px 20px;
            text-align: center;
        }
        .team h2 {
            margin-bottom: 20px;
            font-size: 2.5em; 
            color: #fff; 
            text-shadow: 0 0 15px #fff; 
        }
        .team-member {
            display: inline-block;
            width: 30%;
            margin: 1%;
            padding: 20px;
            background-color: #000; 
            color: #fff; 
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s; 
        }
        .team-member p {
            margin-top: 10px; 
            color: #fff; 
            text-shadow: 0 0 5px #fff, 0 0 10px #fff; 
        }
        .team-member:hover {
            transform: translateY(-5px); 
            box-shadow: 10px 10px 25px 5px rgba(0, 123, 255, 0.7); 
        }
        .team-member img {
            width: 350px; 
            height: 350px; 
            border-radius: 50%;
            margin-bottom: 10px;
        }
        footer {
            color: #b5f9ff;
            border: none;
            display: flex;
            justify-content: space-between;
            align-items: flex-start; 
            padding: 10px 20px;
            background-image: url(img/bggo.jpg); 
        }
        .footer-left, .footer-center, .footer-right {
            width: 30%;
            border: none;
        }
        .footer-left p, .footer-center h4, .footer-right h4 {
            margin: 5px 0;
            border: none;
        }
        .footer-right a {
            border: none;
            text-decoration: none;
            color: #b5f9ff;
            transition: color 0.3s;
        }
        .footer-right a:hover {
            color: #0056b3; 
        }
        @media (max-width: 768px) {
            .service, .team-member {
                width: 100%;
                margin: 10px 0;
            }
        }
        .logo img {
            width: 50px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="logo">
                <img src="../pic/logostore.jpg" alt="Logo">
            </div>
            <nav>
                <a href="Homereal.aspx">TRANG CHỦ</a>
                <a href="Home.aspx">SẢN PHẨM</a>
                <a href="Lienhe.aspx">GIỚI THIỆU</a>
                <a href="Loin.aspx">TÀI KHOẢN</a>
            </nav>
        </header>
        <section class="hero">
            <video autoplay muted loop>
                <source src="../img/video.mp4" type="video/mp4">
                Trình duyệt của bạn không hỗ trợ video.
            </video>
        </section>
        <section class="services">
            <h2>Our Services</h2>
            <div class="services-container">
                <div class="service" >
                    <img src="../img/qq.jpg" alt="Quảng Cáo"> <!-- Đường dẫn ảnh -->
                    <p style="color:white; background-color:black; opacity:0.7; border-radius:30%;">Quảng Cáo</p>
                </div>
                <div class="service">
                    <img src="../img/pp.jpg" alt="Phân Phối"> <!-- Đường dẫn ảnh -->
                    <p style="color:white; background-color:black; opacity:0.7; border-radius:30%;"> Phân Phối</p>
                </div>
                <div class="service">
                    <img src="../img/bsoan.jpg" alt="Biên Soạn"> <!-- Đường dẫn ảnh -->
                    <p style="color:white; background-color:black; opacity:0.7; border-radius:30%;">Biên Soạn</p>
                </div>
                <div class="service">
                    <img src="../img/ts.jpg" alt="Thuê Sách"> <!-- Đường dẫn ảnh -->
                    <p style="color:white; background-color:black; opacity:0.7; border-radius:30%;">Thuê Sách</p>
                </div>
                <div class="service">
                    <img src="../img/bs.jpg" alt="Bán Sách"> <!-- Đường dẫn ảnh -->
                    <p style="color:white; background-color:black; opacity:0.7; border-radius:30%;">Bán Sách</p>
                </div>
            </div>
        </section>
        <section class="team">
            <h2>Meet the Team</h2>
            <div class="team-member">
                <img src="../img/bezos.jpg" alt="Johnny Hughes">
                <p>Jeff Bezos - Founder</p>
            </div>
            <div class="team-member">
                <img src="../img/mark.jpg" alt="Darren Lengyel">
                <p>Mark Zuckerberg - SVP of Delivery Operations</p>
            </div>
            <div class="team-member">
                <img src="../img/jack-ma.jpg" alt="Kat Hughes">
                <p>Jack Ma Yun - SVP of Strategic Growth</p>
            </div>
        </section>
        <footer>
            <div class="footer-left">
                <img src="img/logostore.jpg" alt="Logo" width="50">
                <p>Địa chỉ: Đường số 1, TP.HCM</p>
                <p>SDT: 0385 - 496 - 282</p>
                <p>Email: Kimnb@mindx.net.vn</p>
            </div>
            <div class="footer-center">
                <h4>Danh mục</h4>
                <ul>
                    <li>Thể Loại</li>
                    <li>Tác Giả</li>
                    <li>Nhà Xuất Bản</li>
                </ul>
            </div>
            <div class="footer-right">
                <h4>Liên kết</h4>
                <ul>
                    <li><a href="Home.aspx">Trang chủ</a></li>
                    <li><a href="#">Liên hệ</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="Datsach.aspx">Đặt sách</a></li>
                </ul>
                <div id="map" style="width: 100%; height: 145px; border: none;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3716.961238829658!2d105.39337027530871!3d21.312547880408697!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31348de7e680a8df%3A0xceafbd228b67326c!2zVmluY29tIFBsYXphIFZp4buHdCBUcsOs!5e0!3m2!1svi!2s!4v1727893527203!5m2!1svi!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>