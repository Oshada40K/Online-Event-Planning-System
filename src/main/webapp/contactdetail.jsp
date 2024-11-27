<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>CONTACT DETAILS</h1><br><br>
    <c:set var = "cus" value="${contact}"/>
    <fieldset disabled>
            Enter Name :  <input type="text" name="name" value="${cus.name }"><br>
            Enter Email :  <input type="text" name="email" value="${cus.email }"><br>
            Enter massage :  <input type="text" name="massage" value="${cus.massage }"> <br>
            
            
    
    </fieldset>
    <form action="contactupdate.jsp" method="post">
    <input type="hidden" name="name" value="${cus.name }">
    <input type="hidden" name="email" value="${cus.email }">
    <input type="hidden" name="massage" value="${cus.massage }">
    
    <input type="submit" value="Update">
    </form>
<a href="login.jsp"><button class="button button5">Back</button></a>

</body>
</html>