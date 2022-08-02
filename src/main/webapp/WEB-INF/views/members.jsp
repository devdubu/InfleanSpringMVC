<%--
  Created by IntelliJ IDEA.
  User: jinmin
  Date: 2022/08/02
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
        <th>id</th>
        <th>username</th>
        <ht>age</ht>
    </thead>
    <tbody>
    <c:forEach var="item" items="${members}">
        <tr>
            <td>${item.id}</td>
            <td>${item.username}</td>
            <td>${item.age}</td>
        </tr>
    </c:forEach>
<%--    <%--%>
<%--        for (Member member : members){--%>
<%--            out.write(" <tr>");--%>
<%--            out.write("     <td>"+member.getId()+"</td>");--%>
<%--            out.write("     <td>"+member.getUsername()+"</td>");--%>
<%--            out.write("     <td>"+member.getAge()+"</td>");--%>
<%--            out.write(" </tr>");--%>
<%--        }--%>
<%--    %>--%>
    </tbody>
</table>
<a href="index.html">메인 </a>
</body>
</html>
