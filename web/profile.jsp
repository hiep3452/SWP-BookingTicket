<%-- 
    Document   : profile
    Created on : Sep 23, 2023, 7:53:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"/>;
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"/>;
        <<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>
    </head>
    <style>
        body {
    background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(88,140,126,1) 35%);
}

.form-control:focus {                                                         
    box-shadow: none;
    border-color: rgb(88,140,126);
}

.profile-button {
    background: rgb(88,140,126);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: rgb(88,80,50);
}

.profile-button:focus {
    background: rgb(88,140,126);
    box-shadow: none
}

.profile-button:active {
    background: rgb(88,140,126);
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer;
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: rgb(88,140,126);
    color: #fff;
    cursor: pointer;
    border: solid 1px rgb(88,140,126);
}
h4{
    text-align: center;
}
    </style>
    <body>
        <form action="EditProfile">
      <div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                <input type="file" name="image" id="file" accept="image/*">
            </div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Chỉnh sửa hồ sơ</h4>
                </div>
                <div class="row mt-2">
                     <div class="col-md-12"><label class="labels" class="phone">Số điện thoại</label><h5>${sessionScope.acc.phone}</h5></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Họ và Tên</label><input name="name" type="text" class="form-control" placeholder="Họ và Tên" value="${name}"></div>
                    <div class="col-md-12"><label class="labels">Email</label><input name="email" type="text" class="form-control" placeholder="Email" value="email"></div>
                    <div class="col-md-12"><label class="labels">Địa chỉ </label><input name="address" type="text" class="form-control" placeholder="Địa chỉ" value="address"></div>
    
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Giới tính</label><input name="gender" type="text" class="form-control" placeholder="Giới tính" value="gender"></div>
                </div>
                <div class="mt-5 text-center"><a href="index.jsp"><button class="btn btn-primary profile-button" type="button">Edit Profile</button></a></div>
            </div>
        </div>
               
        <div class="col-md-4">
                       <div class="p-3 py-5">
                           <div class="d-flex justify-content-between align-items-center experience"><img src="image/like.svg" style="width: 100%;height:100%"></div><br>
            </div>
        </div>

        </div>
    </div>
</div>
</div>
</div>
</form>
    </body>
</html>
        
