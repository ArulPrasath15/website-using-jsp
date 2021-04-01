import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String names=request.getParameter("uname");
        String pswrd=request.getParameter("pwd");
        String col=request.getParameter("uclg");
        String dob=request.getParameter("udob");




        try{

            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/bio";
            String username ="root";
            String password =" ";


            Class.forName(driver);
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement ps=con.prepareStatement("insert into biodata(uname,pwd,uclg,udob) values(?,?,?,?)");

            ps.setString(1,names);
            ps.setString(2,pswrd);
            ps.setString(3,col);
            ps.setString(4,dob);

            int i=ps.executeUpdate();
            if(i>0)
                out.print("-------------------- YOUR DETAILS HAVE BEEN SUCCESSFULLY STORED------------------------");


        }
        catch (Exception e2)
        {
            System.out.println(e2);
        }

        out.close();


    }

}