<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional/EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户</title>
</head>
<body>
       用户信息<br>
       <c:forEach items="${userList}" var="user">
       ${user}
       ${user.uid} &nbsp;&nbsp;&nbsp;&nbsp;
       ${user.uname} &nbsp;&nbsp;&nbsp;&nbsp;
       ${user.usex} <br>
       </c:forEach>
</body>
</html>