package internetshop.niva.il.database.jdbc;
import internetshop.niva.il.database.CustomerDAO;
import internetshop.niva.il.database.DBException;
import internetshop.niva.il.domain.Customer;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Igor on 2015.10.19..
 */
@Component("CustomerDAOImpl_JDBC")
public class CustomerDAOImpl extends DAOImplement implements CustomerDAO {

    public void create(Customer user) throws DBException{
        if (user == null) {
            return;
        }

        Connection connection = null;

        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("insert into customers values (default, ?, ?, ?, ?)", PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getPhoneNr());
            preparedStatement.setString(4, user.getEmail());

            preparedStatement.executeUpdate();
            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()){
                user.setUserId(rs.getInt(1));
            }
        } catch (Throwable e) {
            System.out.println("Exception while execute CustomerDAOImpl.create()");
            e.printStackTrace();
            throw new DBException(e);
        } finally {
            closeConnection(connection);
        }

    }


    public Customer getById(long id) throws DBException {
        Connection connection = null;

        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection
                    .prepareStatement("select * from customers where CustomerID = ?");
            preparedStatement.setLong(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            Customer user = null;
            if (resultSet.next()) {
                user = new Customer();
                user.setUserId(resultSet.getInt("CustomerID"));
                user.setFirstName(resultSet.getString("FirstName"));
                user.setLastName(resultSet.getString("LastName"));
                user.setPhoneNr(resultSet.getString("PhoneNr"));
                user.setEmail(resultSet.getString("Email"));
            }
            return user;
        } catch (Throwable e) {
            System.out.println("Exception while execute UserDAOImpl.getById()");
            e.printStackTrace();
            throw new DBException(e);
        } finally {
            closeConnection(connection);
        }
    }

    public List<Customer> getAll() throws DBException {
        List<Customer> users = new ArrayList<Customer>();
        Connection connection = null;
        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from customers");

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Customer user = new Customer();
                user.setUserId((int) resultSet.getLong("CustomerID"));
                user.setFirstName(resultSet.getString("FirstName"));
                user.setLastName(resultSet.getString("LastName"));
                user.setPhoneNr(resultSet.getString("PhoneNr"));
                user.setEmail(resultSet.getString("Email"));
                users.add(user);
            }
        } catch (Throwable e) {
            System.out.println("Exception while getting customer list CustomerDAOImpl.getList()");
            e.printStackTrace();
            throw new DBException(e);
        } finally {
            closeConnection(connection);
        }
        return users;
    }



    public void delete(Long id) throws DBException {
        Connection connection = null;
        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("delete from customers");
            //preparedStatement.setLong(1, id);
            preparedStatement.executeUpdate();
        } catch (Throwable e) {
            System.out.println("Exception while execute UserDAOImpl.delete()");
            e.printStackTrace();
            throw new DBException(e);
        } finally {
            closeConnection(connection);
        }
    }


    public void update(Customer user) throws DBException {
        if (user == null) {
            return;
        }

        Connection connection = null;
        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("update customers set FirstName = ?, LastName = ? , PhoneNr = ?, Email = ?" + "where CustomerID = ?");
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getLastName());
            preparedStatement.setString(3, user.getPhoneNr());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setLong(3, user.getUserId());
            preparedStatement.executeUpdate();
        } catch (Throwable e) {
            System.out.println("Exception while execute UserDAOImpl.update()");
            e.printStackTrace();
            throw new DBException(e);
        } finally {
            closeConnection(connection);
        }
    }

}
