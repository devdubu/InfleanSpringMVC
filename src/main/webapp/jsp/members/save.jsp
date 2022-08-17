<%@ page import="hello.servlet.domain.member.MemberRepository" %><!-- 다른 클래스를 사용하기 위해서는 import page 를 해야 한다. -->
<%@ page import="hello.servlet.domain.member.Member" %><%--
  Created by IntelliJ IDEA.
  User: jinmin
  Date: 2022/08/02
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);

%>
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    성공
    <ul>
        <li>id = <%= member.getId() %></li>
        <li>username = <%= member.getUsername() %></li>
        <li>age = <%= member.getAge() %></li>
    </ul>

<a href="index.html">메인</a>
</body>
</html>
