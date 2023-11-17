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

<h1>Ứng dụng máy tính</h1>
<form class="row g-3" style="max-width: 30rem; margin: 0 auto" action="/form-calculate" method="post">
    <%-- rate --%>
    <div class="col-12">
        <label for="num1" class="form-label">Nhập số thứ 1: </label>
        <input type="text" class="form-control" name="num1" id="num1" value="${num1}">
    </div>
    <%-- usd --%>
    <div class="col-12">
        <select class="form-select" aria-label="Default select example" name="op">
            <option ${op==null?'selected':''}>Phép tính: </option>
            <option ${op=='add'?'selected':''} value="add">+</option>
            <option ${op=='sub'?'selected':''} value="sub">-</option>
            <option ${op=='mult'?'selected':''} value="mult">*</option>
            <option ${op=='div'?'selected':''} value="div">/</option>
        </select>
    </div>
        <%-- usd --%>
        <div class="col-12">
            <label for="num2" class="form-label">Nhập số thứ 2: </label>
            <input type="text" class="form-control" name="num2" id="num2" value="${num2}">
        </div>
    <%-- vnđ--%>
    <div class="col-12">
        <label for="result" class="form-label">Kết quả: </label>
        <input type="text" class="form-control" readonly id="result" value="${result}">
    </div>
    <div class="col-12 text-center">
        <input type="submit" class="btn btn-primary" value="CALCULATE">
    </div>
</form>

<jsp:include page="/WEB-INF/views/assests/foot.jsp"></jsp:include>
</body>
</html>
