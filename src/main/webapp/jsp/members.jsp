<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jinmin
  Date: 2022/08/02
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%
    MemberRepository memberRepository = MemberRepository.getInstance();
    List<Member> members = memberRepository.findAll();


%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <%
        for (Member member : members){
            out.write(" <tr>");
            out.write("     <td>"+member.getId()+"</td>");
            out.write("     <td>"+member.getUsername()+"</td>");
            out.write("     <td>"+member.getAge()+"</td>");
            out.write(" </tr>");
        }
    %>
    </tbody>
</table>
<a href="index.html">메인 </a>
</body>
</html>
