<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
 <link rel="stylesheet" href="css/style2.css" />

    <title>Register</title>
</head>

<body background="">
<div class="container">
<span style="color:red;">${msg}</span>
 <form action="${pageContext.request.contextPath}/register.do" method="post" class="login-form" >
    <table>
        <tr>
            <td>用&nbsp;户&nbsp;名&nbsp;：</td><td><input type="email" name="userName" value=""/></td>
        </tr>
        
         <tr>
            <td>用户昵称：</td><td><input type="text" name="nickName"/></td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;：</td><td><input type="password" name="pwd" /></td>
        </tr>
       
        
    </table>
        <input type="submit" value="注册"/><br/>
    </form>
    </div>
</body>
</html>

