import java.util.ArrayList;
import java.util.List;

import com.codeup.adlister.dao.Config;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class MySQLAdsDao implements Ads {
    Config config =  new Config();

    private Connection connection;

    public MySQLAdsDao() throws SQLException {
        try{
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
        } catch (SQLException error) {
            throw new RuntimeException("Error connecting to the database");
        }
    }

//  REFACTORED TO USE METHODS AND SEPARATE OUT THE LOGIC

    private Ad extractAd (ResultSet rs) throws SQLException{
        return new Ad (
                rs.getInt("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private String createInsertQuery(Ad ad){
        String insertQuery = String.format("insert into ads (user_id, title, description) values (%d, '%s', '%s')",
                ad.getUserId(), ad.getTitle(), ad.getDescription());
        return insertQuery;
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
///////////////////////////////////////////////////////////////////////////


    @Override
    public List<Ad> all() {

        try {
            Statement stmt = connection.createStatement();
            String selectQuery = "SELECT * FROM ads";
            ResultSet rs = stmt.executeQuery(selectQuery);
            return createAdsFromResults(rs);

        } catch (SQLException se) {
            se.printStackTrace();
        }
        return null;
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return null;
    }
}
