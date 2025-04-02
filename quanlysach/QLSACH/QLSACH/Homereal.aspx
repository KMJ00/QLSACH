<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homereal.aspx.cs" Inherits="QLSACH.Homereal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="../css/owl.theme.default.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="../java/owl.carousel.min.js"></script>
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">  
    <link rel="stylesheet" type="text/css" href="../css/homepage.css">
    <style type="text/css">
        footer {
    color: #b5f9ff;
    border:none;
    display: flex;
    justify-content: space-between;
    align-items: flex-start; 
    padding: 10px 20px;
    background-image:url(img/bggo.jpg); 
}
.footer-left, .footer-center, .footer-right {
    width: 30%;
    border:none;
}
.footer-left p, .footer-center h4, .footer-right h4 {
    margin: 5px 0;
    border:none;
}
.footer-right a {
    border:none;
    text-decoration: none;
    color: #b5f9ff;
    transition: color 0.3s;
}
.footer-right a:hover {
    color: #0056b3; 
}
    </style>  
</head>
<body id="body">
    <div  id="main">
    <div class="nen">
    <nav class="mn">
        <img src="../pic/logostore.jpg"class="logo" >
         <ul class="cph">
            <li>
              <a href="Homereal.aspx">Trang Chủ</a>
            </li>
            <li >
                <a href="Home.aspx">Sản Phẩm</a> 
                
            </li>
            <li>
                <a href="Lienhe.aspx" style="margin-left:50px;">Giới Thiệu</a>
            </li>
            <li>
    </li></ul>
  </nav>
    
  <header style="margin-top:-55px;">
        <h1>Nổi Bật</h1>
        <div class="slider" style="margin-top:20px"> 
            <div class="owl-carousel owl-theme">
                <div class="item"> <a href="#"></a> <img src="../pic/chuanhan1.jpg" alt="">
                    <input type="button" onclick="view1()" name="quick"  value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Đoàn Hộ Nhẫn</p>
                            
                        </a>
                    </div>
                </div>
                 <div class="item"> <a href="#"></a> <img src="../pic/chuanhan2.jpg" alt="">
                    <input type="button" onclick="view2()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Hai Tòa Tháp</p>
                            

                        </a>
                    </div>
                </div>
                 <div class="item"> <a href="#"></a> <img src="../pic/chuanhan3.jpg" alt="">
                    <input type="button" onclick="view3()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Nhà Vua trở về</p>
                            

                        </a>
                    </div>
                </div>
                 <div class="item"> <a href="#"></a> <img src="../pic/dacnhantam.jpg" alt="">
                    <input type="button" onclick="view4()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Đắc Nhân Tâm</p>
                            

                        </a>
                    </div>
                </div>
                 <div class="item"> <a href="#"></a> <img src="../pic/nhagiakim.jpg" alt="">
                    <input type="button" onclick="view5()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Nhà Giả Kim</p>
                            

                        </a>
                    </div>
                </div>
                 <div class="item"> <a href="#"></a> <img src="../pic/onggiavabienca.jpg" alt="">
                    <input type="button" onclick="view6()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Ông Già Và Biển Cả</p>
                            

                        </a>
                    </div>
                </div>
                 <div class="item"> <a href="#"></a> <img src="../pic/ccld.jpg" alt="">
                    <input type="button" onclick="view7()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Cuộc Lỗ Đen</p>            
                        </a>
                    </div>
                </div>
                <div class="item"> <a href="#"></a> <img src="..\pic\luoc-su-thoi-gian.jpg" alt="">
                    <input type="button" onclick="view8()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">Lược Sử Thời Gian</p>            
                        </a>
                    </div>
                </div>
                <div class="item"> <a href="#"></a> <img src="..\pic\7-bai-hoc-hay-nhat-ve-vat-ly.jpg" alt="">
                    <input type="button" onclick="view9()" name="quick" value="xem thử">
                    <div class="carousel-caption">
                        <a href="#">
                            <p class="tieude">7 Bài học hay nhất về vật lý</p>            
                        </a>
                    </div>
                </div>
                
            </div>
        </div>
    </header>
    <section class="food"><h1>Sách Là Gì</h1>
    <div class="cards">
        <div class="card" data-aos="fade-left"data-aos-delay="200" data-aos-duration="1000"> <div class="dv"><div class="anh">
            <img src="../pic/Gorkij.jpg"></div>
            <p>Sách chứa đựng rất nhiều kiến thức từ trong học tập đến trong cuộc sống, giúp chúng ta tư duy, nhận thức sâu sắc hơn, trưởng thành hơn và tích lũy được vốn từ ngữ phong phú. Gorki – nhà văn hiện thực xã hội Chủ nghĩa đã từng nói: “Sách mở rộng ra trước mắt tôi những chân trời mới”. Câu nói vô cùng giản dị mà chứa đựng những ý nghĩa sâu xa về tầm quan trọng của việc đọc sách với con người. Sách là kho tàng quý báu của nhân loại.</p></div></div>
    </div>
    <hr>
    <div class="cards">
        <div class="card" data-aos="fade-right" data-aos-delay="200" data-aos-duration="1000"><div class="dv"><div class="anh"><img src="../pic/sach.jpg">
        <p>Sách là một loạt các văn bản hoặc hình ảnh viết tay hoặc in, được buộc hoặc dán lại với nhau trên một mặt. Mỗi mặt của một trong các trang tính này được gọi là một trang. Nếu một cuốn sách chỉ chứa thông tin ở dạng điện tử được xem trên thiết bị có màn hình thì nó được gọi là sách điện tử hoặc sách điện tử. Theo Từ điển tiếng Việt đưa ra giải thích về sách được hiểu là “tập hợp một số loại giấy nhất định được in ra, đóng lại với nhau thành một cuốn sách”. Có thể thấy sách là kiến thức của con người đã được tích lũy, chọn lọc, tổng hợp, là kho tàng vô tận chứa biết bao nhiêu điều có ích được tích lũy qua hàng nghìn năm của nhân loại. Sách chứa đựng rất nhiều kiến thức từ trong học tập đến trong cuộc sống, giúp chúng ta tư duy, nhận thức sâu sắc hơn, trưởng thành hơn và tích lũy được vốn từ ngữ phong phú. Sách còn là những suy nghĩ, những ước mơ, hoài bão, những tình cảm mà con người muốn được chia sẻ, nhân rộng ra đến mọi người. Sách thật sự kỳ diệu và từ xa xưa, con người đã biết đến sự kỳ diệu đó.</p>
        </div></div></div>
    </div>
    
    
    </section>
    <section class="cake"><h1>Ý Nghĩa Của Việc Đọc Sách</h1>
        <div class="cards">
        <div class="card" data-aos="zoom-out" data-aos-delay="100" data-aos-duration="1000"><div class="dv"><div class="anh"><img src="../pic/doc-sach1.jpg"></div>
        <p>Sách là sản phẩm sáng tạo bằng trí tuệ và tâm hồn của con người, là kho tàng tri thức của nhân loại. Đọc sách không chỉ nâng cao kiến thức, kỹ năng, phát triển tư duy giáo dục mà còn rèn luyện nhân cách con người. Ý nghĩa của việc đọc sách là vô cùng to lớn và rộng mở.
        Đọc sách cung cấp tri thức cho con người để học tập và làm việc. Có thể thấy mỗi chúng ta trải qua quá trình học tập đều cần sự giúp đỡ của những cuốn sách. Đó là sách giáo khoa, sách bài tập,… cung cấp cho chúng ta một khối lượng tri thức để phục vụ cho quá trình học tập những năm đầu đời của con người. Không có sách chúng ta không thể hiểu các vấn đề cũng như nghiên cứu, học tập được. </p>
        </div></div>
        </div>
        <hr>
        <div class="cards">
        <div class="card" data-aos="zoom-out-right" data-aos-delay="100" data-aos-duration="1000"><div class="dv"><div class="anh"><img src="../pic/sach1.jpg"></div>
        <p>Đọc sách giúp mở ra chân trời tri thức mới cho chúng ta. Việc học sách giáo khoa là chưa đủ. Ngoài những kiến thức cần thiết cơ bản ra mỗi người cần trang bị hành trang cho bản thân để hiểu biết hơn, giỏi giang và có ích hơn qua các loại sách khác nhau. Mỗi một cuốn sách lại cho chúng ta những thông tin về các vấn đề và lĩnh vực khác nhau. Càng đọc nhiều ta càng hiểu biết thêm một vấn đề nào đó. Sách cung cấp tri thức về văn học, về lịch sử, về xã hội, sách kinh tế,… Đọc càng nhiều chúng ta càng biết nhiều và có thể trả lời hàng vạn câu hỏi khác nhau: Đỉnh núi nào cao nhất trên thế giới? Tại sao người Ai Cập biết ướp xác? Có phải từ mặt trăng ta có thể nhìn thấy Vạn lý trường thành hay không? Hay như trái đất có hình gì? Tại sao bóng đèn lại phát sáng?… Đọc sách còn cho ta biết về lịch sử các quốc gia, đọc sách giúp ta hiểu biết được phong tục tập quán của các dân tộc khác nhau trên khắp thế giới và biết đến rất nhiều điều kì lạ của một đất nước rất nhỏ bé hay cả một châu lục nào đó.</p>
        </div></div>
        </div>
        <hr>
        <div class="cards">
        <div class="card" data-aos="zoom-out-left" data-aos-delay="100" data-aos-duration="1000"><div class="dv"><div class="anh">.<img src="..\pic\sach2.png"></div>
        <p>Đọc sách dạy con người rèn luyện tâm tính, giúp chúng ta có cách sống, cách làm người có ích. Khi đọc sách, với sự kiên nhẫn đọc sẽ giúp con người vô cùng bình tĩnh, bình thản và làm việc một cách chắc chắn hơn. Đọc sách có thể rèn luyện đức tính kiên trì nhẫn nại cho con người. Đọc sách cũng cho chúng ta có sự trân trọng và biết ơn thành quả ngày nay; biết suy nghĩ cao cả, hi sinh vì người khác cũng như có những ý tưởng làm việc trong nhiều lĩnh vực và những hiểu biết sâu sắc khác mà không đâu mang lại.</p>
        </div></div>
        </div>
        <hr>
        <div class="cards">
        <div class="card" data-aos="zoom-in" data-aos-delay="100" data-aos-duration="1000"><div class="dv"><div class="anh"><img src="../pic/docsach.jpg"></div>
        <p>Đọc sách giống như một hình thức giải trí, giảm căng thẳng mệt mỏi cho con người. Thay vì cuộc sống chỉ gắn liền với điện thoại, máy tính ti vi với việc sử dụng facebook, zalo,… con người có thể nghỉ ngơi và tận hưởng thư giãn bên sách.

Việc đọc sách còn giúp tích lũy được một lượng vốn kiến thức, hiểu biết rộng trong mọi lĩnh vực của đời sống xã hội, giúp các bạn tự tin hơn vào bản thân trong quá trình giao tiếp, chủ động ứng xử, giải quyết những tình huống xảy ra dễ dàng hơn, linh hoạt hơn, từ đó hình thành được kỹ năng giao tiếp hiệu quả.

Đọc sách cũng giúp con người khắp phục lỗi sai về cách dùng từ, về nói năng sao cho đúng cho hay. Việc đọc sách là biện pháp hữu hiệu nhất giúp bạn khắc phục những sai sót trong việc sử dụng ngôn ngữ. Đọc nhiều bạn sẽ thấy nhiều cách dùng từ khác nhau và sử dụng từ ngữ không sai chính tả, hay và phù hợp trong từng hoàn cảnh của cuộc sống.

Không chỉ vậy, khi làm công việc bất kỳ thì việc đọc sách liên quan công việc đó càng cần thiết. Việc tìm hiểu và đọc những cuốn sách có liên quan đến nghề nghiệp, chuyên môn của mình sẽ giúp bạn có thêm những thông tin, kiến thức, hiểu biết sâu hơn, rộng hơn về nghề nghiệp mình đang làm. Khi đã có vốn kiến thức, hiểu biết chắc chắn về chuyên môn, nghề nghiệp, tay nghề của bạn sẽ được nâng lên, phong cách làm việc sẽ chuyên nghiệp hơn, từ đó năng suất, chất lượng, hiệu quả lao động chắc chắn sẽ tốt hơn.

Có thể thấy đọc sách là việc làm rất thiết thực và ý nghĩa. Thực tế những người đọc nhiều sách luôn có khả năng tư duy đa chiều, kiến thức sâu rộng, hội tụ nhiều năng lực, lời nói có cơ sở và có uy tín nên được mọi người lắng nghe, xem trọng… Mỗi người cần rèn luyện kĩ năng đọc sách để giúp ích cho bản thân và cho cả xã hội.</p>
        </div></div>
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
        <div id="map" style="width: 100%; height: 145px;border:none;">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3716.961238829658!2d105.39337027530871!3d21.312547880408697!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31348de7e680a8df%3A0xceafbd228b67326c!2zVmluY29tIFBsYXphIFZp4buHdCBUcsOs!5e0!3m2!1svi!2s!4v1727893527203!5m2!1svi!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</footer>
   
   
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="../java/homepage.js">
        

    </script>
     </div>
    </div>
    
       <div id="view1" class="view">
          <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/chuanhan1.jpg" >
          </div>
            <div class="viewnd">
            <h2 >Chúa Tể Những Chiếc Nhẫn 1</h2>
            <ul>
                <li>Tác giả: J.R.R Tolkien   <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Hội Nhà Văn <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
            </ul>
            <h1 class="viewh1">310.000 ₫</h1>
            
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
          </div>
        </div>
        <div id="view2" class="view">
             <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/chuanhan2.jpg" >
          </div>
            <div class="viewnd">
            <h2 >Chúa Tể Những Chiếc Nhẫn 2</h2>
            <ul>
                <li>Tác giả: J.R.R Tolkien   <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Hội Nhà Văn <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
            </ul>
            <h1 class="viewh1">310.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
            </div>
          </div>
        <div id="view3" class="view">
            <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/chuanhan3.jpg" >
          </div>
            <div class="viewnd">
            <h2 class="viewh2">Chúa Tể Những Chiếc Nhẫn 3</h2>
            <ul>
                <li>Tác giả: J.R.R Tolkien   <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Hội Nhà Văn <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
            </ul>
            <h1 class="viewh1">310.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div>
      </div>
        
        <div id="view4" class="view">
            <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/dacnhantam.jpg" style="height:600px;"></div>
            <div class="viewnd" style="height:600px;">
            <h2 class="viewh2">Đắc Nhân Tâm</h2>
            <ul>
                <li>Tác giả: Dale Carnegie   <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Hội Nhà Văn <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
            </ul>
            <h1 class="viewh1">86.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div></div>
        <div id="view5" class="view">
            <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/nhagiakim.jpg" >
          </div>
            <div class="viewnd">
            <h2 class="viewh2">Nhà Giả Kim</h2>
            <ul>
                <li>Tác giả: Paulo Coelho  <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Kim Đồng <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
               
            </ul>
            <h1 class="viewh1">79.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div></div>
        <div id="view6" class="view">
            <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/onggiavabienca.jpg" >
          </div>
            <div class="viewnd">
            <h2 class="viewh2">Ông Già Và Biển Cả</h2>
             <ul>
                <li>Tác giả: Ernest Hemingway  <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Kim Đồng <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
               
            </ul>
            <h1 class="viewh1">35.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div></div>
        <div id="view7" class="view">
            <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/ccld.jpg" ></div>
            <div class="viewnd">
            <h2 class="viewh2">Cuộc chiến lỗ đen</h2>
            <ul>
                <li>Tác giả: Stephen Hawking  <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Nhà Xuất Bản Trẻ <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
               
            </ul>
            <h1 class="viewh1">178.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div></div>
        <div id="view8" class="view">
            <div class="viewimg" >
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/luoc-su-thoi-gian.jpg" style="height:650px;"></div>
            <div class="viewnd" style="height:650px;">
            <h2 class="viewh2">Lược sử thời gian</h2>
             <ul>
                <li>Tác giả: Stephen Hawking  <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Nhà Xuất Bản Trẻ <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
               
            </ul>
            <h1 class="viewh1">115.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div></div>
        <div id="view9" class="view">
            <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/7-bai-hoc-hay-nhat-ve-vat-ly.jpg" ></div>
            <div class="viewnd">
            <h2 class="viewh2">7 Bài học hay nhất về vật lý</h2>
            <ul>
                <li>Tác giả: Carlo Rovelli  <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Nhà xuất bản: Nhà Xuất Bản Trẻ <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
               
               
            </ul>
            <h1 class="viewh1">56.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div>
        </div></div>
        <div id="view10" class="view">
          <div class="viewimg">
            <ion-icon name="arrow-back" onclick="back()" class="iconback"></ion-icon>
            <img src="../pic/mosse.jpg" > </div>
            <div class="viewnd">
            <h2 class="viewh2">BÁNH MOUSSE XOÀI</h2>
            <ul>
                <li>Xoài chín 1kg    <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Whipping cream 300 gr   <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
                <li>Bơ lạt, Gelatin, Đường  <ion-icon name="checkmark-done-circle" style="color: green;"></ion-icon></li>
            </ul>
            <h1 class="viewh1">70.000 ₫</h1>
            <div><p>Ghé thăm chúng tôi.</p><a href="map.html"><img src="../pic/map.jpg" class="icon"></a></div></div>
        </div>
</body>
</html>
