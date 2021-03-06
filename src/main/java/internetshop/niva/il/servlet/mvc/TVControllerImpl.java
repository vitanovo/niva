package internetshop.niva.il.servlet.mvc;

import internetshop.niva.il.database.DBException;
import internetshop.niva.il.database.TVDAO;
import internetshop.niva.il.database.jdbc.TVDAOImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by ilugovecs on 2015.11.05..
 */
@Component
public class TVControllerImpl implements TVController  {

    @Autowired
    @Qualifier( value = "TVDAOImpl_Hibernate")
    private TVDAO tvdao;

    public String getTVparam(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession session = req.getSession();

        if (session.getAttribute("btnCart") != null) {
            System.out.print("Cart Button parameters:" + session.getAttribute("btnCart"));
        }
        return String.valueOf(session.getAttribute("btnCart"));
    }

    @Transactional
    public MVCModel execute(HttpServletRequest request, HttpServletResponse response)
            throws DBException, SQLException, ServletException, IOException {

        return new MVCModel("", "/TV.jsp");
    }

}
