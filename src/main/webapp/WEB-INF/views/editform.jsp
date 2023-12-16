<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>책 정보 수정</title>
</head>
<body>
<%--@elvariable id="u" type=""--%>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table class="table table-bordered">
    <tr><td>책 제목</td><td><form:input path="bookTitle" /></td></tr>
    <tr><td>책 저자</td><td><form:input path="bookWriter" /></td></tr>
    <tr><td>출판사</td><td><form:input path="publisher" /></td></tr>
    <tr><td>등록번호</td><td><form:input path="regNumber" /></td></tr>
    <tr><td>ISBN</td><td><form:input path="isbn" /></td></tr>
    <tr><td>남은 책 갯수</td><td><form:input path="leftBook" /></td></tr>
    <input type="hidden" name="publicationDate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
  </table>
  <button type="submit">책 정보 수정하기</button>
  <button type="button" onclick="history.back()">수정 취소하기</button>
</form:form>
</body>
</html>