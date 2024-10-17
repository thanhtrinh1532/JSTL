<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang Định Dạng Số</title>
</head>
<body>
    <h2>Định Dạng Số và Ngày</h2>

    <!-- Định dạng số -->
    <c:set var="amount" value="12345.6789" />
    <p>Số ban đầu: <c:out value="${amount}" /></p>
    <p>Định dạng tiền tệ: <fmt:formatNumber value="${amount}" type="currency" /></p>
    <p>Định dạng số: <fmt:formatNumber value="${amount}" maxFractionDigits="2" /></p>

    <!-- Định dạng ngày -->
    <c:set var="today" value="${pageContext.request.time}" />
    <p>Ngày hiện tại: <fmt:formatDate value="${today}" pattern="dd/MM/yyyy" /></p>

    <!-- Điều hướng đến trang SQL -->
    <p><a href="sql.jsp">Trang SQL</a></p>
</body>
</html>
