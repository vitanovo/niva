package internetshop.niva.il.database.hibernate;

import internetshop.niva.il.database.DBException;
import internetshop.niva.il.database.TVDAO;
import internetshop.niva.il.database.jdbc.DAOImplement;
import internetshop.niva.il.domain.TV;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ilugovecs on 2015.11.05..
 */
@Component("TVDAOImpl_Hibernate")
public class TVDAOImpl extends DAOImplement implements TVDAO {


    @Autowired
    private SessionFactory sessionFactory;

    public void create(TV tv) throws DBException {
        Session session = sessionFactory.getCurrentSession();
        session.persist(tv);
    }

    public TV getById(Long id) throws DBException {
       Session session = sessionFactory.getCurrentSession();
        return (TV) session.get(TV.class, id);
    }

    public void delete(Long id) throws DBException {
        Session session = sessionFactory.getCurrentSession();
        TV tv = (TV) session.get(TV.class, id);
        if(tv != null) {
            session.delete(tv);
        }
    }

    public void update(TV tv) throws DBException {
        Session session = sessionFactory.getCurrentSession();
        session.update(tv);
    }

    public List<TV> getAll() throws DBException {
        List<TV> tv = new ArrayList<TV>();
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TV.class);
        return  tv = (List<TV>) criteria.list();

    }
    @Transactional
    public List<TV> get4KUHD(int id) throws DBException {
       List<TV> tv;
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TV.class);
        criteria.add(Restrictions.eq("tvscreentypeid", id));
        return  criteria.list();

    }

    public TV getByScreenSize(String id) throws DBException {
        Session session = sessionFactory.getCurrentSession();
        return (TV) session.get(TV.class, id);
    }


    public TV getById(String id) throws DBException {
        TV tv;
        Long  tvid=Long.valueOf(id);
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(TV.class);
        criteria.add(Restrictions.eq("tvid", tvid));
        return tv = (TV) criteria.uniqueResult();
    }



    public byte[] getImage(int id) throws DBException, SQLException, IOException {

        Connection connection = null;
        try {
            connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT IMAGE FROM tv_hometheater WHERE id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            TV tv = null;
            byte[] imgData = new byte[0];
            if (resultSet.next()) {
                tv = new TV();
                Blob img;
                imgData = null;
                img = resultSet.getBlob(1);
                imgData = img.getBytes(1, (int) img.length());
            }
            return imgData;
        } catch (SQLException e) {
            System.out.println("Exception occured while execute TVDAOImpl.getImage()");
            e.printStackTrace();
            throw  new DBException(e);
        }finally {
            if ( connection != null ) {
                //closeConnection(connection);
                try {
                    connection.close();
                }catch (SQLException ignore) {}
            }
        }
    }

}
