import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
import java.sql.*;  
    
public class display1 extends HttpServlet
{    
     public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
      {  
         PrintWriter out = res.getWriter();  
         res.setContentType("text/html");  
         out.println("<html><body>");  
         try 
         {  
             Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/model", "root", "");    
             Statement stmt = con.createStatement();  
             ResultSet rs = stmt.executeQuery("select * from student");  
             out.println("<table border=1>");  
             out.println("<tr><th>FisrtName</th><th>LastName</th><th>Company</th><th>Email</th><th>Phone</th><th>Country</th><th>Gender</th><th>Language</th><th>comment</th><th>Agree</th><tr>");  
             while (rs.next()) 
             {  
                 String n1 = rs.getString(1);  
                 String n2 = rs.getString(2);
                String n3 = rs.getString(3);
                String n4 = rs.getString(4);
                String n5 = rs.getString(5);
                String n6 = rs.getString(6);
                String n7 = rs.getString(7);
                String n8 = rs.getString(8);
                String n9 = rs.getString(9);
                 String n10 = rs.getString(10);  
                 out.println("<tr>");out.println("<td>");out.println(n1);out.println("</td><td>");out.println(n2);out.println("</td>");out.println("<td>");out.println(n3) ;out.println( "</td><td>"); out.println(n4);out.println( "</td><td>");out.println(n5);out.println("</td><td>");out.println(n6);out.println("</td><td>");out.println(n7);out.println("</td><td>");out.println(n8);out.println("</td><td>");out.println(n9);out.println("</td><td>");out.println(n10);out.println("</td></tr>"); 
  
             }  
             out.println("</table>");  
             out.println("</html></body>");  
             con.close();  
            }  
             catch (Exception e) 
            {  
             out.println("error");  
         }  
     }  
 }  