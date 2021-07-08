import com.mysql.jdbc.Driver;

import java.sql.*;

public class createDB {
    public static void main(String[] args) throws SQLException {


        Config config =  new Config();

        DriverManager.registerDriver(new Driver());

        Connection connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());

        Statement stmt = connection.createStatement();






    }
}
