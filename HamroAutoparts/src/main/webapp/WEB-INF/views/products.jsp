<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
</head>
<body>	
	<section>
		<div class="jumbotron">
			<div class="alert alert-info">
			<a href="<c:url value="/j_spring_security_logout" />" class="btn btn-danger btn-mini pull-right">logout</a>
				<h1>Auto Products</h1>
				<p>All available products</p>
				<p id="demo"></p>
			</div>
		</div>
	</section>
	
	<form:form method = "GET" action = "/HamroAutoparts/products/add">
         <table>
            <tr>
               <td>
                  <input type = "submit" value = "Add Product"/>
               </td>
            </tr>
         </table>  
      </form:form>

	<section class="container">
		<div class="row">
		<c:forEach items="${products}" var="product">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
				<img src="	
					<c:url value="/resource/images/${product.productId}.png"></c:url>"	
					alt="image" style = "width:100%"/>
					
					<div class="caption">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>$${product.unitPrice} USD</p>
						<p>Available ${product.unitsInStock} units in stock</p>
						<p>
							<a href="<spring:url value="/products/product?id=${product.productId}"/>" class="btn btn-primary">
							<span class="glyphicon-info-sign glyphicon"/></span>Details</a>
						</p>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>