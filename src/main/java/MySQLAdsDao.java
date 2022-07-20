import java.util.List;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;


public class MySQLAdsDao implements Ads{
//    private List<Ad> ads;
    private static Connection connection = null;
    public MySQLAdsDao(Config config)  {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
        config.getUrl(),
        config.getUser(),
        config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to database", e);
        }
    }

    @Override
    public List<Ad> all() {
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM  ads");
            List<Ad> ads = new ArrayList<>();
            while (rs.next()) {
                ads.add( new Ad (
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                        ));
            }
            return ads;

        } catch (SQLException e) {
            throw new RuntimeException("Error connection to database", e);
        }
    }

    @Override
    public long insert (Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            String query = "INSERT INTO ads ( user_id, title, description) VALUES(' "
            + ad.getUserId() + "',' "
            + ad.getTitle() + "', '"
            +ad.getDescription() + " ') ";
           int  stmtReturn = stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if (rs.next()) {
                System.out.println("Inserted a new record! New id: " + rs.getLong(1));
            }
            return(long) stmtReturn;
        } catch (SQLException e){
            throw new RuntimeException("Error connecting to this database", e);
        }
    }


    public static void main(String[] args) {


    }



}
