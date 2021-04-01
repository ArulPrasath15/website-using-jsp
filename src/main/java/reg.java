import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.*;
import javax.swing.JOptionPane;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class reg extends HttpServlet                                                                                     
{
    public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
		  
		PrintWriter out=res.getWriter();
        String a=req.getParameter("lname");
		String b=req.getParameter("fname");
		String c=req.getParameter("cname");
		String d=req.getParameter("email");
		String e=req.getParameter("p1");
		String f=req.getParameter("country");
		String g=req.getParameter("gender");
		String h1[]=req.getParameterValues("L1");
		String h="";
		for(int i=0;i<h1.length;i++)
			h+=h1[i];
		String i=req.getParameter("com");
		String j=req.getParameter("tc");
		res.setContentType("text/html");
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException ex)
		{}
		try
		{   
		  String s1,s2,s3,s4,s5,s7,s8,s9,s10;
		  
		  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/model","root","");  
		  PreparedStatement stmt=con.prepareStatement("Insert into student values(?,?,?,?,?,?,?,?,?,?)" );		  
		  stmt.setString(1,b);
		  stmt.setString(2,a);
		  stmt.setString(3,c);
		  stmt.setString(4,d);	
		  stmt.setString(5,e);
		  stmt.setString(6,f);
		  stmt.setString(7,g);
		  stmt.setString(8,h);
		  stmt.setString(9,i);
		  stmt.setString(10,j); 
		  	  
		  stmt.executeUpdate();
		  stmt.close();
		  con.close();	
		  out.println("<html>");
		  out.println("<body>");
          out.println("<h1>Your Registration has been submitted</h1>");
          out.println("</html>");
		  out.println("</body>");
		  
		}catch(SQLException r){out.println(r);}	
		


        }
   
    }