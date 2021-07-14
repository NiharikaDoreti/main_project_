package ConnectionBean;
import java.sql.*;

public class ConnectionBean
{
private Connection connection;
private Statement statement;
private static final String driver="com.mysql.jdbc.Driver";
private static final String  dbURL="jdbc:mysql://localhost:8080/CMS";
private static final String login="root";
private static final String password="root";

public ConnectionBean()
{
   try
    {


	Class.forName(driver);
	System.out.println("ok");
	connection=DriverManager.getConnection(dbURL,login,password);
	System.out.println("ok");
	statement=connection.createStatement();


    }
    catch (ClassNotFoundException e)
    {

	System.out.println("ConnectionBean: driver unavailable");

	connection = null;
    }
    catch (SQLException e)
    {
	System.out.println("ConnectionBean: driver not loaded");
	connection = null;
    }

}


public Connection getConnection()
{
	return connection;
}



public void commit() throws SQLException
{

	connection.commit();
}
public void rollback() throws SQLException
{
	connection.rollback();
}


public void setAutoCommit(boolean autoCommit) throws SQLException
{
	connection.setAutoCommit(autoCommit );
}




public ResultSet executeQuery(String sql) throws SQLException
{
	return statement.executeQuery(sql);
}


public int executeUpdate(String sql) throws SQLException
{
	return statement.executeUpdate(sql);
}
public boolean execute(String sql) throws SQLException
{
         return statement.execute(sql);
}
protected void finalize()
{
try
{
	connection.close();
}
catch (SQLException e)
{
}
}
}