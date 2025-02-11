import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection connect() {
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Logindata;encrypt=true;trustServerCertificate=true";
        String user = "sa";  // Hoặc user khác nếu có
        String password = "123456"; // Nhập mật khẩu SQL Server
        
        try {
            // Load driver (Không cần thiết với JDBC 4.0 trở lên)
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            // Kết nối database
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("✅ Kết nối SQL Server thành công!");
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("❌ Lỗi kết nối database!");
            return null;
        }
    }

    public static void main(String[] args) {
        connect(); // Kiểm tra kết nối
    }
}
