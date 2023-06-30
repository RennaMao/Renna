<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% String path=request.getRequestURI(); %>
<link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.css" />
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
 src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<style type="text/css">
  #form1{
     margin-top:70px;
  }
  dl{
     margin-top:30px;
     font-size:20px;
  }
  dt,dd{
     height:50px;
  }
  
.price {
 color: red;
}

.proname {
 text-overflow: ellipsis;
 color: green;
}

.proLogo {
 display: block;
 width: 140px;
 height: 140px;
 margin: 24px auto;
 cursor: pointer;
}

.select {
 margin-top: 80px;
 margin-left: 60px;
}

.select input {
 width: 20px;
 height: 20px;
}

.count {
 width: 120px;
}

.dec {
 border-right: 1px;
 border-bottom-right-radius: 0;
 border-top-right-radius: 0;
 margin-rigth: -1px;
}

.del {
 display: block;
 margin-top: 80px;
 width: 48px;
 height: 48px;
 background-image: url(./img/del.png);
 cursor: pointer;
}

.clearfix:nth-child(odd) {
 background: #F0F8FF;
}

.clearfix:nth-child(even) {
 background: #FFF8DC;
}
.logout {
 position: absolute;
 right: 5px;
 top: 5px;
 z-index: 10;
}

.order {
 position: absolute;
 right: 64px;
 top: 5px;
 z-index: 10;
}

.home {
 position: absolute;
 right: 150px;
 top: 5px;
 z-index: 10;
}
.personal {
 position: absolute;
 right: 210px;
 top: 5px;
 z-index: 10;
}

p{
    margin:0px;
}

</style>
<script type="text/javascript">
$(function(){
	loadInit();	
});

function loadInit(){
	var layer="";
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/showCart.do",
		dataType:"json",
		success:function(data) {
			if (data!='') {
				for (var i = 0; i < data.length; i++) {
					layer += '<div class="row clearfix"><div class="col-md-1 column"><div class="checkbox select"><input type="checkbox" name="proId" value="'+data[i].proId+'"></div></div><div class="col-md-2 column"><img class="proLogo" alt="140x140" src="./img/'+
				data[i].proLogo + '" /></div><div class="col-md-8 column"><dl class="dl-horizontal"><dt style="width: 120px">商品名称：</dt><dd class="proname"><p>'
							+ data[i].proName
							+ '</p></dd><dt style="width: 120px">数量：</dt><dd><div class="input-group count"><input type="hidden" class="proId" value="'+
				data[i].proId + '"><span class="input-group-btn"><button class="btn btn-default count_btn dec" type="button">-</button></span><input type="text" class="form-control" name="proNum" value="'+
				data[i].buyCount + '"><span class="input-group-btn"><button class="btn btn-default count_btn add" type="button">+</button></span></div></dd><dt style="width: 120px">价格：</dt></dt><dd class="price">￥<span id="price'+
				data[i].proPrice + '">'
							+ data[i].proPrice
							+ '</span></dd></dl></div><div class="col-md-1 column"><a class="del"></a></div></div>';
				}
				
				layer += '<div class="row clearfix"><div class="col-md-2 col-md-offset-8 column">'
					+ '<h3 class="text-left" style="color: red;">总计：￥<span id="total">0.0</span>'
					+ '</h3></div><div class="col-md-2 column">'
					+ '<h4 class="text-center"><button type="button" class="btn btn-default" id="account">结&nbsp;算</button></h4>'
					+ '</div></div><input type="hidden" id="tot" name="total" value="0.0">';
				$("#form1").empty();
				$("#form1").append(layer);
		       }
		},
		error:function(){
			alert("error");
		}

	});
	
}

</script>
</head>
<body style="background-color:#A180AD">
  <div  class="container">
    <a type="button" class="btn btn-info logout"
       href="${pageContext.request.contextPath}/transfer.do">HOME</a>
  </div>
  <form id="form1" role="form"
    action="${pageContext.request.contextPath}/addOrder.do" method="post">
  </form>
</body>
</html>