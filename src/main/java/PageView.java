import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PageView", urlPatterns = "/count")
public class PageView extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Boolean needReset = req.getParameter("needReset").equalsIgnoreCase("yes");
        Integer counter = 0;
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        try {
            if (needReset){
                counter = 0;
                out.println("<h1>Your counter was reset!");
                out.println("<h1>Your page has been viewed: " + counter + " time(s)</h1>");
            } else {
                counter++;
                out.println("<h1>Your page has been viewed: " + counter + " time(s)</h1>");
            }

        } catch (NullPointerException npe){
            resp.sendRedirect("/count");
        }


    }
}
