<%-- 
    Document   : index.jsp
    Created on : Sep 23, 2023, 12:13:14 AM
    Author     : Admin
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <script src="node_modules/jquery/dist/jquery.slim.min.js"></script>
        <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/BookingTicket//themify-icons/themify-icons.css">
         <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="/BookingTicket/css/style.css">
        <title>DN BUS</title>
    </head>    
    <style>
        body{
    margin: 0;
    padding: 0;
    font-weight: 500;
    font-family :'Times New Roman', Times, serif; 
}
.header{
    background-color: rgb(88,140,126);
    margin-bottom: 70px;
}
.sign-up,.log-out{
    float: right;
    margin-top: 10px;
    padding: 5px 0;  
    border-radius: 15px;
    background-color: white;
}
.sign-up i{
    color: black;
    letter-spacing:0.1em;
    font-weight: 500;
}
.sign-up i:hover{
    font-weight: bolder;
    text-decoration: underline;
}

.sign-up a{
    text-decoration: none;
}
.log-out i{
    color:black;
    letter-spacing:0.1em;
    font-weight: 500;
}
.log-out i:hover{
    font-weight: bolder;
    text-decoration: underline;
}
.log-out a{
    text-align: none;
}
.icon-logout a{
    float: right;
    margin-top: 10px;
    padding: 5px 0;  
    border-radius: 15px;
}

.logo{
    width:150px;
    border-radius:70%;
-moz-border-radius:70%;
-webkit-border-radius:70%;
}
.row {
    
}
.row div{
    display: flex;
    align-items: center;
    padding-right: 10px ;
    justify-content: space-between;
}
.row a{
    text-decoration: none;
    color: #fff;
    align-items: center;
}
.col-sm-12 a{
    font-size: 20px;
}
.col-sm-12 a:hover{
    text-decoration: underline;
    font-weight: bolder;
}
.log-out{
    float: right;
}
.grid-container1 {
    width: 1000px;
    margin: auto;
}
.select{
    margin-top: 15px;
    margin-left: 25px;
}
.instructions{
    margin-right: 25px;
    margin-top: 15px;
    color: darkgreen;
}
.search{
    margin-bottom: 50px;
}
.thong-tin{
    display: flex;
    justify-content: space-between;
}
.gioi-thieu h1{
    margin-top: 20px;
}

.search-content-items {
    justify-content: space-between;
    background-color: rgb(88,140,126);
    padding: 12px;
    border-radius: 5px;
}
.search-content-item{
    height: 50px;
    background-color: rgb(88,140,126);
    width: 15%;
    display: flex;
    align-items: center;
    border-radius: 5px;
    position: relative;
}
.search-content-item input{
    position: absolute;
    width: 100%;
    height: 100%;
    border: none;
    outline: none;
    padding-left: 36px;
    border-radius: 5px;
}

.search-content-item i{
    position: absolute;
    margin-right: 12px;
    left: 12px;
    z-index: 1;
}
.search-content-item button{
    width: 130px;
}
.search-content-item  button{
    height: 100%;
    width: 100%;
    color: #fff;
    background-color: rgb(88,140,126);
    border: none;
    cursor: pointer;
    border-radius: 5px;
}
.search-content-item button:hover{
        text-decoration: underline;
        font-weight: bolder;
}
.gioi-thieu{
    text-align: center;
}
.achievements .container{
    justify-content: space-between;
    display: flex;

}
.achievements{
    margin-top: 5rem;
}
.achievements figure{
    display: flex;
}
.achievements figcaption{
    margin-left: 1rem;
}
.achievements a{
    color: #000;
    text-decoration:none;
}
.achievements h3{
    font-size: 24px;
    font-family: "Inter" !important;
    font-weight: 700;
}
.achievements p{
    font-size: 15px;
    font-family: "Inter" !important;
    margin-bottom: 50px;
}
.achievements li{
    margin-bottom: 1rem;
}
.gioi-thieu{
    margin-bottom: 40px;
}
.gioi-thieu2{
    text-align: center;
    
}
.gioi-thieu2 h1{
    margin-top: 100px;
    
}
.gioi-thieu2 p{
    margin-bottom: 50px;
}
.noibat{
    margin-bottom: 60px;
}
.noibat-1 { grid-area: noibat-1; }
.noibat-2 { grid-area: noibat-2; }
.noibat-3 { grid-area: noibat-3; }
.noibat-4 { grid-area: noibat-4; }
.grid-container {
    display: grid;
    grid-template-areas:
      'noibat-1 noibat-1 noibat-2 noibat-2 noibat-3 noibat-3 noibat-4 noibat-4';
    gap: 10px;
}
figcaption p{
    font-weight: bold;
}
.noibat img{
    width: 100%;
    height: 90%;
    object-fit: cover;
}
.grid-container{
    margin-top: 80px;
}
.noibat figure{
    height: 100%;
    display: block;
}
.contact img{
    width: 100%;
    height: 90%;
    object-fit: cover;
}

.contact figure{
    height: 100%;
    display: block;
}
.contact img{
    border-radius:50%;
-moz-border-radius:50%;
-webkit-border-radius:50%;
}
figcaption{
    color: #000;
}

  /* footer */
  footer > p{
    text-align: center;
    background: #588C7E;
    height: 35px;
    line-height: 35px;
    font-size: 14px;
    color: #fff;
    text-transform: uppercase;
    font-weight: bold;
    margin-top: 10px;
  }
  .grid-container1 {
    display: flex;
    justify-content: space-between;
  }
.register button{
    border: none;
    color: #fff;
    padding: 6px;
}
.gird-item1 a{
    color: black;
}
.register a{
    text-decoration: none;
    border-radius: 7rem;
    color: #fff;
    background-color: #EF5222;
    padding: 6px;
}
ul{
    list-style: none;
}
a{
    text-decoration: none;  
}
footer{
    margin-bottom: none;
    margin-top: 50px;
}
.height{
    min-height: 400px;
}

</style>
<body>
    <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-sm-10"></div>
                    <div class="col-sm-2">
                        <c:if test="${sessionScope.acc != null}">
                            <div class="log-out"><a href="profile.jsp"><i class="fas fa-user fa-sm">${sessionScope.acc.name}</i></a></div>
                            <div class="icon-logout"><a href="Logout"><i class="fas fa-sign-out-alt fa-lg"></i></a>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">
                    <div class="sign-up"><a href="login.jsp"><i class="fas fa-user fa-sm">Đăng kí/Đăng nhập</i></a></div>
                        </c:if>
                    </div>
                </div>
                <div class="row">
            <div class="col-sm-12">
                <a href="index.html"><img src="image/logo.png" class="logo"></a>
                <div class="home"><a href="">Trang chủ  </a></div>
                <div class="search-ticket"><a href="">Tra cứu vé</a></div>
                <div class="new"><a href="">Tin tức</a></div>
                <div class="contact"><a href="">Liên hệ</a></div>
               <div class="about-us"><a href="">Về chúng tôi</a></div>
            </div>
        </div>
        </div>
        </div>
    </div>
    
        <div class="container-all ">
            <div class="height">
          <div class="container-1 container ">
            <div class="thong-tin row">
              <div class="select col-sm-2">
                <input type="radio" name="type" value="Một chiều" checked /> Một chiều
                <input type="radio" name="type" value="Khứ hồi" /> Khứ hồi
              </div>
                <div class="col-sm-10"></div>
            </div>
              
            <section class="search">
           
        <div class="wraper container">
          <div class="search-content-items row">
            <div class="search-content-item">
              <input type="text" placeholder="Điểm đi" />
            </div>
            <div class="search-content-item">
              <input type="text" placeholder="Điểm đến" />
            </div>
            <div class="search-content-item">
              <input type="date" placeholder="xx/mm/yyyy"/>
            </div>
                <div class="search-content-item">
              <input type="text" placeholder="Số vé" />
                </div>
          </div>
        </div>
      </section>
              <div class="row d-flex justify-content-center">
                <div class="search-content-item">
              <button>Tìm kiếm</button>
                </div>
          </div>   
          </div>
          </div>
      
      <div class="gioi-thieu">
        <h1>DN BUS LINES - CHẤT LƯỢNG LÀ CỐT LÕI</h1>
        <p>Được khách hàng tin tưởng và lựa chọn
        </p>
      </div>
          <section class="achievements">
            <div class="container">
          <div>
            <ul>
              <li>
                <a href="#">
                  <figure>
                    <img width="20%"
                      src="image/customers.svg"
                      alt=""
                    />
                    <figcaption>
                      <h3>
                        Hơn 100K lượt khách mỗi năm 
                      </h3>
                      <span>
                        Làm hài lòng số đông khách hàng
                      </span>
                    </figcaption>
                  </figure>
                </a>
              </li>
              <li>
                <a href="#">
                  <figure>
                    <img width="20%"
                      src="image/location.svg"
                      alt=""
                    />
                    <figcaption>
                      <h3>
                        Nhiều văn phòng trải dài trên khắp cả nước 
                      </h3>
                      <span>
                        Bến xe, trạm trung chuyển,... trên toàn hệ thống
                      </span>
                    </figcaption>
                  </figure>
                </a>
              
                <a href="#">
                  <figure>
                    <img width="20%"
                      src="image/like.svg"
                      alt=""
                    />
                    <figcaption>
                      <h3>
                        Xe hiện đại nhất thị trường hiện nay
                      </h3>
                      <span>
                        Với những tiện ích khác biệt với thị trường
                      </span>
                    </figcaption>
                  </figure>
                </a>
              </li>
            </ul>
          </div>
          <div>
            <img width="100%" height="100%" src="image/background.svg" alt="">
          </div>
      </section> 
    <div class="gioi-thieu">
      <h1>Tin tức mới</h1>
      
      
  
    </div>
    <section class="noibat">
        <div class="height">
      <div class="grid-container container">
        <div class="noibat-1">
          <a href="">
          <figure>
            <div class="anh1">
              
            </div>
            <img
              src="image/uudai.jpg"
              alt=""
            />
            <figcaption>
              <p>Đặt xe ĐN với nhiều ưu đãi</p>
              <time> 31/05/2023</time>
            </figcaption>
          </figure>
        </a>
        </div>
        <div class="noibat-2">
          <a href="">
            <figure>
                <img
                src="image/uu dai 2.jpg"
                alt=""
              />
              <figcaption>
                <p>Tiết kiệm hơn khi thanh toán qua momo</p>
                <time> 31/05/2023</time>
              </figcaption>
            </figure>
          </a>
        </div>
        <div class="noibat-3">
          <a href="">
            <figure>
              <img src="image/uu dai 3.jpg" alt="" />
              <figcaption>
                <p>Tiết kiệm hơn khi thanh toán qua VN pay</p>
                <time> 31/05/2023</time>
              </figcaption>
            </figure>
          </a>
        </div>
        <div class="noibat-4">
          <a href="">
            <figure>
              <img src="image/tram dung chan.jpg" alt="" />
              <figcaption>
                <p>Điểm dừng chân mới </p>
                <time> 31/05/2023</time>
              </figcaption>
            </figure>
          </a>
        </div>
        </div>
       </div>
    </section>
    <div class="gioi-thieu2">
        <div class="height">
      <h1>NHỮNG CHƯƠNG TRÌNH Ý NGHĨA CHO CỘNG ĐỒNG</h1>
      
      <p>Các chương trình từ thiện giúp đỡ các hoàn cảnh khó khăn luôn diễn ra thường xuyên</p>
      <section class="contact">
        <div class="grid-container container">
          <div class="img1">
            <a href="">
            <figure> 
              <img
                src="image/tuthien1.jpeg"
                alt=""
              />
              <figcaption>xe hợp đồng
              </figcaption>
            </figure>
          </a>
          </div>
          <div class="img2">
            <a href="">
              <figure>
                <img
                  src="image/tuthien2.jpg"
                  alt=""
                />
                <figcaption>
                  Mua vé xe ĐN
                </figcaption>
              </figure>
            </a>
          </div>
          <div class="img3">
            <a href="">
              <figure>
                <img src="image/tuthien3" alt="" />
                <figcaption>
                 Giao hàng
                </figcaption>
              </figure>
            </a>
          </div>
          <div class="img4">
            <a href="">
              <figure>
                <img src="image/tuthien4.jpg    " alt="" />
                <figcaption>
                  Xe buýt
                </figcaption>
              </figure>
            </a>
          </div>
          </div>
      </section>
    </div>
  </div>
</div>
  
    <footer>
        <p>Mang đến trải nghiệm tuyệt vời</p>

      <div class="grid-container1">
        <div class="grid-item1">
          <ul>
            <li>
              <a href="http://127.0.0.1:5500/BookingTicket/html/index.html">Liên hệ với chúng tôi</a>
              
            </li>
            <li>Địa chỉ các văn phòng nhà xe:</li>
            <li>300 Lê Thạch, Đà Nẵng</li>
            <li>1002 Âu Cơ, P14, Tân Bình, TP.HCM</li>
            <li>104A Hoa Bằng, Cầu Giấy, Hà Nội</li>
            <li>Hotline: 028.6275.9999 - 028.6275.8888</li>
            <li>Zalo/SMS: 0986.000.333 - 0967.800.800 - 0934.850.850</li>
            <li>Email: info@NhaxeDN.com</li>
          </ul>
        </div>
        <div class="grid-item1">
          <ul>
            
            <li><a href="http://127.0.0.1:5500/BookingTicket/html/index.html">Đăng ký nhận tin</a></li>
            <li>ĐĂNG KÝ NHẬN BẢN TIN KHUYẾN MÃI</li>
            <li>
              <form>
                <input placeholder="Nhập địa chỉ email" />
                <div class="register"><button><a href="http://127.0.0.1:5500/BookingTicket/html/index.html">Đăng ký</a></button></div>
                
              </form>
            </li>
          </ul>
        </div>
      </div>
    </footer>
</body>
</html>

    </body>
</html>
