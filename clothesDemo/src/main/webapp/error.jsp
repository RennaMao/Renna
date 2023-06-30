<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/style2.css" />
<script>
        function redirectToLoginPage() {
            window.location.href ="register.jsp";
        }
    </script>
</head>
<body>
<div class="container">
<span style="color:red;">${msg}</span>

   
    <h2>注册失败</h2>
    <form id="login" action="" method="post">
      
        <a  href="#" onclick="redirectToLoginPage()"  style="display: flex; justify-content: center;">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            点击跳转重新注册页面
      </a>
    </form>
</div>
    
    
</body>
</html>