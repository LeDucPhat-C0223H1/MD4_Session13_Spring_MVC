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

<h1>Ứng dụng từ điển</h1>
<form class="row g-3" style="max-width: 30rem; margin: 0 auto" action="/form-translate" method="post">
    <%-- usd --%>
    <div class="col-12">
        <label for="en" class="form-label">Nhập từ tiếng anh cần tra: </label>
        <input type="text" class="form-control" name="en" id="en" value="${en}">
    </div>
    <%-- vnđ--%>
    <div class="col-12">
        <label for="vn" class="form-label">Kết quả biên dich: </label>
        <input type="text" class="form-control" readonly id="vn" value="${vn}">
    </div>
    <div class="col-12 text-center">
        <input type="submit" class="btn btn-primary" value="TRANSLATE">
    </div>
</form>

<jsp:include page="/WEB-INF/views/assests/foot.jsp"></jsp:include>
</body>
</html>
