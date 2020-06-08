package com.wucai.servlet;

import com.wucai.util.C3P0Demo;

import java.io.IOException;
import java.sql.*;

@javax.servlet.annotation.WebServlet(urlPatterns = "/MyServlet")
public class MyServlet extends javax.servlet.http.HttpServlet{
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("dopostwww...");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) {
        System.out.println("dogetwww...");
        Connection connection = C3P0Demo.getConnection();
        String sql = "select name,saler,price,image1 from product ;";
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        ResultSet rlt = null;
        try {
            rlt = preparedStatement.executeQuery(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            System.out.println("29");
        }
        String saler = null;
        try {
            rlt.next();
            saler = rlt.getString("image1");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            System.out.println("37");
        }
        System.out.println(saler);
}
}
