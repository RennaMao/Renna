<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
 src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/jqpaginator.min.js"></script>
<script type="text/javascript">
  var num;
  function add(){
	 num=parseInt($('#number').val());
	 if(num<100){
		 $('#number').val(++num);
	 }
  }
  function sub(){
	  num=parseInt($('#number').val());
	  if(num>0){
		  $('#number').val(--num);
	  }
  }

 


</script>
<title>My Shopping Cart</title>
</head>
<body style="background-color:#A180AD">
<a type="button" class="btn btn-info Logout"
  href="${pageContext.request.contextPath}/transfer.do">Home</a>
<table  style="text-align:center; margin:0 auto;width:60%">
  <tr>
     <td rowspan="5">
       <img alt="" src="img/${prod.productLogo}"
            width="250" height="250"/>
     </td>
  </tr>
  
  <tr>
   <td><B>${prod.productName}</B></td>
  </tr>
  
   <tr>
   <td>Made in :${prod.productCity}</td>
   </tr>
   
  <tr>
   <td>Price￥:${prod.productPrice}</td>
  </tr>

  <tr>
   <td>购买数量:
   <input type="button" id="sub" onclick="sub();"
                 value="-">
   <input type="text" id="number"  name="number" onclick="sub();"
                 value="1" size="2"/>
   <input type="button" id="add" onclick="add();"
                 value="+"/>
   </td>
  </tr>
</table>
   <div id="cart"
             style="text-align:center;
             margin:0 auto;width: 60%">
   <span>view:${prod.viewCount}</span>
   <a id="a" onclick="incart(${prod.id},${prod.productPrice})">
   <img src="img/in_cart.png" width="40px" height="40px">
   </a>
   </div>
   
   <script type="text/javascript">
  
    function incart(pid,price){
		var a = document.getElementById("a"); 
		var count = document.getElementById("number").value;  
		a.href="${pageContext.request.contextPath}/cart.do?pid="+pid+"&pcount="+count+"&price="+price;
   }
   
   </script>

</body>
</html>