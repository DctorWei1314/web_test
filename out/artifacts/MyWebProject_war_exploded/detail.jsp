<%--
  Created by IntelliJ IDEA.
  User: 无索魏
  Date: 2020/5/28
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" import="com.wucai.util.C3P0Demo" %>
<html>
<head>
    <link href="css/product.css" rel="stylesheet">
    <script src="js/product.js" type="text/javascript">
    </script>
    <% Connection connection = C3P0Demo.getConnection();
        String sql = "select * from product where name=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        String name0 =(String)request.getParameter("name");
        System.out.println(name0.length());
        preparedStatement.setString(1,name0);
        ResultSet rlt = preparedStatement.executeQuery();
        rlt.next();
        String name = rlt.getString("name");
        Double price = rlt.getDouble("price");
        int left = rlt.getInt("left");
        String saler = rlt.getString("saler");
        String describe = rlt.getString("describe");
        String image1 = rlt.getString("image1");
        String image2 = rlt.getString("image2");
        String image3 = rlt.getString("image3");
        String image4 = rlt.getString("image4");
        String image5 = rlt.getString("image5");
        String salerPage = rlt.getString("salerPage");
    %>
    <title><%=name%></title>
</head>
<body>
<p><%=name%></p>
<div class="imgBox">
    <img class="img-slide img1" src="<%=image1%>">
    <img class="img-slide img2" src="<%=image2%>">
    <img class="img-slide img3" src="<%=image3%>">
    <img class="img-slide img4" src="<%=image4%>">
    <img class="img-slide img5" src="<%=image5%>">
    <div>
        <img class="icon" src="<%=image1%>" onclick="ChangeImgBYNum(1)"/>
        <img class="icon" src="<%=image2%>" onclick="ChangeImgBYNum(2)"/>
        <img class="icon" src="<%=image3%>" onclick="ChangeImgBYNum(3)"/>
        <img class="icon" src="<%=image4%>" onclick="ChangeImgBYNum(4)"/>
        <img class="icon" src="<%=image5%>" onclick="ChangeImgBYNum(5)"/>
    </div>
</div>
<div class="left">
    <h5>商品:<%=name%></h5>
    <ul class="list-default">
        <li>商品描述:<%=describe%></li>
        <li>库存:<%=left%></li>
        <li>进店:<a href="<%=salerPage%>"><%=saler%></a></li>
        <li><strong class="price"><small>Fee</small> <%=price%></strong></li>
    </ul>
    <button >购买</button>
    <a href="product.html">返回首页</a>
</div>
</body>
</html>