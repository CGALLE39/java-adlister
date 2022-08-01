import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ColorView", urlPatterns = "/colorview.jsp")

public class ColorView extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//request.setAttribute("color", color);
        request.getRequestDispatcher("/viewcolor.jsp").forward(request, response);

    }

}