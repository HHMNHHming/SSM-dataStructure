<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Traditional//EN"
"html://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>main页面</title>
</head>
<body>
        当前用户:${user.uname}<br>
        <a href="${pageContext.request.contextPath }/logout">退出</a>
</body>
</html>