<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="updatecontact" method="POST">
    
            Enter Name :  <input type="text" name="name" value="${param.name }"><br>
            Enter Email :  <input type="text" name="email" value="${param.email }"><br>
            Enter Massage : <input type="text" name="massage" value="${param.massage }"><br>
          
        <input type = "submit" value="Submit">
    </form>
</body>
</html>