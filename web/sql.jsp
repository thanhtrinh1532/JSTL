<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang SQL</title>
</head>
<body>
    <h2>Kết Nối SQL</h2>

    <!-- Thiết lập nguồn dữ liệu -->
    <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/shop/shop_JSTL"
                       user="root" password="123" />

    <!-- Thực thi truy vấn -->
    <sql:query dataSource="${ds}" var="result">
        SELECT * FROM users
    </sql:query>

    <!-- Hiển thị kết quả truy vấn -->
    <h3>Kết Quả Truy Vấn:</h3>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}" /></td>
                <td><c:out value="${row.name}" /></td>
            </tr>
        </c:forEach>
    </table>

    <!-- Điều hướng về trang chủ -->
    <p><a href="index.jsp">Quay về Trang Chủ</a></p>
</body>
</html>
