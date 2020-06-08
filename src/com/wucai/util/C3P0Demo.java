package com.wucai.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.*;

public class C3P0Demo {
    private static ComboPooledDataSource c3p0 = new ComboPooledDataSource("wucai");;
    public static Connection getConnection(){
        try {
            return c3p0.getConnection();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    C3P0Demo(){
    }
    public static void main(String[] args)throws Exception{
        Connection connection = C3P0Demo.getConnection();
        String sql = "select * from product where name=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,"鞋子");
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
        System.out.println(image1);
    }
    public static void close(Connection conn) throws SQLException {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
                throw e;
            }
        }
    }
    public static void close(PreparedStatement pstate) throws SQLException {
        if(pstate!=null){
            pstate.close();
        }
    }
    public static void close(ResultSet rs) throws SQLException {
        if(rs!=null){
            rs.close();
        }
    }
}
