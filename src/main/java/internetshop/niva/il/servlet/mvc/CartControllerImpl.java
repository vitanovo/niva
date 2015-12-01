package internetshop.niva.il.servlet.mvc;

import internetshop.niva.il.database.DBException;
import internetshop.niva.il.database.jdbc.CartDAOImpl;
import internetshop.niva.il.domain.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by ilugovecs on 2015.11.17..
 */
@Component
public class CartControllerImpl implements CartController {

    @Autowired
    CartDAOImpl cartdaoimpl;

    @Autowired
    Cart cart;

    private Long productid;
    private String productname;
    private String productbrand;
    private String productdescription;
    private String productstatus;
    private String productprice;

    public String getcart(HttpServletRequest req, HttpServletResponse resp) throws DBException, SQLException {

        Long getproductid = cartdaoimpl.getById(1L).getProductid();
        String getproductname = cartdaoimpl.getById(1L).getProductname();
        String getproductbrand = cartdaoimpl.getById(1L).getProductbrand();
        String getproductdescription = cartdaoimpl.getById(1L).getProductdescription();
        String getproductstatus = cartdaoimpl.getById(1L).getProductstatus();
        String getproductprice = cartdaoimpl.getById(1L).getProductprice();

        req.setAttribute("prodID", getproductid);
        req.setAttribute("prodName", getproductname);
        req.setAttribute("prodBrand", getproductbrand);
        req.setAttribute("prodDescripton", getproductdescription);
        req.setAttribute("status", getproductstatus);
        req.setAttribute("prodPrice", getproductprice);

        return  null;
    }

    public MVCModel execute(HttpServletRequest request, HttpServletResponse response)
            throws DBException, SQLException, ServletException, Exception
    {return  new MVCModel(getcart(request, response), "/helloWorld.jsp");}
}