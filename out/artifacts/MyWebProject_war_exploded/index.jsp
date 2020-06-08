<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %><%--
  Created by IntelliJ IDEA.
  User: 无索魏
  Date: 2020/5/8
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Date"%>
<html>
  <head>
      <!-- -->
    <title>myTitle</title>
  </head>
  <body>
<%--  Hello ideal ....--%>
<%--  <a href="MyServlet">MyServlet</a>--%>
<%--  <br/>--%>
  <%
      Context ctx = new InitialContext();
      String temp = (String)ctx.lookup("java:comp/env/testname");
      out.print(temp);
  %>
<%--  <%!--%>
<%--      public String book;--%>
<%--      public void init(){--%>
<%--          Date date = new Date();--%>
<%--          book="叫我打不"+date;--%>
<%--  }--%>
<%--  %>--%>
<%--  <%--%>
<%--      String name ="wwc";--%>
<%--      out.print("hhelo..."+name);--%>
<%--      //init();--%>
<%--  %>--%>
<%--  <%=--%>
<%--   //"egerg"+book--%>
<%--  "d"--%>
<%--  %>--%>
<form action="show.jsp" method="post">
    name:<input type="text" name="name"/><br/>
    password:<input type="password" name="passwd"/><br/>
    age:<input type="text" name="age"/><br/>
    hobby:<input type="checkbox" name="hobbies" value="a"/>
    <input type="checkbox" name="hobbies"value="b"/>
    <input type="checkbox" name="hobbies" value="c"/><br/>
    <input type="submit" value="注册"/>
</form>
<%--  <%--%>
<%--      out.print();--%>
<%--  %>--%>
<%--<%--%>
<%--    Cookie[] array=request.getCookies();--%>
<%--    for(Cookie x:array){--%>
<%--        if(x.getName().equals("name"))--%>
<%--            out.print(x.getValue());--%>
<%--    }--%>

<%--%>--%>
  <%=
  application.getContextPath()
  +"<br/>"+
          application.getRealPath("/ROOT")
  %>
  </body>
</html>