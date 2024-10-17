<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>
</head>
<body>
    <h2>Chào mừng đến trang chủ</h2>

   
    <c:set var="message" value="Chào bạn đến với trang JSP sử dụng JSTL!" />
    <p><c:out value="${message}" /></p>

    
    <c:if test="${not empty message}">
        <p>Thông báo đang hiển thị!</p>
    </c:if> 


    <h3>Danh sách sản phẩm:</h3>
    <c:set var="products" value="['Áo sơ mi', 'Áo thun', 'Quần jeans', 'Quần shorts', 'Áo khoác']" />
    <ul>
        <c:forEach var="product" items="${products}">
            <li><c:out value="${product}" /></li>
        </c:forEach>
    </ul>

    <!-- Điều hướng đến trang khác -->
    <p><a href="format.jsp">Trang Định Dạng Số</a></p>
    <p><a href="sql.jsp">Danh sách users</a></p>
</body>
</html>