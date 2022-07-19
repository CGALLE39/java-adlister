package beans;
import java.io.Serializable;
import java.sql.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class BeanTest implements Serializable {


    //public List<Quotes> getQuotes() {
//    List<Quotes> returnValue = new ArrayList<>();
//
//}



    public BeanTest() {
    }
public static void main (String [] args) {
Artist a = new Artist();
a.setName("MGK");
    System.out.println(a.getName());


}

}


//    In BeanTest, experiment with storing multiple instances of Quote in an arraylist and iterating over it to print out the content and author name of multiple quotes.
