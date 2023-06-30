<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css" />
<title>login</title>
</head>
<body>
<div class="container">
<span style="color:red;">${msg}</span>

    <form action="${pageContext.request.contextPath}/login.do" method="post" class="login-form" >
    
    用户名:<input type="email" placeholder="邮箱"
           name="username" id=username size="34" required><br>
    密码:<input type="password" placeholder="密码" name="pwd" id=pwd size="34" required><br>
    
    <c:choose>
     <c:when test="${msg=='禁止登录'}">
        <input type="submit" value="登录" style="width:90px;" disabled="disabled">

     </c:when>
     <c:otherwise>
     
     <input type="submit" value="登录" style="width:90px;"> 
      <input type="button" value="注册" style="width:90px;" onclick="{location.href='register.jsp'}">
    
     </c:otherwise>  
    </c:choose>
    </form>
    
  
   
    
  
     



</div>
</body>
</html>