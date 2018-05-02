<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap"%>
<%--
  Created by IntelliJ IDEA.
  User: tinca
  Date: 5/2/2018
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap();
%>
<%
    dictionary.put("hello", "xin chao");
    dictionary.put("Bye", "tam biet");

    String search = request.getParameter("search");
    String result = dictionary.get(search);

    if (result != null) {
        out.print("word: " + search);
        out.print("Result: " + result);
    } else {
        out.print("Not found");
    }
%>
</body>
</html>
