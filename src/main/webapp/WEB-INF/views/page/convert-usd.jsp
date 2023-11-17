
<%--
  Created by IntelliJ IDEA.
  User: BenLaptop
  Date: 11/15/2023
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Spring MVC</title>
    <jsp:include page="/WEB-INF/views/assests/head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/views/assests/navbar.jsp"></jsp:include>

<h1>Ứng dụng đổi tiền USD sang VND</h1>
<form class="row g-3" style="max-width: 30rem; margin: 0 auto" action="/form-convert-usd" method="post">
    <%-- rate --%>
    <div class="col-12">
        <label for="rate" class="form-label">Tỉ giá USD-VNĐ: </label>
        <input type="text" class="form-control" name="rate" id="rate" value="${rate}">
    </div>
    <%-- usd --%>
    <div class="col-12">
        <label for="usd" class="form-label">Số tiền USD cần chuyển: </label>
        <input type="text" class="form-control" name="usd" id="usd" value="${usd}">
    </div>
    <%-- vnđ--%>
    <div class="col-12">
        <label for="vnd" class="form-label">Số tiền VNĐ nhận được: </label>
        <input type="number" class="form-control" readonly id="vnd" value="${vnd}">
    </div>
    <div class="col-12 text-center">
        <input type="submit" class="btn btn-primary" value="CONVERT">
    </div>
</form>

<jsp:include page="/WEB-INF/views/assests/foot.jsp"></jsp:include>
</body>
</html>
