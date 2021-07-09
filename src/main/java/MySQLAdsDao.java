import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class MySQLAdsDao implements Ads {
    Config config =  new Config();

    private Connection connection;

    public MySQLAdsDao() throws SQLException {
        DriverManager.registerDriver(new Driver());
        connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
    }


    @Override
    public List<Ad> all() {
        List<Ad> allAds = new ArrayList<>();

        try {
            Statement stmt = connection.createStatement();
            String selectQuery = "SELECT * FROM ads";
            ResultSet rs = stmt.executeQuery(selectQuery);
            while (rs.next()) {
                allAds.add(new Ad(
                       rs.getInt("user_id"),
                       rs.getString("title"),
                       rs.getString("description")
                ));
            }

        } catch (SQLException se) {
            se.printStackTrace();
        }
        return allAds;
    }

    @Override
    public Long insert(Ad ad) {

        try {
            Statement stmt = connection.createStatement();
            String insertQuery = String.format("insert into ads (user_id, title, description) values (%d, '%s', '%s')",
            ad.getUserId(), ad.getTitle(), ad.getDescription());
            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return null;
    }
}
