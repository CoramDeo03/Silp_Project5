<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>자세히 보기</title>
</head>
<body>
<h1>자세히 보기</h1>
<table class="table table-bordered">
  <tr><td>책 제목: </td><td><c:out value="${u.bookTitle}" /></td></tr>
  <tr><td>저자: </td><td><c:out value="${u.bookWriter}" /></td></tr>
  <tr><td>출판사: </td><td><c:out value="${u.publisher}" /></td></tr>
<%--  <tr><td>장르: </td><td><c:out value="${u.genre}" /></td></tr>--%>
  <tr><td>등록일: </td><td><c:out value="${u.publicationDate}" /></td></tr>
  <tr><td>등록번호: </td><td><c:out value="${u.regNumber}" /></td></tr>
  <tr><td>ISBN: </td><td><c:out value="${u.isbn}" /></td></tr>
  <tr><td>남은 책 갯수: </td><td><c:out value="${u.leftBook}" /></td></tr>
</table>
</body>
</html>
