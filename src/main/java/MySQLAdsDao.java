import java.util.ArrayList;
import java.util.List;

import java.sql.*;
import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {

    private Connection connection = null;

    public MySQLAdsDao (Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad>  all() {
        //
        List<Ad> ads = new ArrayList<>();
        Config config = new Config();

        try {
            Statement stmt = ((Connection) connection).createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");

            while (rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")));
            }
            return ads;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // previous lesson derived from quotes
    private List<Ad> ads;

    // BAD CODE FROM DANIEL
//    @Override
//    public Ad findOne(long id) {
//        Ad ad = null;
//        try {
//            Statement stmt = connection.createStatement();
//            String query = "SELECT * FROM ads where id =" + id;
//            ResultSet rs = stmt.executeQuery(query);
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return ad;
//    }
    public Long insert(Ad ad) {
        // make sure we have ads
        if (ads == null) {
            ads = generateAds();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the database would handle this
        ad.setId((long) ads.size());
        ads.add(ad);
        return ad.getId();
    }

    private List<Ad> generateAds() {
        List<Ad> ads = new ArrayList<>();
        ads.add(new Ad(
                1,
                1,
                "playstation for sale",
                "This is a slightly used playstation"
        ));
        ads.add(new Ad(
                2,
                1,
                "Super Nintendo",
                "Get your game on with this old-school classic!"
        ));
        ads.add(new Ad(
                3,
                2,
                "Junior Java Developer Position",
                "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
        ));
        ads.add(new Ad(
                4,
                2,
                "JavaScript Developer needed",
                "Must have strong Java skills"
        ));
        return ads;
    }
}
