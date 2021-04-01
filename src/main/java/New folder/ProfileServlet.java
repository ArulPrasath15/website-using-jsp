import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

//

        Cookie ck[]=request.getCookies();
        if(ck!=null){
            String name=ck[0].getValue();
            if(!name.equals("")||name!=null){
                request.getRequestDispatcher("link.html").include(request, response);
                out.print("<br><br><br><br><br><br>");
                out.print("<center><h2>Welcome to Profile</h2>");
                out.print("<br><h3>Username : "+name+"</h3></center>");
            }
        }else{
            out.print("<center>Please login first</center>");
            request.getRequestDispatcher("login.html").include(request, response);
        }
        out.close();
    }
}  