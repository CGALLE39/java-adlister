import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ColorPicker", urlPatterns = "/colorpicker.jsp")

public class ColorPicker extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String color= request.getParameter("color");

        response.sendRedirect("/viewcolor.jsp?color=" +color);
//
//        if (color == null) {
//            response.sendRedirect("/pickcolor.jsp");
//        } else if (color.equals(${color})) {
//            response.sendRedirect("/viewcolor.jsp");
//            return;
//        }
        request.setAttribute("color", color);
        request.getRequestDispatcher("/viewcolor.jsp?color=" +color).forward(request, response);
    }



}
