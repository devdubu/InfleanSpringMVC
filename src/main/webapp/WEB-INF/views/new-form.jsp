<%--
  Created by IntelliJ IDEA.
  User: jinmin
  Date: 2022/08/02
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<!-- 상대경로 사용, [현재 url이 속한 계층 경ㄹ + /save] -->
<body>
<form action="save" method="post">
    username : <input type="text" name="username"/>
    age : <input type="text" name="age">
    <button type="submit">전송</button>
</form>
</body>
</html>
