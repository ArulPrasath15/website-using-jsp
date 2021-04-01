import java.io.*;
import java.lang.reflect.Array;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.io.PrintWriter;

public class Display extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            response.setContentType("text/html");
            PrintWriter out= response.getWriter();
            String driverName = "com.mysql.cj.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "ajpmodel_reg";
            String userId = "root";
            String password = "";

            String fn= request.getParameter("first_name");
            String ln= request.getParameter("last_name");
            String company= request.getParameter("company");
            String email= request.getParameter("email");
            String pcode= request.getParameter("area_code");
            String phone= request.getParameter("phone");
            String country= request.getParameter("country");
            String sex= request.getParameter("sex");
            String lan1 = request.getParameter("lan1");
            String lan2 = request.getParameter("lan2");
            String lan3 = request.getParameter("lan3");
            String lan="";
            String comment= request.getParameter("cmt");

            if(lan1!=null)
            {
                lan+=lan1+", ";
            }
            if(lan2!=null)
            {
                lan+=lan2+", ";
            }
            if(lan3!=null)
            {
                lan+=lan3+", ";
            }


            request.getRequestDispatcher("tablehead.html").include(request, response);
            request.getRequestDispatcher("tablefoot.html").include(request, response);



        }
        catch(Exception e)
        {

        }
    }
}