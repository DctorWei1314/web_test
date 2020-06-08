<%@ page import="com.wucai.util.C3P0Demo" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: 无索魏
  Date: 2020/6/7
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>剁手网</title>
    <link href="css/work2.css" rel="stylesheet">
</head>
<body>
<header>
    <div> <span class="logo">欢迎来到剁手网！</span>
        <nav class="navigation">
            <ul>
                <li ><a href="#logon">登入</a></li>
                <li ><a href="#register">注册</a></li>
                <li ><a href="myself.html">商家信息</a></li>
            </ul>
        </nav>
        <div/>
</header>
<div id="div">
    <%
        Connection connection = C3P0Demo.getConnection();
        String sql = "select name,saler,price,image1 from product ;";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        ResultSet rlt = preparedStatement.executeQuery(sql);
        while(rlt.next()){
            String name = rlt.getString("name");
            Double price = rlt.getDouble("price");
            String saler = rlt.getString("saler");
            String image1 = rlt.getString("image1");
            out.print("    <div class=\"container\" title=\"detail\">\n" +
                    "        <div class=\"img\">\n" +
                    "            <a href=\"detail.jsp?name="+name+"\">\n" +
                    "                <img border=\"0\" src=\""+image1+"\" />\n" +
                    "            </a>\n" +
                    "        </div>\n" +
                    "        <div>\n" +
                    "            <strong class=\"price\">$"+price+"</strong>\n" +
                    "            <strong class=\"word\">"+name+"</strong>\n" +
                    "            <strong class=\"saler\">"+saler+"</strong>\n" +
                    "        </div>\n" +
                    "    </div>");
        }
        C3P0Demo.close(rlt);
        C3P0Demo.close(preparedStatement);
        C3P0Demo.close(connection);
    %>
</div>
</body>
</html>
