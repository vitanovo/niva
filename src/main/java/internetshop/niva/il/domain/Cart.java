package internetshop.niva.il.domain;

import org.springframework.stereotype.Component;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by ilugovecs on 2015.11.17..
 */
@Entity
@Table( name  =  "cart" )
public class Cart {

    @Id
    @Column( name = "PRODUCT_ID")
    private long productid;

    @Column( name = "PRODUCT_NAME" )
    private String productname;

    @Column( name = "PRODUCT_BRAND" )
    private String productbrand;

    @Column( name = "PRODUCT_DESCRIPTON" )
    private String productdescription;

    @Column( name = "STATUS" )
    private String productstatus;

    @Column( name = "STTUS" )
    private String productprice;

    public long getProductid() {return productid;}

    public void  setProductid(Long productid) {this.productid = productid;}

    public String getProductname() {return productname;}

    public void setProductname(String productname) {this.productname = productname;}

    public String getProductbrand() {return productbrand;}

    public void setProductbrand(String productbrand) {this.productbrand = productbrand;}

    public String getProductdescription() {return  productdescription;}

    public void setProductdescription(String productdescription) {this.productdescription = productdescription;}

    public String getProductstatus() {return  productstatus;}

    public void setProductstatus(String productstatus) {this.productstatus = productstatus;}

    public String getProductprice() {return productprice;}

    public void setProductprice(String productprice) {this.productprice = productprice;}
}