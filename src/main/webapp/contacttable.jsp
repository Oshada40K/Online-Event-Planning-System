<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Massage</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var="cus" items="${contact}">
    <tr>
       <td>${cus.name }</td>
       <td>${cus.email }</td>
       <td>${cus.massage }</td>
       <td>
       <form action="contactsingal" method="post">
       <input type="hidden" name="email" value="${cus.email }">
       <button type="submit">Data</button>
       </form>
       </td>
        <td>
       <form action="delete" method="post">
       <input type="hidden" name="email" value="${cus.email }">
       <button type="submit">Delete</button>
       </form>
       </td>  
    </tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>