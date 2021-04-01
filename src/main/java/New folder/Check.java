import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Check extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            response.setContentType("text/html");
            PrintWriter out= response.getWriter();
            String a1= request.getParameter("str");
            StringBuffer sb=new StringBuffer(a1);
            String reverse=sb.reverse().toString();

            if(a1.equalsIgnoreCase(reverse))
            {
                out.println("<!DOCTYPE html>");
                out.println("<html><head>");
                out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
                out.println("<title>Palindrome</title></head>");
                out.println("<body style='color:gray'>");
                out.println("<br><br><br><br><br><br><center><h1>"+a1+" is Palindrome</h1></center>");  // says Hello
                // Echo client's request information
                ;
                out.println("</body>");
                out.println("</html>");
            }
            else
            {
                out.println("<!DOCTYPE html>");
                out.println("<html><head>");
                out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
                out.println("<title>Palindrome</title></head>");
                out.println("<body style='color:gray'>");
                out.println("<br><br><br><br><br><br><center><h1>"+a1+" is not a Palindrome</h1></center>");  // says Hello
                // Echo client's request information
                ;
                out.println("</body>");
                out.println("</html>");
            }
        }
        catch(Exception e)
        {

        }
    }
}